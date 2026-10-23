[CmdletBinding(SupportsShouldProcess)]
param(
    # Raiz del proyecto: copia las skills a .agents\skills (Codex, Gemini CLI),
    # .claude\skills (Claude Code) y .gemini\skills (Gemini CLI).
    # Sin -Proyecto, instala en el perfil de usuario (~\.claude\skills y ~\.agents\skills).
    [string]$Proyecto,
    # Reemplaza los destinos por defecto.
    [string[]]$Destinos,
    # Sobrescribe skills ya instaladas que difieren del origen.
    [switch]$Force
)

$origen = $PSScriptRoot

if (-not $Destinos) {
    if ($Proyecto) {
        if (-not (Test-Path $Proyecto -PathType Container)) { throw "No existe el proyecto: $Proyecto" }
        $Destinos = '.agents', '.claude', '.gemini' | ForEach-Object { Join-Path (Resolve-Path $Proyecto) "$_\skills" }
    } else {
        $Destinos = "$HOME\.claude\skills", "$HOME\.agents\skills"
    }
}

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

        if ($PSCmdlet.ShouldProcess($ruta, "Copiar desde el origen ($estado)")) {
            New-Item -ItemType Directory -Force $destino | Out-Null
            if ($estado -eq "difiere") { Remove-Item $ruta -Recurse -Force }
            Copy-Item $skill.FullName $ruta -Recurse
            Write-Host "copiada  $ruta"
        }
    }
}
