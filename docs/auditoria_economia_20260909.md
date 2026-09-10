# Audita skills de economía

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/d5808189-3124-4853-a556-6058decb2f30/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer la solicitud pegada y revisar el contexto mínimo del repositorio para identificar exactamente el alcance antes de actuar. Mantendré separadas la evidencia verificada, los supuestos y cualquier cambio que eventualmente corresponda.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> - Ran `rg -n -i "(arquitect|agente|llm|investig|skill|refactor|continuidad)" 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/d5808189-3124-4853-a556-6058decb2f30/pasted-text.txt`
>
> </details>
>
> - Ran `Get-ChildItem -Force | Select-Object Mode,Length,LastWriteTime,Name; git status --short --branch`
>
> </details>
>
> La solicitud confirma que se trata de una auditoría estática y diagnóstica del dominio `skills/economia-finanzas`, sin modificar archivos. Detecté además que la carpeta de trabajo externa no es el repositorio Git; usaré el repositorio efectivo `C:\rutinas-local\gen-ai-skills\gen-ai-skills` y conservaré cualquier cambio existente.
>
> <details><summary>Ran 6 commands</summary>
>
> - Ran `git -c core.excludesFile=.git/info/exclude status --short --branch; Get-ChildItem -Force | Select-Object Mode,Length,Name`
> - Ran `rg --files -g 'AGENTS.md' -g 'GEMINI.md' -g 'README*' -g 'CONTEXTO*' -g 'DECISIONES*' -g 'PENDIENTES*' -g 'BITACORA*' -g '.editorconfig' -g '.gitattributes' | Sort-Object`
> - Ran `if (Test-Path 'skills/economia-finanzas') { rg --files 'skills/economia-finanzas' | Sort-Object } else { Write-Output 'MISSING: skills/economia-finanzas' }`
> - Ran ``$files = Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File | Sort-Object Name; $files | ForEach-Object { $text = Get-Content -Raw -Encoding utf8 -LiteralPath $_.FullName; [PSCustomObject]@{Name=$_.Name; Lines=($text -split "`n").Count; Chars=$text.Length; Words=([regex]::Matches($text,'\S+')).Count; SHA256=(Get-FileHash -Algorithm SHA256 -LiteralPath $_.FullName).Hash} } | Format-Table -AutoSize``
> - Ran `Get-Content -Raw -Encoding utf8 -LiteralPath 'README.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/README.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/instrucciones_base_eco.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/contabilidad_costos_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/finanzas_corporativas_proyectos_reglas.md'`
> - Ran `Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/macro_micro_entorno_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/econometria_datos_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/riesgos_regulacion_chile_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/estrategia_marketing_negocios_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/personas_organizacion_reglas.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'skills/economia-finanzas/checklist_modelos_decision_eco.md'`
>
> </details>
>
> El dominio contiene actualmente 10 archivos: README, una base, siete módulos temáticos y un checklist. El checkout está intencionalmente muy sucio por una refactorización amplia en curso —incluye eliminaciones históricas y archivos nuevos—, por lo que basaré el diagnóstico en el estado visible actual y señalaré esa condición como riesgo de interpretación, sin restaurar ni alterar nada.
>
> <details><summary>Ran 9 commands</summary>
>
> - Ran `rg -n -i -C 3 "economia-finanzas|economia|finanzas|refactor|carga progresiva|arquitect|activaci|checklist" docs README.md CONTRIBUTING.md CHANGELOG.md`
> - Ran `Get-Content -Raw -Encoding utf8 -LiteralPath 'docs/CONTEXTO_PROYECTO.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'docs/DECISIONES_TECNICAS.md'; Get-Content -Raw -Encoding utf8 -LiteralPath 'docs/PENDIENTES.md'`
> - Ran `git diff --stat -- 'skills/economia-finanzas'; git diff -- 'skills/economia-finanzas/README.md' 'skills/economia-finanzas/instrucciones_base_eco.md' 'skills/economia-finanzas/checklist_modelos_decision_eco.md'`
> - Ran `git diff --numstat -- 'skills/economia-finanzas'; git diff --name-status -- 'skills/economia-finanzas'; git ls-files 'skills/economia-finanzas' | Sort-Object`
> - Ran `rg -n -i "(fuente|actual|vigente|no invent|supuesto|sensibilidad|escenario|riesgo|valid|causal|nominal|real|caja|devengo|asesor|Chile|USAR CUANDO|NO USAR|prior|base|checklist|depend)" skills/economia-finanzas`
> - Ran `$files = Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File | Sort-Object Name; foreach ($f in $files) { Write-Output ('===== ' + $f.Name + ' ====='); $i=0; Get-Content -Encoding utf8 -LiteralPath $f.FullName | ForEach-Object { $i++; '{0,3}: {1}' -f $i,$_ } }`
> - Ran `$i=0; Get-Content -Encoding utf8 -LiteralPath 'skills/economia-finanzas/README.md' | ForEach-Object { $i++; '{0,3}: {1}' -f $i,$_ }; Write-Output '===== riesgos ====='; $i=0; Get-Content -Encoding utf8 -LiteralPath 'skills/economia-finanzas/riesgos_regulacion_chile_reglas.md' | ForEach-Object { $i++; '{0,3}: {1}' -f $i,$_ }`
> - Ran `rg --files -g 'AGENTS.md' -g 'SKILL.md' -g 'GEMINI.md' -g '*spec*' -g '*architecture*' -g '*best-practice*' | Sort-Object; Get-Content -Raw -Encoding utf8 -LiteralPath '.editorconfig'; Get-Content -Raw -Encoding utf8 -LiteralPath '.gitattributes'; Get-Content -Raw -Encoding utf8 -LiteralPath 'CONTRIBUTING.md'`
> - Ran `$files = Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File | Sort-Object Name; foreach ($f in $files) { $b=[IO.File]::ReadAllBytes($f.FullName); $crlf=0; $lf=0; for($j=0;$j -lt $b.Length;$j++){ if($b[$j] -eq 10){$lf++; if($j -gt 0 -and $b[$j-1] -eq 13){$crlf++}} }; $trailing=Select-String -Path $f.FullName -Pattern '[ \t]+$' -Encoding utf8; [PSCustomObject]@{Name=$f.Name; CRLF=$crlf; LF=$lf; FinalNewline=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); TrailingWhitespace=$trailing.Count} } | Format-Table -AutoSize; Write-Output '===== scoped diff check ====='; git diff --check -- 'skills/economia-finanzas'`
>
> </details>
>
> La lectura completa muestra una arquitectura formalmente modular, pero todavía no un contrato de activación: ningún módulo declara explícitamente `USAR CUANDO`/`NO USAR CUANDO`, ni el README define selección, prioridad o carga condicional. Antes de valorar si el contenido se perdió en la refactorización, compararé cada archivo actual con su antecedente versionado y cerraré las comprobaciones estáticas de formato y referencias.
>
> <details><summary>Ran 10 commands</summary>
>
> - Ran ``$map = [ordered]@{ '00_instrucciones_base_eco.md'='instrucciones_base_eco.md'; '01_contabilidad_costos_reglas.md'='contabilidad_costos_reglas.md'; '02_finanzas_corporativas_proyectos_reglas.md'='finanzas_corporativas_proyectos_reglas.md'; '03_macro_micro_entorno_reglas.md'='macro_micro_entorno_reglas.md'; '04_econometria_datos_reglas.md'='econometria_datos_reglas.md'; '05_riesgos_regulacion_chile_reglas.md'='riesgos_regulacion_chile_reglas.md'; '06_estrategia_marketing_negocios_reglas.md'='estrategia_marketing_negocios_reglas.md'; '07_personas_organizacion_reglas.md'='personas_organizacion_reglas.md'; '08_checklist_modelos_decision_eco.md'='checklist_modelos_decision_eco.md' }; foreach($old in $map.Keys){ $new=$map[$old]; $oldText = (git show ('HEAD:skills/economia-finanzas/' + $old)) -join "`n"; $newText = Get-Content -Raw -Encoding utf8 -LiteralPath ('skills/economia-finanzas/' + $new); $oldWords=([regex]::Matches($oldText,'\S+')).Count; $newWords=([regex]::Matches($newText,'\S+')).Count; $same=($oldText.TrimEnd("`r","`n") -eq $newText.TrimEnd("`r","`n")); [PSCustomObject]@{Old=$old; New=$new; SameContent=$same; OldWords=$oldWords; NewWords=$newWords; Delta=($newWords-$oldWords)} } | Format-Table -AutoSize``
> - Ran `$files = Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File | Sort-Object Name; foreach ($f in $files) { $b=[IO.File]::ReadAllBytes($f.FullName); $crlf=0; $lf=0; for($j=0;$j -lt $b.Length;$j++){ if($b[$j] -eq 10){$lf++; if($j -gt 0 -and $b[$j-1] -eq 13){$crlf++}} }; $trailing=(Get-Content -Encoding utf8 -LiteralPath $f.FullName | Where-Object { $_ -match '[ \t]+$' }).Count; [PSCustomObject]@{Name=$f.Name; CRLF=$crlf; LF=$lf; FinalNewline=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); TrailingWhitespace=$trailing} } | Format-Table -AutoSize`
> - Ran `git status --short -- 'skills/economia-finanzas'; $refs = rg -o --no-filename '(?<=\]\()[^)#]+' 'skills/economia-finanzas' 2>$null; if ($refs) { $refs | Sort-Object -Unique } else { 'No Markdown link targets found in domain files.' }; $activ = rg -n 'USAR CUANDO|NO USAR CUANDO|Cu[aá]ndo usar|Cu[aá]ndo no usar|prioridad|carga condicional|dependenc' 'skills/economia-finanzas' 2>$null; if ($activ) {$activ} else {'No activation/routing/dependency contract terms found.'}`
> - Ran ``$rows = @(); $map = [ordered]@{ '00_instrucciones_base_eco.md'='instrucciones_base_eco.md'; '01_contabilidad_costos_reglas.md'='contabilidad_costos_reglas.md'; '02_finanzas_corporativas_proyectos_reglas.md'='finanzas_corporativas_proyectos_reglas.md'; '03_macro_micro_entorno_reglas.md'='macro_micro_entorno_reglas.md'; '04_econometria_datos_reglas.md'='econometria_datos_reglas.md'; '05_riesgos_regulacion_chile_reglas.md'='riesgos_regulacion_chile_reglas.md'; '06_estrategia_marketing_negocios_reglas.md'='estrategia_marketing_negocios_reglas.md'; '07_personas_organizacion_reglas.md'='personas_organizacion_reglas.md'; '08_checklist_modelos_decision_eco.md'='checklist_modelos_decision_eco.md' }; foreach($old in $map.Keys){ $new=$map[$old]; $oldText = (git show ('HEAD:skills/economia-finanzas/' + $old)) -join "`n"; $newText = Get-Content -Raw -Encoding utf8 -LiteralPath ('skills/economia-finanzas/' + $new); $oldWords=([regex]::Matches($oldText,'\S+')).Count; $newWords=([regex]::Matches($newText,'\S+')).Count; $same=($oldText.TrimEnd("`r","`n") -eq $newText.TrimEnd("`r","`n")); $rows += [PSCustomObject]@{Old=$old; New=$new; SameContent=$same; OldWords=$oldWords; NewWords=$newWords; Delta=($newWords-$oldWords)} }; $rows | Format-Table -AutoSize``
> - Ran `$rows = @(); $files = Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File | Sort-Object Name; foreach ($f in $files) { $b=[IO.File]::ReadAllBytes($f.FullName); $crlf=0; $lf=0; for($j=0;$j -lt $b.Length;$j++){ if($b[$j] -eq 10){$lf++; if($j -gt 0 -and $b[$j-1] -eq 13){$crlf++}} }; $trailing=(Get-Content -Encoding utf8 -LiteralPath $f.FullName | Where-Object { $_ -match '[ \t]+$' }).Count; $rows += [PSCustomObject]@{Name=$f.Name; CRLF=$crlf; LF=$lf; FinalNewline=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); TrailingWhitespace=$trailing} }; $rows | Format-Table -AutoSize; git -c core.excludesFile=.git/info/exclude diff --check -- 'skills/economia-finanzas'`
> - Ran `git -c core.excludesFile=.git/info/exclude status --short -- 'skills/economia-finanzas'; $refs = rg -o --no-filename '(?<=\]\()[^)#]+' 'skills/economia-finanzas' 2>$null; if ($refs) { $refs | Sort-Object -Unique } else { 'No Markdown link targets found in domain files.' }; $activ = rg -n 'USAR CUANDO|NO USAR CUANDO|Cu[aá]ndo usar|Cu[aá]ndo no usar|prioridad|carga condicional|dependenc' 'skills/economia-finanzas' 2>$null; if ($activ) {$activ} else {'No activation/routing/dependency contract terms found.'}`
> - Ran ``$rows=@(); $map=[ordered]@{ '00_instrucciones_base_eco.md'='instrucciones_base_eco.md'; '01_contabilidad_costos_reglas.md'='contabilidad_costos_reglas.md'; '02_finanzas_corporativas_proyectos_reglas.md'='finanzas_corporativas_proyectos_reglas.md'; '03_macro_micro_entorno_reglas.md'='macro_micro_entorno_reglas.md'; '04_econometria_datos_reglas.md'='econometria_datos_reglas.md'; '05_riesgos_regulacion_chile_reglas.md'='riesgos_regulacion_chile_reglas.md'; '06_estrategia_marketing_negocios_reglas.md'='estrategia_marketing_negocios_reglas.md'; '07_personas_organizacion_reglas.md'='personas_organizacion_reglas.md'; '08_checklist_modelos_decision_eco.md'='checklist_modelos_decision_eco.md' }; foreach($old in $map.Keys){$new=$map[$old];$oldText=(git show ('HEAD:skills/economia-finanzas/'+$old))-join "`n";$newText=Get-Content -Raw -Encoding utf8 -LiteralPath ('skills/economia-finanzas/'+$new);$normNew=$newText -replace "`r`n","`n";$same=($oldText.TrimEnd("`r","`n") -eq $normNew.TrimEnd("`r","`n"));$rows += [PSCustomObject]@{Old=$old;New=$new;ContentEquivalentAfterEOLNormalization=$same} };$rows|Format-Table -AutoSize``
> - Ran `$rows=@(); foreach($f in (Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File|Sort-Object Name)){$b=[IO.File]::ReadAllBytes($f.FullName);$bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191);$rows += [PSCustomObject]@{Name=$f.Name;UTF8BOM=$bom;Bytes=$b.Length} };$rows|Format-Table -AutoSize`
> - Ran `$entries=@(); foreach($f in (Get-ChildItem -LiteralPath 'skills/economia-finanzas' -File|Sort-Object Name)){foreach($line in (Get-Content -Encoding utf8 -LiteralPath $f.FullName)){if($line -match '^\s*[-*] '){$norm=($line -replace '^\s*[-*] ','').Trim().ToLowerInvariant();$entries += [PSCustomObject]@{File=$f.Name;Rule=$norm}}}};$entries|Group-Object Rule|Where-Object Count -gt 1|Sort-Object Count -Descending|ForEach-Object { 'COUNT '+$_.Count+': '+$_.Name; $_.Group|ForEach-Object {'  '+$_.File} }`
> - Ran `$lines=Get-Content -Encoding utf8 -LiteralPath 'C:\Users\xbash\.codex\memories\MEMORY.md'; for($i=56;$i -le 75;$i++){ '{0}: {1}' -f ($i+1),$lines[$i] }`
>
> </details>
</details>
