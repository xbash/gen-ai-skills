# Auditar skills de academia

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/87046e56-b82f-48be-abf8-cca452d6659e/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer el texto adjunto y revisar el contexto mínimo del repositorio para identificar exactamente el entregable y sus restricciones antes de modificar nada.
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/87046e56-b82f-48be-abf8-cca452d6659e/pasted-text.txt`
>
> </details>
>
> El encargo es una auditoría read-only del dominio `skills/academia`, con diagnóstico antes de cualquier refactor. Aplicaré el criterio conservador y separaré evidencia, inferencias y recomendaciones; ahora verificaré la memoria de continuidad y la raíz efectiva del repositorio.
>
> <details><summary>Explored a file, ran 5 commands</summary>
>
> - Ran `$mem='C:\Users\xbash\.codex\memories\MEMORY.md'; rg -n -i 'academia|skill|gen-ai-skills|auditoría|auditoria|carga progresiva|matriz' $mem | Select-Object -First 80; Write-Output '--- repo candidates ---'; Get-ChildItem -Force; Get-ChildItem -Force 'C:\rutinas-local\gen-ai-skills' | Select-Object Mode,Name,FullName`
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/memories/rollout_summaries/2026-07-20T03-14-25-9iuR-gen_ai_skills_context_consolidation.md`
>
> </details>
>
> - Ran `git -c core.excludesFile=.git/info/exclude status --short --branch; Write-Output '--- root docs ---'; rg --files -g 'AGENTS.md' -g 'README.md' -g 'CONTEXT*' -g 'DECISION*' -g 'HANDOFF*' -g 'PENDIENTES*' -g 'BITACORA*' -g '.editorconfig' -g '.gitattributes'`
>
> - Ran `Write-Output '--- academia files ---'; rg --files 'skills/academia'; Write-Output '--- all domain dirs ---'; Get-ChildItem 'skills' -Directory | Select-Object -ExpandProperty Name`
>
> - Ran `$paths=@('README.md','CONTRIBUTING.md','CHANGELOG.md','docs/CONTEXT.md','docs/DECISIONS.md','docs/HANDOFF.md','docs/CONTEXTO_PROYECTO.md','docs/DECISIONES_TECNICAS.md','docs/PENDIENTES.md','skills/academia/README.md','skills/academia/instrucciones_base_academia.md','skills/academia/checklist_revision_notebook.md','skills/academia/analisis_tecnico_conceptual.md','skills/academia/analisis_notebook_programacion.md','skills/academia/analisis_notebook_matematicas.md','skills/academia/analisis_notebook_ia.md','skills/academia/analisis_notebook_datos_estadistica.md','skills/academia/analisis_notebook_ciberseguridad.md'); foreach($p in $paths){$i=Get-Item $p; $lines=(Get-Content $p).Count; $bytes=$i.Length; [PSCustomObject]@{Path=$p;Lines=$lines;Bytes=$bytes}} | Format-Table -AutoSize`
>
> - Ran `$paths=@('README.md','CONTRIBUTING.md','CHANGELOG.md','docs/CONTEXT.md','docs/DECISIONS.md','docs/HANDOFF.md','docs/CONTEXTO_PROYECTO.md','docs/DECISIONES_TECNICAS.md','docs/PENDIENTES.md','skills/academia/README.md','skills/academia/instrucciones_base_academia.md','skills/academia/checklist_revision_notebook.md','skills/academia/analisis_tecnico_conceptual.md','skills/academia/analisis_notebook_programacion.md','skills/academia/analisis_notebook_matematicas.md','skills/academia/analisis_notebook_ia.md','skills/academia/analisis_notebook_datos_estadistica.md','skills/academia/analisis_notebook_ciberseguridad.md'); $rows=foreach($p in $paths){$i=Get-Item $p; $lines=(Get-Content $p).Count; [PSCustomObject]@{Path=$p;Lines=$lines;Bytes=$i.Length}}; $rows | Format-Table -AutoSize`
>
> </details>
>
> El checkout está intencionalmente sucio y el dominio ya aparece en una transición de nombres: los archivos antiguos numerados figuran como eliminados y sus reemplazos descriptivos como no rastreados. No tocaré ese estado; auditaré el contenido efectivo presente y distinguiré esa situación de problemas del diseño.
>
> <details><summary>Ran 6 commands</summary>
>
> - Ran `$paths=@('README.md','CONTRIBUTING.md','CHANGELOG.md','docs/CONTEXT.md','docs/DECISIONS.md','docs/HANDOFF.md','docs/CONTEXTO_PROYECTO.md','docs/DECISIONES_TECNICAS.md','docs/PENDIENTES.md'); foreach($p in $paths){Write-Output ('### FILE: '+$p); Get-Content -Raw $p}`
> - Ran `$paths=@('skills/academia/README.md','skills/academia/instrucciones_base_academia.md','skills/academia/checklist_revision_notebook.md','skills/academia/analisis_tecnico_conceptual.md','skills/academia/analisis_notebook_programacion.md','skills/academia/analisis_notebook_matematicas.md','skills/academia/analisis_notebook_ia.md','skills/academia/analisis_notebook_datos_estadistica.md','skills/academia/analisis_notebook_ciberseguridad.md'); foreach($p in $paths){Write-Output ('### FILE: '+$p); Get-Content -Raw $p}`
> - Ran `$paths=@('skills/investigacion-general/README.md','skills/investigacion-ia/README.md','skills/ciencia-ingenieria-datos/README.md','skills/desarrollo-ia/README.md','skills/ingenieria-software/README.md','skills/seguridad-appsec/README.md','skills/seguridad-opsec/README.md'); foreach($p in $paths){if(Test-Path $p){Write-Output ('### FILE: '+$p); Get-Content -Raw $p}}`
> - Ran `git status --short -- skills/academia; Write-Output '--- HEAD academia tree ---'; git ls-tree -r --name-only HEAD -- skills/academia; Write-Output '--- current links/mentions ---'; rg -n -i 'academia|notebook|checklist|base|usar cuando|no usar cuando|cargar|carga|skill' skills/academia README.md docs/CONTEXT.md docs/DECISIONS.md docs/HANDOFF.md docs/CONTEXTO_PROYECTO.md docs/DECISIONES_TECNICAS.md docs/PENDIENTES.md`
> - Ran `$paths=@('skills/investigacion-general/instrucciones_base_investigacion.md','skills/investigacion-ia/instrucciones_base_ia_investiga.md','skills/ciencia-ingenieria-datos/instrucciones_base_cied.md','skills/desarrollo-ia/base/instrucciones_base_ia.md','skills/ingenieria-software/instrucciones_base_dev.md','skills/seguridad-appsec/instrucciones_base_appsec.md'); foreach($p in $paths){if(Test-Path $p){Write-Output ('### FILE: '+$p); Get-Content -Raw $p}}`
> - Ran ``Get-ChildItem -File skills/investigacion-general,skills/investigacion-ia,skills/ciencia-ingenieria-datos,skills/ingenieria-software,skills/seguridad-appsec | Select-Object Directory,Name,Length; Write-Output '--- current academia file stats ---'; $rows=foreach($p in (Get-ChildItem skills/academia -File | Sort-Object Name)){ $c=Get-Content -Raw $p.FullName; [PSCustomObject]@{File=$p.Name;Lines=($c -split "`n").Count;Words=([regex]::Matches($c,'\S+')).Count;Headings=([regex]::Matches($c,'(?m)^#+\s')).Count;Bullets=([regex]::Matches($c,'(?m)^\s*[-*]\s')).Count;Bytes=$p.Length} }; $rows | Format-Table -AutoSize``
>
> </details>
>
> La lectura completa muestra una estructura razonable de ocho artefactos operativos (base, análisis genérico, cinco especializaciones y checklist) más el README. Ya aparece un problema de activación de alto impacto: el README actualizado enumera nombres descriptivos, pero todavía recomienda seleccionar “02 a 06”, que ya no existen. Verificaré ahora consistencia estática, codificación, referencias y solapamiento medible antes de cerrar el diagnóstico.
>
> <details><summary>Ran 16 commands</summary>
>
> - Ran ``$files=Get-ChildItem skills/academia -File | Sort-Object Name; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $crlf=([Text.Encoding]::ASCII.GetString($b)-split "`r`n").Count-1; $lf=([Text.Encoding]::ASCII.GetString($b)-split "(?<!`r)`n").Count-1; $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $text=[Text.Encoding]::UTF8.GetString($b); $trail=([regex]::Matches($text,'(?m)[ \t]+$')).Count; $nonascii=([regex]::Matches($text,'[^\x00-\x7F]')).Count; [PSCustomObject]@{File=$f.Name;Bytes=$b.Length;BOM=$bom;CRLF=$crlf;LF=$lf;TrailingWhitespace=$trail;NonAscii=$nonascii;FinalNewline=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10)}} | Format-Table -AutoSize; Write-Output '--- markdown links ---'; rg -n '\]\(' skills/academia || $true; Write-Output '--- stale numeric routing ---'; rg -n '02|03|04|05|06|numer|pack-chatgpt|prompt-tarea' skills/academia docs/DECISIONES_TECNICAS.md docs/DECISIONS.md docs/CONTEXTO_PROYECTO.md docs/PENDIENTES.md``
> - Ran `$files=Get-ChildItem skills/academia -File | Where-Object Name -ne 'README.md'; $rows=foreach($f in $files){$text=Get-Content -Raw $f.FullName; [PSCustomObject]@{File=$f.Name;Words=([regex]::Matches($text,'\S+')).Count;Actionable=([regex]::Matches($text,'(?im)^\s*(?:[-*]|\d+\.)\s+')).Count;UsesWhen=([regex]::Matches($text,'(?im)usar cuando')).Count;NoUsesWhen=([regex]::Matches($text,'(?im)no usar cuando')).Count;NoInvent=([regex]::Matches($text,'(?im)no invent')).Count;Minimal=([regex]::Matches($text,'(?im)cambios minimos|no refactor|no reescrib')).Count}}; $rows | Format-Table -AutoSize; Write-Output '--- repeated exact bullets ---'; $all=foreach($f in $files){foreach($l in (Get-Content $f.FullName)){if($l -match '^\s*[-*]\s+'){[PSCustomObject]@{Line=$l.Trim();File=$f.Name}}}}; $all | Group-Object Line | Where-Object Count -ge 2 | Sort-Object Count -Descending | Select-Object Count,Name`
> - Ran ``$files=Get-ChildItem skills/academia -File | Sort-Object Name; $rows=foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $s=[Text.Encoding]::ASCII.GetString($b); $text=[Text.Encoding]::UTF8.GetString($b); [PSCustomObject]@{File=$f.Name;Bytes=$b.Length;BOM=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191);CRLF=([regex]::Matches($s,"`r`n")).Count;LF=([regex]::Matches($s,"(?<!`r)`n")).Count;TrailingWhitespace=([regex]::Matches($text,'(?m)[ \t]+$')).Count;NonAscii=([regex]::Matches($text,'[^\x00-\x7F]')).Count;FinalNewline=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10)}}; $rows | Format-Table -AutoSize; Write-Output '--- markdown links ---'; $links=rg -n '\]\(' skills/academia; if($LASTEXITCODE -eq 0){$links}else{'(none)'}; Write-Output '--- stale numeric routing ---'; rg -n '02|03|04|05|06|numer|pack-chatgpt|prompt-tarea' skills/academia docs/DECISIONES_TECNICAS.md docs/DECISIONS.md docs/CONTEXTO_PROYECTO.md docs/PENDIENTES.md``
> - Ran `rg -n 'Ã|Â|�|[áéíóúñÁÉÍÓÚÑ]' skills/academia README.md docs/CONTEXT.md docs/DECISIONS.md docs/DECISIONES_TECNICAS.md docs/PENDIENTES.md; Write-Output '--- numbered lines ---'; $paths=Get-ChildItem skills/academia -File | Sort-Object Name; foreach($p in $paths){Write-Output ('### '+$p.Name); $n=0; Get-Content $p.FullName | ForEach-Object { $n++; '{0,4}: {1}' -f $n,$_ }}`
> - Ran `$paths=@('skills/investigacion-general/instrucciones_base_investiga.md','skills/investigacion-general/checklist_investigacion.md','skills/investigacion-ia/instrucciones_base_ia_investiga.md','skills/investigacion-ia/checklist_investigacion_ia.md','skills/ciencia-ingenieria-datos/instrucciones_base_cied.md','skills/ciencia-ingenieria-datos/reglas_transversales_cied.md','skills/ingenieria-software/pruebas_calidad_reglas.md','skills/seguridad-appsec/checklist_appsec.md'); foreach($p in $paths){if(Test-Path $p){Write-Output ('### FILE: '+$p); Get-Content -Raw $p}}`
> - Ran ``$n=0; Get-Content .gitattributes | ForEach-Object {$n++; '{0,3}: {1}' -f $n,$_}; Write-Output '--- editorconfig ---'; $n=0; Get-Content .editorconfig | ForEach-Object {$n++; '{0,3}: {1}' -f $n,$_}; Write-Output '--- targeted docs ---'; foreach($p in @('docs/DECISIONES_TECNICAS.md','docs/CONTEXTO_PROYECTO.md','docs/PENDIENTES.md')){Write-Output ('### '+$p); $n=0; Get-Content $p | ForEach-Object {$n++; if($_ -match 'academia|02`|02 a|prompt-tarea|numer'){'{0,4}: {1}' -f $n,$_}}}``
> - Ran `$files=Get-ChildItem skills/academia -File | Where-Object Name -ne 'README.md'; Write-Output '--- heading/section inventory ---'; foreach($f in $files){$heads=(Get-Content $f.FullName | Where-Object {$_ -match '^## '}) -join ' | '; '{0}: {1}' -f $f.Name,$heads}; Write-Output '--- all explicit activation phrases ---'; rg -n -i '^(USAR CUANDO|NO USAR CUANDO)|Usar cuando|No usar cuando' skills/academia`
> - Ran `$pairs=@(@('skills/academia/instrucciones_base_academia.md','skills/academia/analisis_tecnico_conceptual.md'),@('skills/academia/instrucciones_base_academia.md','skills/academia/checklist_revision_notebook.md'),@('skills/academia/analisis_tecnico_conceptual.md','skills/academia/checklist_revision_notebook.md')); foreach($pair in $pairs){$a=Get-Content -Raw $pair[0];$b=Get-Content -Raw $pair[1];$wa=[regex]::Matches($a.ToLower(),'[a-záéíóúñ0-9_#/-]{4,}');$wb=[regex]::Matches($b.ToLower(),'[a-záéíóúñ0-9_#/-]{4,}');$setA=@{};foreach($m in $wa){$setA[$m.Value]=$true};$common=@($wb|ForEach-Object {$v=$_.Value;if($setA.ContainsKey($v)){$v}}|Sort-Object -Unique); '{0} <> {1}: common unique terms={2}; sample={3}' -f (Split-Path $pair[0] -Leaf),(Split-Path $pair[1] -Leaf),$common.Count,(($common|Select-Object -First 25)-join ', ')}}`
> - Ran `git diff -- skills/academia/README.md; Write-Output '--- HEAD README ---'; git show HEAD:skills/academia/README.md`
> - Ran `$p='skills/academia/analisis_tecnico_conceptual.md'; Write-Output '--- non-ASCII bytes/lines ---'; $n=0; Get-Content $p | ForEach-Object {$n++; if($_ -match '[^\x00-\x7F]'){'{0}: {1}' -f $n,$_}}; Write-Output '--- potential placeholders and vague selectors ---'; rg -n '\[INDICAR|por ejemplo|si aplica|cuando corresponda|u otra|etc\.|y otros|modulo|tema' skills/academia`
> - Ran `$paths=@('skills/academia/instrucciones_base_academia.md','skills/academia/analisis_tecnico_conceptual.md','skills/academia/checklist_revision_notebook.md'); foreach($p in $paths){$text=Get-Content -Raw $p; $sections=([regex]::Matches($text,'(?m)^##\s+')).Count; $bullets=([regex]::Matches($text,'(?m)^\s*[-*]\s+')).Count; $numbered=([regex]::Matches($text,'(?m)^\s*\d+\.\s+')).Count; [PSCustomObject]@{File=$p;Sections=$sections;Bullets=$bullets;Numbered=$numbered;Words=([regex]::Matches($text,'\S+')).Count}} | Format-Table -AutoSize`
> - Ran `$p='skills/academia/README.md'; $n=0; Get-Content $p | ForEach-Object {$n++; '{0,3}: {1}' -f $n,$_}; Write-Output '--- base ---'; $p='skills/academia/instrucciones_base_academia.md'; $n=0; Get-Content $p | ForEach-Object {$n++; '{0,3}: {1}' -f $n,$_}`
> - Ran `Write-Output ('prompt-currently-exists='+(Test-Path 'skills/academia/prompt-tarea1-vision-nlp-redes.md')); Write-Output '--- current academia files ---'; Get-ChildItem skills/academia -File | Select-Object -ExpandProperty Name; Write-Output '--- status only domain ---'; git -c core.excludesFile=.git/info/exclude status --short -- skills/academia`
> - Ran `$p='skills/academia/analisis_tecnico_conceptual.md'; $n=0; Get-Content $p | ForEach-Object {$n++; if($n -in 8..19 -or $n -in 76..87 -or $n -in 89..118){'{0,3}: {1}' -f $n,$_}}; Write-Output '--- specialist activation/rules ---'; foreach($p in Get-ChildItem skills/academia/analisis_notebook_*.md){Write-Output ('### '+$p.Name); $n=0; Get-Content $p | ForEach-Object {$n++; if($n -le 28){'{0,3}: {1}' -f $n,$_}}}`
> - Ran `$p='C:\Users\xbash\.codex\memories\MEMORY.md'; $n=0; Get-Content $p | ForEach-Object {$n++; if($n -ge 60 -and $n -le 75){'{0}: {1}' -f $n,$_}}; Write-Output '--- rollout lines ---'; $p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-07-20T03-14-25-9iuR-gen_ai_skills_context_consolidation.md'; $n=0; Get-Content $p | ForEach-Object {$n++; if($n -le 28){'{0}: {1}' -f $n,$_}}`
> - Ran `if(Test-Path SECURITY.md){$n=0; Get-Content SECURITY.md | ForEach-Object {$n++; '{0,3}: {1}' -f $n,$_}}; Write-Output '--- domain file counts ---'; $files=Get-ChildItem skills/academia -File; [PSCustomObject]@{OperationalArtifacts=($files.Name|Where-Object {$_ -ne 'README.md'}).Count; README=($files.Name -contains 'README.md');Ipynb=(@(Get-ChildItem skills/academia -Recurse -File -Filter *.ipynb)).Count;Subdirectories=(@(Get-ChildItem skills/academia -Directory)).Count} | Format-List`
>
> </details>
</details>

## 1. Resumen ejecutivo

- Se encontraron 8 artefactos operativos y 1 README.
- La salud general es buena: hay separación entre base, módulo genérico, especializaciones y checklist.
- El problema más importante es de activación: el README recomienda “02 a 06”, aunque esos nombres ya no existen.
- Existe una contradicción entre cargar una especialización o cargar también el análisis genérico.
- El análisis genérico concentra aproximadamente 786 palabras y repite contenido de la base y del checklist.
- Las especializaciones son pequeñas, densas y conceptualmente justificadas; no recomiendo fusionarlas.
- Optimización posible: media-alta, principalmente en routing, contrato de carga y compactación del módulo genérico.
- No se modificaron archivos. El diagnóstico es estático; no demuestra todavía ahorro real de tokens ni mejora funcional con un LLM.

## 2. Inventario funcional

El inventario actual fue verificado en [`skills/academia`](./gen-ai-skills/skills/academia).

| Skill | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| `instrucciones_base_academia.md` | Invariantes académicos, límites, revisión mínima y formato común | En toda revisión de notebook Jupyter con Python | Vigente |
| `analisis_tecnico_conceptual.md` | Flujo completo de análisis genérico de notebooks | El tema es general o aún no está identificado | Vigente, sobredimensionada |
| `analisis_notebook_ia.md` | Criterios específicos para ML, DL, NLP, RAG, agentes y modelos generativos | El notebook implementa o evalúa IA | Vigente |
| `analisis_notebook_programacion.md` | Criterios de programación, algoritmos y pruebas | El foco es Python, algoritmos, POO, APIs o scripts | Vigente |
| `analisis_notebook_datos_estadistica.md` | Criterios de datos, EDA, estadística y visualización | El foco es análisis de datos o inferencia | Vigente |
| `analisis_notebook_matematicas.md` | Criterios matemáticos y numéricos | El foco es álgebra, cálculo, optimización o simulación | Vigente |
| `analisis_notebook_ciberseguridad.md` | Revisión defensiva y autorizada de notebooks de seguridad | El notebook analiza logs, detección, hardening o forense | Vigente |
| `checklist_revision_notebook.md` | Verificación transversal antes del cierre | Durante auditoría o entrega final | Vigente, requiere ajuste de contrato |

El README documenta correctamente los nombres descriptivos en las líneas [10–19](./gen-ai-skills/skills/academia/README.md:10), pero conserva el routing antiguo en la línea [28](./gen-ai-skills/skills/academia/README.md:28).

## 3. Evaluación detallada

Puntuación de 1 a 5. No se calculó una media matemática.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 3 | 4 | 4 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Técnico-conceptual | 5 | 4 | 4 | 4 | 3 | 4 | 3 | 2 | RESUMIR |
| IA | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MEJORAR |
| Programación | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Datos-estadística | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Matemáticas | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Ciberseguridad | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Checklist | 4 | 3 | 4 | 5 | 4 | 5 | 4 | 3 | MEJORAR |

### Observaciones por skill

- La base tiene buen valor operativo y reúne reglas apropiadas: mapeo previo, no invención, cambios mínimos, reproducibilidad y salida lista para pegar ([base, líneas 8–42](./gen-ai-skills/skills/academia/instrucciones_base_academia.md:8)).
- El módulo técnico-conceptual es el principal candidato a compactación. Repite restricciones, criterios técnicos y formato de la base ([líneas 76–115](./gen-ai-skills/skills/academia/analisis_tecnico_conceptual.md:76)).
- El módulo de IA aporta controles específicos valiosos: leakage, baseline, particiones, métricas y reproducibilidad ([líneas 9–25](./gen-ai-skills/skills/academia/analisis_notebook_ia.md:9)).
- Los módulos de programación, datos y matemáticas tienen buena relación valor/contexto y no muestran redundancia suficiente para fusionarlos.
- Ciberseguridad tiene reglas defensivas claras y apropiadas ([líneas 20–25](./gen-ai-skills/skills/academia/analisis_notebook_ciberseguridad.md:20)).
- El checklist es útil como cierre, pero incorpora convenciones específicas (`# codigo N`, `# texto N`) que no necesariamente existen en todos los notebooks ([líneas 9–22](./gen-ai-skills/skills/academia/checklist_revision_notebook.md:9)).

## 4. Problemas detectados

### Redundancias

- La base y el módulo genérico repiten:
  - rol académico;
  - revisión de celdas;
  - no inventar datos;
  - cambios mínimos;
  - revisión de dependencias y reproducibilidad;
  - formato de salida.
- El módulo genérico contiene dos inventarios similares: la tarea principal y los criterios de revisión técnica.
- El checklist repite controles de estructura, código y reproducibilidad. Esta repetición es parcialmente necesaria porque funciona como verificación, pero debería evitar explicaciones duplicadas.

### Solapamientos

- `analisis_notebook_ia` se solapa con `desarrollo-ia`, `ciencia-ingenieria-datos` e `investigacion-ia`.
- `analisis_notebook_programacion` se solapa con `ingenieria-software`.
- `analisis_notebook_datos_estadistica` se solapa con `ciencia-ingenieria-datos`.
- `analisis_notebook_ciberseguridad` se solapa con `seguridad-appsec` y `seguridad-opsec`.

La separación sigue siendo justificable porque `academia` revisa notebooks con finalidad formativa. Falta documentar explícitamente ese límite para evitar activaciones simultáneas innecesarias.

### Exceso de contexto

- El módulo técnico-conceptual es mucho más extenso que las especializaciones.
- Las líneas [21–30](./gen-ai-skills/skills/academia/analisis_tecnico_conceptual.md:21) y [89–103](./gen-ai-skills/skills/academia/analisis_tecnico_conceptual.md:89) contienen listas parcialmente superpuestas.
- Las líneas [9](./gen-ai-skills/skills/academia/analisis_tecnico_conceptual.md:9) y [117–118](./gen-ai-skills/skills/academia/analisis_tecnico_conceptual.md:117) mezclan instrucciones permanentes con una plantilla concreta de usuario.
- La mención de CNN y otros ejemplos específicos aporta poco al contrato general.

### Ambigüedad

- No existen frases explícitas `USAR CUANDO:` y `NO USAR CUANDO:` de manera consistente. Solo las especializaciones tienen una variante informal de “Usar cuando”.
- El README dice seleccionar una especialización, pero las especializaciones indican “Además del análisis genérico” ([línea 7](./gen-ai-skills/academia/analisis_notebook_ia.md:7)).
- No se define qué hacer cuando un notebook pertenece simultáneamente a IA, programación y datos.
- No se define qué archivo priorizar si hay varios `.ipynb` en el directorio.
- “Inferir” qué celdas están incompletas debería exigir marcar la inferencia como tal, para no convertirla en hecho.

### Problemas arquitectónicos

- El routing del README está desactualizado.
- La documentación de continuidad también conserva referencias a “02 a 06” pese a que la convención descriptiva fue declarada canónica ([DECISIONES_TECNICAS, líneas 23–31](./gen-ai-skills/docs/DECISIONES_TECNICAS.md:23)).
- Los archivos actuales usan CRLF, aunque `.gitattributes` y `.editorconfig` exigen LF ([`.gitattributes`, líneas 1–5](./gen-ai-skills/.gitattributes:1), [`.editorconfig`, líneas 3–10](./gen-ai-skills/.editorconfig:3)).
- No se encontraron enlaces Markdown internos rotos.
- No se encontró actualmente el archivo histórico `prompt-tarea1-vision-nlp-redes.md`, aunque documentos antiguos todavía lo mencionan. Esto es una inconsistencia documental, no una razón para recrearlo.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Técnico-conceptual | Parcialmente redundantes | Media | Dejar invariantes en la base y procedimiento detallado en el módulo genérico |
| Base | Especializaciones | Complementarias | Baja | Mantener |
| Técnico-conceptual | Especializaciones | Dependientes según el texto actual | Alta | Definir si la especialización es autónoma o requiere el módulo genérico |
| Técnico-conceptual | Checklist | Parcialmente redundantes | Media | Reservar el checklist exclusivamente para cierre |
| IA | Datos-estadística | Parcialmente redundantes | Media | Seleccionar un módulo principal y cargar el otro solo por dependencia concreta |
| IA | Programación | Parcialmente redundantes | Baja | Mantener separados |
| IA | Matemáticas | Complementarias | Baja | Activar matemáticas solo si el notebook depende de derivaciones, optimización o simulación |
| Datos-estadística | Matemáticas | Parcialmente redundantes | Media | Separar estadística aplicada de matemática formal/numerical |
| Ciberseguridad | Datos-estadística | Parcialmente redundantes | Media | Ciberseguridad debe conservar evidencia, amenaza y detección como foco |
| IA | `desarrollo-ia` | Solapamiento temático | Alta | Documentar: academia = notebook formativo; desarrollo-ia = construcción/operación |
| Datos-estadística | `ciencia-ingenieria-datos` | Solapamiento temático | Alta | Documentar: academia = revisión pedagógica; CIED = proyecto/pipeline |
| Programación | `ingenieria-software` | Solapamiento temático | Media | Derivar a ingeniería cuando el objeto sea software mantenible o productivo |
| Ciberseguridad | `seguridad-appsec` | Solapamiento temático | Alta | Mantener foco en notebook académico defensivo y autorizado |

## 6. Propuesta de arquitectura objetivo

La estructura física actual puede conservarse:

```text
skills/academia/
├── README.md
├── instrucciones_base_academia.md
├── analisis_tecnico_conceptual.md
├── analisis_notebook_ia.md
├── analisis_notebook_programacion.md
├── analisis_notebook_datos_estadistica.md
├── analisis_notebook_matematicas.md
├── analisis_notebook_ciberseguridad.md
└── checklist_revision_notebook.md
```

Contrato lógico propuesto:

```text
README/router
      ↓
instrucciones_base_academia.md
      ↓
exactamente un módulo principal:
  ├── analisis_tecnico_conceptual.md
  └── una especialización temática
      ↓
especialización secundaria solo si existe dependencia concreta
      ↓
checklist_revision_notebook.md al cierre
```

No recomiendo crear una nueva skill base todavía. La mejora principal consiste en aclarar responsabilidades:

- Base: invariantes académicos, límites, no invención, mapeo previo y formato común.
- Técnico-conceptual: flujo detallado del análisis general.
- Especializaciones: únicamente criterios propios del área.
- Checklist: verificación final, sin convertirse en otra guía explicativa.
- README: routing explícito, límites y reglas de selección.

## 7. Acciones recomendadas

### P0 — Críticas

1. Corregir el routing del README: reemplazar “02 a 06” por los cinco nombres descriptivos actuales.
2. Resolver la contradicción entre “seleccionar una especialización” y “además del análisis genérico”.
3. Definir explícitamente el contrato: base obligatoria + un módulo principal + complementos solo por dependencia concreta + checklist al cierre.

### P1 — Alto impacto

4. Añadir `USAR CUANDO:` y `NO USAR CUANDO:` a la base, al módulo genérico y a cada especialización.
5. Compactar el módulo técnico-conceptual, eliminando listas duplicadas y separando plantilla de contexto de instrucciones permanentes.
6. Documentar límites con `desarrollo-ia`, `ciencia-ingenieria-datos`, `ingenieria-software`, `investigacion-ia` y los dominios de seguridad.
7. Normalizar los archivos del dominio a LF, conforme a la política existente.

### P2 — Optimización

8. Convertir el checklist en un cierre condicional: marcar como “no aplica” los controles que no correspondan.
9. Reducir ejemplos genéricos y mantener solo instrucciones que cambien el comportamiento del agente.
10. Añadir una validación estática para detectar nombres de archivos inexistentes, activadores ausentes y finales de línea incorrectos.

### P3 — Opcional

11. Probar casos representativos con un LLM: notebook de programación, datos, IA, matemática, seguridad y caso híbrido.
12. Medir palabras/tokens cargados en cada ruta antes de afirmar ahorro o preservación de calidad.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Corregir routing del README | = | ↑↑ | ↑↑ | Bajo |
| Definir contrato de carga | ↓↓ | ↑↑ | ↑↑ | Bajo |
| Compactar módulo genérico | ↓↓ | = / ↑ | ↑ | Medio |
| Separar plantilla de contexto | ↓ | ↑ | ↑ | Bajo |
| Mantener especializaciones separadas | = | ↑ | ↑ | Bajo |
| Hacer checklist condicional | ↓ | = / ↑ | ↑ | Bajo |
| Normalizar CRLF a LF | = | = | ↑ | Bajo |
| Añadir límites entre dominios | = | ↑ | ↑ | Bajo |
| Fusionar especializaciones | ↓ | Riesgo de regresión | ↓ | Alto |

Las flechas son estimaciones cualitativas de diseño, no mediciones de tokens.

## 9. Skills candidatas a modificación

### Mantener con contenido esencial

- `analisis_notebook_programacion.md`
- `analisis_notebook_datos_estadistica.md`
- `analisis_notebook_matematicas.md`
- `analisis_notebook_ciberseguridad.md`

Requieren principalmente contrato de activación y límites de dominio.

### Mejorar

- `instrucciones_base_academia.md`
- `analisis_notebook_ia.md`
- `checklist_revision_notebook.md`

### Compactar

- `analisis_tecnico_conceptual.md`

### Fusionar

- Ninguna. No hay evidencia suficiente de que dos especializaciones tengan objetivos prácticamente idénticos.

### Dividir

- Ninguna en la primera fase. Dividir el módulo genérico antes de validar el uso real podría aumentar la fragmentación.

### Reubicar

- Ningún archivo actual. El antiguo prompt de tarea no existe en el árbol actual y no debe recrearse sin confirmación.

### Eliminar o deprecar

- Ninguna.

## 10. Plan conservador de refactorización

1. Corregir primero el README y los documentos de routing.
2. Establecer el contrato de carga y selección de módulo.
3. Añadir activadores positivos y negativos.
4. Compactar el módulo técnico-conceptual sin retirar criterios metodológicos.
5. Ajustar el checklist para que funcione como cierre transversal.
6. Normalizar EOL y ejecutar validación estática.
7. Ejecutar pruebas funcionales con notebooks representativos.
8. Medir contexto y tokens antes/después.
9. Solo después decidir si alguna división o nueva skill es necesaria.

## Conclusión

1. El dominio tiene una base sólida y especializaciones útiles.
2. La mayor ineficiencia está en el módulo técnico-conceptual y su duplicación.
3. El mayor riesgo actual es el routing desactualizado y ambiguo.
4. Recomiendo refactorizar ahora de forma localizada, sin fusionar ni eliminar skills.
5. La mejor relación calidad/tokens provendría de definir el contrato de carga y compactar el módulo genérico.
6. Las mejoras de tokens siguen pendientes de medición funcional.
