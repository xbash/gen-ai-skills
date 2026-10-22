[CmdletBinding(SupportsShouldProcess)]
param(
    # Directorios de destino; cada agente lee sus skills de uno de ellos.
    [string[]]$Destinos = @("$HOME\.claude\skills", "$HOME\.codex\skills"),
    # Sobrescribe skills instaladas que difieren del repo.
    [switch]$Force
)

$origen = $PSScriptRoot

function Get-Huellas($dir) {
    Get-ChildItem $dir -Recurse -File | Sort-Object FullName | ForEach-Object {
        $_.FullName.Substring($dir.Length) + ":" + (Get-FileHash $_.FullName).Hash
    }
}

foreach ($skill in Get-ChildItem $origen -Directory | Where-Object { Test-Path "$($_.FullName)\SKILL.md" }) {
    foreach ($destino in $Destinos) {
        $ruta = Join-Path $destino $skill.Name
        $estado = if (-not (Test-Path $ruta)) { "nueva" }
                  elseif (-not (Compare-Object (Get-Huellas $skill.FullName) (Get-Huellas $ruta))) { "igual" }
                  else { "difiere" }

        if ($estado -eq "igual") { Write-Host "igual    $ruta"; continue }
        if ($estado -eq "difiere" -and -not $Force) { Write-Warning "difiere  $ruta (omitida; usa -Force para sobrescribir)"; continue }

        if ($PSCmdlet.ShouldProcess($ruta, "Copiar desde el repo ($estado)")) {
            New-Item -ItemType Directory -Force $destino | Out-Null
            if ($estado -eq "difiere") { Remove-Item $ruta -Recurse -Force }
            Copy-Item $skill.FullName $ruta -Recurse
            Write-Host "copiada  $ruta"
        }
    }
}
