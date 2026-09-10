# Audita skills ingeniería software

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/52ca2391-c4e1-407e-9ecf-8cec47c61ec8/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer el texto adjunto para recuperar la solicitud completa y revisar brevemente el contexto previo relevante antes de actuar.
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/52ca2391-c4e1-407e-9ecf-8cec47c61ec8/pasted-text.txt`
>
> </details>
>
> La solicitud pide una auditoría diagnóstica, sin modificar archivos, del dominio `gen-ai-skills/skills/ingenieria-software`, con inventario, evaluación por skill, relaciones, arquitectura objetivo y plan conservador. Haré primero el inventario real y revisaré las instrucciones normativas aplicables.
>
> <details><summary>Ran 5 commands</summary>
>
> - Ran `$mem='C:\Users\xbash\.codex\memories\MEMORY.md'; if (Test-Path -LiteralPath $mem) { rg -n -i --context 2 'ingenieria-software|instruction|skill|carga progresiva|matriz_propiedad' -- $mem }`
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T04-18-07-8GOd-refactorizacion_skills_continuidad_gen_ai_skills.md'; if (Test-Path -LiteralPath $p) { Get-Content -Raw -LiteralPath $p }`
> - Ran `Get-ChildItem -Force | Select-Object Mode,Length,Name; Get-ChildItem -Recurse -Filter AGENTS.md -File | Select-Object -ExpandProperty FullName`
> - Ran `git -c core.excludesFile=.git/info/exclude status --short --branch`
> - Ran `$d='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ingenieria-software'; Get-ChildItem -LiteralPath $d -Recurse -File | Sort-Object FullName | Select-Object FullName,Length,Extension`
>
> </details>
>
> El checkout efectivo es el subdirectorio `C:\rutinas-local\gen-ai-skills\gen-ai-skills`; la raíz contenedora no es un repositorio Git. El dominio contiene 10 archivos Markdown (README, base, 7 módulos/checklist según nombres), y no aparece un `AGENTS.md` dentro del checkout principal en la búsqueda inicial. Verificaré ahora la documentación del repositorio, el estado Git correcto y leeré íntegramente los 10 archivos.
>
> <details><summary>Ran 9 commands</summary>
>
> - Ran `git -c core.excludesFile=.git/info/exclude status --short --branch; Get-ChildItem -Force | Select-Object Mode,Length,Name`
> - Ran `rg --files -g 'AGENTS.md' -g 'README.md' -g 'docs/**' -g '.gitattributes' -g '.editorconfig' | Sort-Object`
> - Ran ``$d='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ingenieria-software'; $files=Get-ChildItem -LiteralPath $d -File -Filter *.md | Sort-Object Name; foreach($f in $files){ $c=Get-Content -Raw -LiteralPath $f.FullName; $words=([regex]::Matches($c,'\S+')).Count; $lines=($c -split "`n").Count; Write-Output ("{0}`tlines={1}`twords={2}`tbytes={3}" -f $f.Name,$lines,$words,$f.Length) }``
> - Ran ``$paths=@('README.md','docs/architecture.md','docs/best-practices.md','docs/prompt-design.md','docs/CONTEXT.md','docs/DECISIONS.md','docs/HANDOFF.md','skills/ingenieria-software/README.md'); foreach($rel in $paths){ $p=Join-Path (Get-Location) $rel; Write-Output "`n===== $rel ====="; $b=[IO.File]::ReadAllBytes($p); [Text.Encoding]::UTF8.GetString($b) }``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $files=Get-ChildItem -LiteralPath $d -File -Filter *.md | Sort-Object Name; foreach($f in $files){ Write-Output "`n===== $($f.Name) ====="; $b=[IO.File]::ReadAllBytes($f.FullName); [Text.Encoding]::UTF8.GetString($b) }``
> - Ran `git ls-tree -r --name-only HEAD -- 'skills/ingenieria-software/*'; git status --short -- 'skills/ingenieria-software'`
> - Ran `rg --files -g 'SKILL.md' -g 'AGENTS.md' -g 'GEMINI.md' -g '*spec*' -g '*architecture*' -g '*best-practices*' | Sort-Object`
> - Ran ``$paths=@('docs/DECISIONES_TECNICAS.md','docs/REGISTRO_CAMBIOS.md','docs/PENDIENTES.md','.gitattributes','.editorconfig'); foreach($rel in $paths){$p=Join-Path (Get-Location) $rel; Write-Output "`n===== $rel ====="; $b=[IO.File]::ReadAllBytes($p); [Text.Encoding]::UTF8.GetString($b)}``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $files=Get-ChildItem -LiteralPath $d -File -Filter *.md | Sort-Object Name; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $crlf=([Text.Encoding]::UTF8.GetString($b) -match "`r`n"); $trail=([Text.Encoding]::UTF8.GetString($b) -match '(?m)[ \t]+$'); $final=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); Write-Output ("{0}`tBOM={1}`tCRLF={2}`tTRAIL={3}`tLF_FINAL={4}" -f $f.Name,$bom,$crlf,$trail,$final)}``
>
> </details>
>
> La evidencia Git es importante: el dominio actual todavía no está consolidado en `HEAD`. En el working tree, los nueve archivos numerados y el `pack-chatgpt/` histórico aparecen como eliminados, mientras sus nueve reemplazos descriptivos aparecen sin seguimiento; el README está modificado. No tocaré ese estado. Completaré el análisis sobre los archivos actuales y separaré claramente estado del contenido, estado Git e inferencias.
>
> <details><summary>Ran 12 commands</summary>
>
> - Ran ``$pairs=@(@('00_instrucciones_base_dev.md','instrucciones_base_dev.md'),@('01_diseno_arquitectura_reglas.md','diseno_arquitectura_reglas.md'),@('02_backend_api_reglas.md','backend_api_reglas.md'),@('03_frontend_web_reglas.md','frontend_web_reglas.md'),@('04_bases_datos_sql_reglas.md','bases_datos_sql_reglas.md'),@('05_pruebas_calidad_reglas.md','pruebas_calidad_reglas.md'),@('06_devops_ci_cd_reglas.md','devops_ci_cd_reglas.md'),@('07_seguridad_codigo_reglas.md','seguridad_codigo_reglas.md'),@('08_checklist_codigo_dev.md','checklist_codigo_dev.md')); foreach($pair in $pairs){$old='skills/ingenieria-software/'+$pair[0]; $txt=(git show ('HEAD:'+($old -replace '\','/')) 2>$null) -join "`n"; $nw=Get-Content -Raw -LiteralPath ('skills/ingenieria-software/'+$pair[1]); $ow=([regex]::Matches($txt,'\S+')).Count; $nwcount=([regex]::Matches($nw,'\S+')).Count; Write-Output ("{0} -> {1}`tHEAD_lines={2}`tHEAD_words={3}`tWORK_words={4}`tDelta_words={5}" -f $pair[0],$pair[1],($txt -split "`n").Count,$ow,$nwcount,($nwcount-$ow))}``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $files=Get-ChildItem -LiteralPath $d -File -Filter *.md | Sort-Object Name; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $s=[Text.Encoding]::UTF8.GetString($b); $h=([regex]::Matches($s,'(?m)^#{1,6}\s+')).Count; $bul=([regex]::Matches($s,'(?m)^\s*[-*]\s+')).Count; $check=([regex]::Matches($s,'(?m)^\s*- \[[ xX]\]')).Count; $use=([regex]::Matches($s,'(?im)^\s*USAR CUANDO:')).Count; $no=([regex]::Matches($s,'(?im)^\s*NO USAR CUANDO:')).Count; Write-Output ("{0}`theadings={1}`tbullets={2}`tchecks={3}`tusar={4}`tno={5}" -f $f.Name,$h,$bul,$check,$use,$no)}``
> - Ran `$d=Join-Path (Get-Location) 'skills/ingenieria-software'; rg -n -i 'seguridad|validar|prueba|migraci|observab|logs|secret|rendimiento|manten|refactor|rollback|contrato|idempot|version|dependen|entrada|error' $d`
> - Ran ``$pairs=@(@('00_instrucciones_base_dev.md','instrucciones_base_dev.md'),@('01_diseno_arquitectura_reglas.md','diseno_arquitectura_reglas.md'),@('02_backend_api_reglas.md','backend_api_reglas.md'),@('03_frontend_web_reglas.md','frontend_web_reglas.md'),@('04_bases_datos_sql_reglas.md','bases_datos_sql_reglas.md'),@('05_pruebas_calidad_reglas.md','pruebas_calidad_reglas.md'),@('06_devops_ci_cd_reglas.md','devops_ci_cd_reglas.md'),@('07_seguridad_codigo_reglas.md','seguridad_codigo_reglas.md'),@('08_checklist_codigo_dev.md','checklist_codigo_dev.md')); foreach($pair in $pairs){$old='skills/ingenieria-software/'+$pair[0]; $txt=(git show ('HEAD:'+($old -replace '\\','/')) 2>$null) -join "`n"; $nw=Get-Content -Raw -LiteralPath ('skills/ingenieria-software/'+$pair[1]); $ow=([regex]::Matches($txt,'\S+')).Count; $nwcount=([regex]::Matches($nw,'\S+')).Count; Write-Output ("{0} -> {1}`tHEAD_lines={2}`tHEAD_words={3}`tWORK_lines={4}`tWORK_words={5}`tDelta_words={6}" -f $pair[0],$pair[1],($txt -split "`n").Count,$ow,($nw -split "`n").Count,$nwcount,($nwcount-$ow))}``
> - Ran ``git diff --check -- 'skills/ingenieria-software'; $d=Join-Path (Get-Location) 'skills/ingenieria-software'; $files=Get-ChildItem -LiteralPath $d -File -Filter *.md; $bad=@(); foreach($f in $files){$s=[Text.Encoding]::UTF8.GetString([IO.File]::ReadAllBytes($f.FullName)); $lines=$s -split "`n",0; for($i=0;$i -lt $lines.Count;$i++){if($lines[$i] -match '[ \t]+`r?$'){$bad += "$($f.Name):$($i+1)"}}}; if($bad.Count){$bad}else{'No trailing whitespace in current domain files'}``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $read=Get-Content -Raw -LiteralPath (Join-Path $d 'README.md'); $names=[regex]::Matches($read,'`([^`]+\.md)`') | ForEach-Object {$_.Groups[1].Value}; foreach($n in $names){$exists=Test-Path -LiteralPath (Join-Path $d $n); Write-Output ("{0}`t{1}" -f $n,$exists)}; $outside=[regex]::Matches($read,'`([^`]+/[^`]+)`') | ForEach-Object {$_.Groups[1].Value};``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $s=''; Get-ChildItem -LiteralPath $d -File -Filter *.md | Sort-Object Name | ForEach-Object {$s += "`n===== $($_.Name) =====`n" + [Text.Encoding]::UTF8.GetString([IO.File]::ReadAllBytes($_.FullName))}; $terms=@('No invent','si faltan datos','supuestos explícitos','separar','prueba de humo','secretos','validar entradas','manejo de errores','riesgos','limitaciones'); foreach($t in $terms){$count=([regex]::Matches($s,[regex]::Escape($t),'IgnoreCase')).Count; Write-Output ("{0}`t{1}" -f $t,$count)}``
> - Ran ``$old=(git show HEAD:skills/ingenieria-software/README.md 2>$null) -join "`n"; $nw=Get-Content -Raw -LiteralPath 'skills/ingenieria-software/README.md'; Write-Output ("README HEAD lines={0} words={1}`nREADME WORK lines={2} words={3} delta={4}" -f ($old -split "`n").Count,([regex]::Matches($old,'\S+')).Count,($nw -split "`n").Count,([regex]::Matches($nw,'\S+')).Count,(([regex]::Matches($nw,'\S+')).Count-([regex]::Matches($old,'\S+')).Count)); $oldfiles=git ls-tree -r --name-only HEAD -- 'skills/ingenieria-software/*.md' | Where-Object {$_ -notmatch 'pack-chatgpt'}; $oldsum=0; foreach($p in $oldfiles){$txt=(git show ('HEAD:'+($p -replace '\\','/')) 2>$null) -join "`n"; $oldsum += ([regex]::Matches($txt,'\S+')).Count}; $cur=Get-ChildItem 'skills/ingenieria-software' -File -Filter *.md; $cursum=0; foreach($f in $cur){$cursum += ([regex]::Matches((Get-Content -Raw $f.FullName),'\S+')).Count}; Write-Output ("Domain incl README: HEAD_words={0}; WORK_words={1}; delta={2}" -f $oldsum,$cursum,($cursum-$oldsum))``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; $files=Get-ChildItem $d -File -Filter *.md | Sort-Object Name; $all=''; foreach($f in $files){$all += [Text.Encoding]::UTF8.GetString([IO.File]::ReadAllBytes($f.FullName)) + "`n"}; $pairs=@(@('base','instrucciones_base_dev.md'),@('diseno','diseno_arquitectura_reglas.md'),@('backend','backend_api_reglas.md'),@('frontend','frontend_web_reglas.md'),@('datos','bases_datos_sql_reglas.md'),@('pruebas','pruebas_calidad_reglas.md'),@('devops','devops_ci_cd_reglas.md'),@('seguridad','seguridad_codigo_reglas.md'),@('checklist','checklist_codigo_dev.md')); foreach($p in $pairs){$s=Get-Content -Raw (Join-Path $d $p[1]); $phr=@(); foreach($x in @('USAR CUANDO','NO USAR CUANDO','Validación mínima','secretos','pruebas','riesgos','errores','entradas')){if($s -match [regex]::Escape($x)){$phr += $x}}; Write-Output ("{0}`t{1}" -f $p[0],($phr -join ', '))}``
> - Ran ``$oldfiles=git ls-tree -r --name-only HEAD -- 'skills/ingenieria-software' | Where-Object {$_ -notmatch 'pack-chatgpt'}; $oldsum=0; foreach($p in $oldfiles){$txt=(git show ('HEAD:'+($p -replace '\\','/')) 2>$null) -join "`n"; $oldsum += ([regex]::Matches($txt,'\S+')).Count}; $cur=Get-ChildItem 'skills/ingenieria-software' -File -Filter *.md; $cursum=0; foreach($f in $cur){$cursum += ([regex]::Matches((Get-Content -Raw $f.FullName),'\S+')).Count}; Write-Output ("HEAD files={0}; WORK files={1}`nDomain incl README: HEAD_words={2}; WORK_words={3}; delta={4}" -f $oldfiles.Count,$cur.Count,$oldsum,$cursum,($cursum-$oldsum))``
> - Ran ``$d=Join-Path (Get-Location) 'skills/ingenieria-software'; rg -n '^#|^##|^USAR CUANDO|^NO USAR CUANDO|^Aplicar cuando|^Carga solo|^La base|^`seguridad|^`checklist|^Para un proyecto|^Separar|^No invent|^Si faltan datos|^Para refactor|^Validación mínima|^## Archivos|^## Routing|^## Fronteras' $d``
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T04-18-07-8GOd-refactorizacion_skills_continuidad_gen_ai_skills.md'; $i=0; Get-Content -LiteralPath $p | ForEach-Object { $i++; if($i -le 55){ '{0}:{1}' -f $i,$_ } }`
>
> </details>
</details>

# Auditoría del dominio `ingenieria-software`

Auditoría realizada sobre el working tree actual, sin modificar archivos.

## Trazabilidad de contexto

Se revisaron completamente los 10 archivos del dominio, además de:

- `README.md` raíz.
- `docs/CONTEXT.md`, `DECISIONS.md`, `HANDOFF.md`.
- `docs/DECISIONES_TECNICAS.md`, `PENDIENTES.md`, `REGISTRO_CAMBIOS.md`.
- `.gitattributes`, `.editorconfig`.
- `docs/architecture.md`, `docs/best-practices.md` y `docs/prompt-design.md`, actualmente vacíos.
- No existe `AGENTS.md` en el checkout principal.

Estado Git relevante: los archivos descriptivos actuales están sin seguimiento; sus equivalentes numerados aparecen eliminados. El refactor aún no está consolidado en `HEAD`.

## 1. Resumen ejecutivo

- El dominio contiene 9 skills utilizables y un `README.md` de routing.
- Estado funcional: bueno, con reglas específicas claras y alta aplicabilidad práctica.
- Principal problema: redundancia transversal entre base, seguridad, testing y checklist.
- Principal defecto de activación: el `NO USAR CUANDO` de bases de datos contradice su propio alcance.
- El README mejora el routing, pero repite inventario y contiene instrucciones específicas por modelo innecesarias.
- Los módulos son relativamente compactos y no existe evidencia suficiente para fusionarlos o dividirlos.
- El working tree actual contiene aproximadamente 3.343 palabras de skills y 3.745 incluyendo README.
- Frente a los archivos equivalentes de `HEAD`, el contenido actual aumentó aproximadamente 4,4% sin validación funcional que demuestre mejora.
- Nivel de optimización posible: medio, principalmente por carga selectiva y eliminación de duplicación.

## 2. Inventario funcional

| Skill | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| [`instrucciones_base_dev.md`](./gen-ai-skills/skills/ingenieria-software/instrucciones_base_dev.md:1) | Invariantes de rigor, seguridad, estilo, construcción, revisión y validación | Cualquier tarea de ingeniería de software | Útil; base algo sobrecargada |
| [`diseno_arquitectura_reglas.md`](./gen-ai-skills/skills/ingenieria-software/diseno_arquitectura_reglas.md:1) | Arquitectura, diseño de componentes, algoritmos y trade-offs | Se decidan estructura, responsabilidades, contratos o complejidad | Bien acotada |
| [`backend_api_reglas.md`](./gen-ai-skills/skills/ingenieria-software/backend_api_reglas.md:1) | Servicios server-side, APIs, workers, colas e integraciones | Se implementen o revisen servicios backend | Bien acotada; solapa con seguridad |
| [`frontend_web_reglas.md`](./gen-ai-skills/skills/ingenieria-software/frontend_web_reglas.md:1) | Interfaces web, formularios, estado, UX técnica y accesibilidad | Exista interfaz o comportamiento de cliente | Bien acotada |
| [`bases_datos_sql_reglas.md`](./gen-ai-skills/skills/ingenieria-software/bases_datos_sql_reglas.md:1) | Esquemas, SQL, ORM, migraciones, transacciones y persistencia | Se trabajen datos persistentes o su diseño | Útil; activador contradictorio |
| [`pruebas_calidad_reglas.md`](./gen-ai-skills/skills/ingenieria-software/pruebas_calidad_reglas.md:1) | Estrategia de pruebas, regresión y refactorización | Exista comportamiento verificable o riesgo de regresión | Útil; solapa con checklist |
| [`devops_ci_cd_reglas.md`](./gen-ai-skills/skills/ingenieria-software/devops_ci_cd_reglas.md:1) | CI/CD, artefactos, ambientes, despliegue y operación básica | Se construyan, publiquen o desplieguen artefactos | Bien acotada |
| [`seguridad_codigo_reglas.md`](./gen-ai-skills/skills/ingenieria-software/seguridad_codigo_reglas.md:1) | Seguridad defensiva transversal | Existan secretos, datos sensibles, superficie de ataque o revisión defensiva | Alto valor; solapa transversal |
| [`checklist_codigo_dev.md`](./gen-ai-skills/skills/ingenieria-software/checklist_codigo_dev.md:1) | Verificación final de entregas y cambios | Se prepare una entrega, revisión final o corrección verificable | Valioso, pero extenso y repetitivo |

El README documenta correctamente el patrón base + skill principal + complementos necesarios en sus reglas de routing.

## 3. Evaluación detallada

Escala: 1 bajo, 5 alto. En redundancia, 5 significa redundancia mínima.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Costo | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|---|
| Base | 5 | 4 | 4 | 5 | 3 | 5 | 4 | 3 | Medio-alto | MEJORAR |
| Diseño/arquitectura | 5 | 4 | 4 | 4 | 4 | 5 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Backend/API | 5 | 4 | 4 | 4 | 4 | 5 | 4 | 3 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Frontend web | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Bases de datos/SQL | 5 | 4 | 4 | 3 | 4 | 5 | 4 | 3 | Medio | MEJORAR |
| Pruebas/calidad | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | Medio | MEJORAR |
| DevOps/CI-CD | 5 | 4 | 4 | 4 | 4 | 5 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Seguridad | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Checklist | 5 | 3 | 4 | 5 | 4 | 5 | 3 | 2 | Medio-alto | RESUMIR |

### Observaciones por skill

- Base: contiene reglas de alto valor, especialmente veracidad, supuestos, seguridad y validación. El rol, estilo, formato, citas y ciclo de desarrollo hacen que sea más extensa que una base mínima.
- Diseño: buen equilibrio entre requisitos, arquitectura, algoritmos, evolución y validación. Conviene separar conceptualmente diseño de pruebas, sin mover contenido todavía.
- Backend: cubre contratos, idempotencia, integraciones y workers. La autenticación, autorización, secretos y errores deben quedar explícitamente como controles complementarios de seguridad.
- Frontend: presenta buena cobertura de estados, accesibilidad y rendimiento. La regla “no usar textos visibles para explicar funcionalidades internas” es ambigua y puede eliminarse o reformularse.
- Bases de datos: el contenido es sólido. El activador “no lea, escriba ni modifique datos persistentes” excluye indebidamente el modelamiento de esquemas, diseño de migraciones y análisis de consultas.
- Pruebas: es una skill operacionalmente útil y suficientemente diferenciada del checklist si se reserva para estrategia y diseño de pruebas.
- DevOps: cubre razonablemente el ciclo de entrega. Se solapa con seguridad en secretos, imágenes, dependencias y logs.
- Seguridad: tiene alto valor y reglas accionables. La lista de riesgos comunes es útil como recordatorio, aunque puede compactarse.
- Checklist: funciona como control de cierre, pero repite entradas, errores, secretos, migraciones, pruebas y riesgos presentes en otras capas.

## 4. Problemas detectados

### Redundancias

1. Cada módulo repite una estructura de activación:

   - `USAR CUANDO`
   - `NO USAR CUANDO`
   - `Aplicar cuando`

   La tercera línea suele repetir la primera con más ejemplos.

2. Seguridad se repite entre:

   - base;
   - backend;
   - frontend;
   - bases de datos;
   - DevOps;
   - checklist.

   Parte de esta repetición es necesaria, pero debe existir un dueño claro para los controles transversales.

3. Pruebas y checklist repiten smoke tests, regresión, validación mínima, riesgos y resultados esperados.

### Solapamientos

- Backend y seguridad: autenticación, autorización, validación, errores, secretos y logs.
- Frontend y backend: contratos de API, errores, permisos, reintentos y validación.
- Bases de datos y seguridad: SQL parametrizado, datos sensibles y logs.
- DevOps y seguridad: secretos, dependencias, imágenes y artefactos.
- Diseño y pruebas: criterios de aceptación, estrategia de pruebas y riesgos.

Los solapamientos son gestionables; no justifican fusionar skills actualmente.

### Exceso de contexto

- La base contiene reglas generales que reaparecen en los módulos.
- El checklist contiene controles detallados que ya están en la base y en seguridad.
- El README repite parte del índice de archivos y menciona explícitamente varios modelos.
- La frase “con foco en Chile/LatAm y referencia 2026” no modifica claramente el comportamiento técnico de la mayoría de las tareas y agrega dependencia temporal.

### Ambigüedad

- El activador de bases de datos contradice el alcance declarado.
- “Persistencia sin lógica de servicio” en backend puede generar falsos negativos para repositorios o capas de acceso a datos.
- “Operación básica” en DevOps no define con precisión dónde termina el dominio y comienza operaciones-tecnología.
- El checklist no distingue claramente entre requisito obligatorio, control condicional y recomendación.

### Fragmentación

No existe sobrefragmentación grave. Nueve unidades para cubrir arquitectura, aplicaciones, datos, calidad, entrega y seguridad es razonable.

### Problemas arquitectónicos

- No existe una matriz formal de propiedad de reglas dentro del dominio.
- El routing describe combinaciones, pero no define una política compacta de selección.
- La estructura física plana es manejable con nueve archivos; moverlos a subdirectorios ahora agregaría riesgo sin beneficio demostrado.
- El estado Git no está consolidado: los archivos actuales son nuevos/no seguidos y los anteriores están eliminados.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Todas las temáticas | Dependiente | Alta | Mantener como capa común; eliminar duplicación innecesaria |
| Diseño | Backend | Complementarias | Media | Diseño define responsabilidades; backend concreta servicios |
| Diseño | Frontend | Complementarias | Baja | Mantener separación |
| Diseño | Bases de datos | Complementarias | Media | Diseño define trade-offs; datos concreta persistencia |
| Diseño | Pruebas | Parcialmente redundantes | Media | Diseño define aceptación; pruebas define estrategia y ejecución |
| Diseño | DevOps | Complementarias | Media | Integrar despliegue y operación como requisitos de diseño |
| Backend | Frontend | Complementarias con solapamiento | Media-alta | Backend debe ser dueño del contrato server-side |
| Backend | Bases de datos | Complementarias | Media | Separar lógica de servicio de persistencia |
| Backend | Seguridad | Parcialmente redundantes | Alta | Seguridad define controles; backend define aplicación contextual |
| Frontend | Seguridad | Parcialmente redundantes | Media-alta | Seguridad define control; frontend define implementación cliente |
| Bases de datos | Seguridad | Parcialmente redundantes | Media | Datos conserva SQL/persistencia; seguridad conserva amenaza/control |
| Pruebas | Checklist | Potencialmente fusionables | Alta | No fusionar; resumir checklist y reservarlo para cierre |
| Pruebas | Seguridad | Complementarias | Media | Seguridad define casos de riesgo; pruebas verifica |
| DevOps | Seguridad | Parcialmente redundantes | Media-alta | Seguridad define controles; DevOps los aplica en pipeline/ambiente |
| DevOps | Checklist | Dependientes | Media | Checklist verifica entrega; DevOps define procedimiento técnico |

## 6. Propuesta de arquitectura objetivo

No recomiendo una reorganización física inmediata. Para este tamaño, la arquitectura objetivo puede mantenerse plana y mejorar el contrato de carga:

```text
Estructura actual
skills/ingenieria-software/
├── README.md
├── instrucciones_base_dev.md
├── diseno_arquitectura_reglas.md
├── backend_api_reglas.md
├── frontend_web_reglas.md
├── bases_datos_sql_reglas.md
├── pruebas_calidad_reglas.md
├── devops_ci_cd_reglas.md
├── seguridad_codigo_reglas.md
└── checklist_codigo_dev.md
```

```text
Estructura propuesta
README.md                         -> router y fronteras
instrucciones_base_dev.md        -> invariantes comunes
[una skill principal]             -> diseño, backend, frontend, datos o DevOps
[complemento condicional]        -> seguridad o pruebas
checklist_codigo_dev.md          -> cierre, no contexto inicial
```

Contrato de carga recomendado:

```text
Tarea de software
      ↓
Base
      ↓
Una skill principal
      ↓
Complementos solo si aplica:
  - seguridad: superficie de ataque, secretos o datos sensibles
  - pruebas: cambio verificable, bug, regresión o refactorización
  - DevOps: build, release, despliegue u operación
      ↓
Checklist únicamente al cierre o revisión final
```

No hay evidencia suficiente para crear una nueva skill transversal ni para introducir subdirectorios. Si el dominio crece sustancialmente, podrían evaluarse `base/`, `aplicaciones/`, `datos/`, `ciclo_vida/`, `seguridad/` y `validacion/`, pero no es prioritario ahora.

## 7. Acciones recomendadas

### P0 — Críticas

1. Corregir el `NO USAR CUANDO` de `bases_datos_sql_reglas.md`.
2. Definir explícitamente la propiedad de reglas:

   - base: rigor, supuestos y conducta general;
   - seguridad: amenazas y controles;
   - pruebas: estrategia y evidencia;
   - checklist: verificación de cierre;
   - módulos técnicos: aplicación contextual.

3. Formalizar en el README el contrato de carga base + principal + complementos condicionales.

### P1 — Alto impacto

1. Eliminar la repetición entre `USAR CUANDO` y `Aplicar cuando`.
2. Reducir la base a invariantes que realmente cambien el comportamiento.
3. Separar claramente pruebas de checklist.
4. Aclarar fronteras backend/frontend/datos/seguridad/DevOps.
5. Ejecutar una validación funcional con casos representativos y registrar:

   - archivos cargados;
   - activación esperada;
   - activación observada;
   - omisiones;
   - correcciones necesarias;
   - calidad de la respuesta.

### P2 — Optimización

1. Resumir el checklist, conservando controles de alto riesgo.
2. Convertir controles condicionales en ítems explícitamente marcados como “si aplica”.
3. Retirar del README la enumeración innecesaria de modelos.
4. Revisar si “Chile/LatAm y referencia 2026” pertenece a esta base o a una capa contextual.
5. Normalizar los archivos actuales a LF: la política declara LF, pero los 10 archivos del dominio contienen CRLF.

### P3 — Opcional

1. Crear una matriz de propiedad de reglas si aparecen nuevas skills.
2. Añadir automatización para medir palabras/tokens por combinación de carga.
3. Evaluar subdirectorios solo cuando el dominio crezca o la selección plana se vuelva ambigua.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Corregir activador de bases de datos | = | ↑↑ | ↑ | Bajo |
| Eliminar activadores repetidos | ↓↓ | =/↑ | ↑ | Bajo |
| Definir contrato de carga | ↓↓ operativo | ↑ | ↑↑ | Bajo |
| Resumir checklist | ↓↓ al cierre | =/↑ | ↑ | Medio |
| Reducir prosa de la base | ↓ | =/↑ | ↑ | Medio |
| Aclarar propiedad seguridad/testing | = | ↑↑ | ↑↑ | Bajo |
| Normalizar CRLF a LF | = | = | ↑ | Bajo |
| Introducir subdirectorios | = | = | =/↓ inicial | Medio-alto |
| Fusionar módulos temáticos | ↓ potencial | Riesgo de regresión | ↓ | Alto |

Las flechas son estimaciones cualitativas; no representan mediciones de tokens ni garantías de calidad.

## 9. Skills candidatas a modificación

### Mantener conceptualmente

- `diseno_arquitectura_reglas.md`
- `backend_api_reglas.md`
- `frontend_web_reglas.md`
- `devops_ci_cd_reglas.md`
- `seguridad_codigo_reglas.md`

Su contenido especializado debe preservarse.

### Compactar o mejorar

- `instrucciones_base_dev.md`
- `bases_datos_sql_reglas.md`
- `pruebas_calidad_reglas.md`
- `checklist_codigo_dev.md`
- `README.md`

### Fusionar

Ninguna por ahora.

### Dividir

Ninguna por ahora.

### Reubicar

Ninguna por ahora.

### Eliminar o deprecar

Ninguna. No se demostró redundancia suficiente para eliminar contenido especializado.

## 10. Plan de refactorización

1. Corregir primero el activador de bases de datos.
2. Documentar la propiedad de reglas y el contrato de carga en el README.
3. Compactar los encabezados de activación de los módulos.
4. Revisar la base para retirar prosa temporal o poco accionable.
5. Resumir el checklist sin convertirlo en una referencia obligatoria permanente.
6. Ejecutar validación estática:

   - archivos referenciados existentes;
   - UTF-8 sin BOM;
   - LF;
   - espacios finales;
   - encabezados y activadores;
   - rutas correctas;
   - ausencia de referencias obsoletas.

7. Ejecutar validación funcional con casos representativos.
8. Medir combinaciones base, base + principal y base + complementos.
9. Revisar si la calidad se mantiene antes de consolidar cualquier movimiento físico.
10. Mantener separados los cambios actuales del resto del working tree y no hacer commit, staging o publicación sin solicitud explícita.

## Conclusión

El dominio está bien diseñado y cubre adecuadamente su alcance actual.
La mayor ineficiencia está en la duplicación entre base, seguridad, pruebas y checklist.
El defecto más urgente es el activador contradictorio de bases de datos.
No recomiendo fusionar, dividir ni mover archivos todavía.
Sí recomiendo una refactorización conservadora de routing, propiedad y checklist.
La mejor relación calidad/contexto provendría de cargar base + una skill principal + complementos condicionales.
La mejora de tokens debe confirmarse con pruebas funcionales, no solo con conteos estáticos.
