# Audita skills de visión

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/026cab04-76fa-417e-8e7a-26a9f4a4baba/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer la solicitud pegada y revisar brevemente el contexto persistido del proyecto para respetar decisiones previas antes de actuar. Luego inspeccionaré el estado real del repositorio y ejecutaré solo los cambios y verificaciones que la solicitud autorice.
>
> <details><summary>Ran a command</summary>
>
> - Ran ``Get-Content -Raw 'C:\Users\xbash\.codex\attachments\026cab04-76fa-417e-8e7a-26a9f4a4baba\pasted-text.txt'; Write-Output "`n--- MEMORY MATCHES ---"; rg -n -i "gen-ai-skills|skill|carga progresiva|matriz|refactor|continuidad" 'C:\Users\xbash\.codex\memories\MEMORY.md' | Select-Object -First 80``
>
> </details>
>
> La solicitud exige un diagnóstico previo y prohíbe modificar archivos. El contexto persistido confirma además que este checkout usa una biblioteca modular Markdown y que las conclusiones deben separar evidencia estática de inferencias; conservaré esa frontera durante la auditoría.
>
> <details><summary>Ran 7 commands</summary>
>
> - Ran `Write-Output "--- candidate governance/docs ---"; rg --files -g 'AGENTS.md' -g 'README.md' -g 'CONTEXTO*' -g 'DECISIONES*' -g 'PENDIENTES*' -g 'BITACORA*' -g '*.md' .\gen-ai-skills | Select-Object -First 200`
> - Ran `Get-Location; Get-ChildItem -Force | Select-Object Mode,Length,LastWriteTime,Name; Write-Output "--- nested repo ---"; Get-ChildItem -Force .\gen-ai-skills | Select-Object Mode,Length,LastWriteTime,Name; Write-Output "--- git ---"; git status --short --branch`
> - Ran `Write-Output "--- vision inventory ---"; Get-ChildItem -LiteralPath .\gen-ai-skills\skills\vision-por-computadora -Recurse -File | Select-Object FullName,Length,LastWriteTime; Write-Output "--- byte/encoding sample ---"; Get-ChildItem -LiteralPath .\gen-ai-skills\skills\vision-por-computadora -Recurse -File | ForEach-Object { $b=[IO.File]::ReadAllBytes($_.FullName); [PSCustomObject]@{Name=$_.Name; BOM=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); Bytes=$b.Length} }`
> - Ran `git status --short --branch; git log -5 --oneline --decorate`
> - Ran `$files = Get-ChildItem -LiteralPath .\skills\vision-por-computadora -File | Sort-Object Name; $files | ForEach-Object { $t=Get-Content -LiteralPath $_.FullName -Encoding utf8; [PSCustomObject]@{Name=$_.Name; Lines=$t.Count; Chars=(Get-Content -Raw -LiteralPath $_.FullName -Encoding utf8).Length; HeadingCount=(@($t | Where-Object {$_ -match '^#{1,6}\s'})).Count} } | Format-Table -AutoSize`
> - Ran ``Write-Output '--- README ---'; Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\README.md -Encoding utf8; Write-Output "`n--- BASE ---"; Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\instrucciones_base_cv.md -Encoding utf8; Write-Output "`n--- CHECKLIST ---"; Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\checklist_codigo_cv.md -Encoding utf8``
> - Ran ``Write-Output '--- ARCHITECTURE ---'; Get-Content -Raw -LiteralPath .\docs\architecture.md -Encoding utf8; Write-Output "`n--- CONTEXT ---"; Get-Content -Raw -LiteralPath .\docs\CONTEXT.md -Encoding utf8; Write-Output "`n--- LATEST AUDITS ---"; Get-ChildItem .\docs\auditoria_*20260909.md | Sort-Object Name | ForEach-Object { Write-Output "`n### $($_.Name)"; Get-Content -Raw -LiteralPath $_.FullName -Encoding utf8 | Select-Object -First 1 }``
>
> </details>
>
> El repositorio está en un estado de trabajo transicional con muchos cambios ajenos a este diagnóstico (incluidos dominios eliminados y nuevos no versionados); no tocaré nada ni interpretaré ese estado como parte de la salud de visión. El dominio auditado contiene 17 archivos: README, base, 14 módulos temáticos y checklist. Ahora estoy leyendo el contenido completo por bloques para construir el análisis relacional.
>
> <details><summary>Ran 12 commands</summary>
>
> - Ran ``$names=@('captacion_optica_iluminacion_reglas.md','opencv_procesamiento_imagen_reglas.md','clasificacion_imagenes_deep_learning_reglas.md','deteccion_objetos_reglas.md','segmentacion_reglas.md','keypoints_pose_estimacion_reglas.md'); foreach($n in $names){ Write-Output "`n===== $n ====="; Get-Content -Raw -LiteralPath (Join-Path '.\skills\vision-por-computadora' $n) -Encoding utf8 }``
> - Ran ``$names=@('metricas_cv_reglas.md','ocr_document_ai_reglas.md','retrieval_visual_metric_learning_reglas.md','video_tracking_movimiento_reglas.md','vision_3d_lidar_open3d_reglas.md','vision_industrial_robotica_reglas.md'); foreach($n in $names){ Write-Output "`n===== $n ====="; Get-Content -Raw -LiteralPath (Join-Path '.\skills\vision-por-computadora' $n) -Encoding utf8 }``
> - Ran ``$names=@('instrucciones_base_cv.md','despliegue_operacion_cv_reglas.md','vlm_generativa_datos_sinteticos_reglas.md','checklist_codigo_cv.md','README.md'); foreach($n in $names){ Write-Output "`n===== $n ====="; Get-Content -Raw -LiteralPath (Join-Path '.\skills\vision-por-computadora' $n) -Encoding utf8 }``
> - Ran `Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\vision_3d_lidar_open3d_reglas.md -Encoding utf8`
> - Ran `Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\retrieval_visual_metric_learning_reglas.md -Encoding utf8`
> - Ran ``Get-Content -Raw -LiteralPath .\docs\architecture.md -Encoding utf8; Write-Output "`n--- README root ---"; Get-Content -Raw -LiteralPath .\README.md -Encoding utf8; Write-Output "`n--- AGENTS files ---"; $a=rg --files -g 'AGENTS.md' -g '!skills/**' .; if($a){$a}else{'NONE'}``
> - Ran `Get-Content -Raw -LiteralPath .\skills\vision-por-computadora\video_tracking_movimiento_reglas.md -Encoding utf8`
> - Ran `Get-Item .\docs\architecture.md | Select-Object Length; Get-Content .\docs\architecture.md -Encoding utf8 | ForEach-Object { $i=0 } ; Get-Content -LiteralPath .\docs\architecture.md -Encoding utf8 | Select-Object -First 240`
> - Ran ``$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md' | Sort-Object Name; $rows=foreach($f in $files){$raw=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false)); $words=[regex]::Matches($raw,'\p{L}[\p{L}\p{N}_-]*').Count; $lines=($raw -split "`n").Count; [PSCustomObject]@{File=$f.Name; Words=$words; Chars=$raw.Length; Lines=$lines; Bullets=([regex]::Matches($raw,'(?m)^\s*-\s+').Count); Headings=([regex]::Matches($raw,'(?m)^#{1,6}\s+').Count)} }; $rows | Format-Table -AutoSize; Write-Output "TOTAL words=$((($rows | Measure-Object Words -Sum).Sum)) chars=$((($rows | Measure-Object Chars -Sum).Sum)) lines=$((($rows | Measure-Object Lines -Sum).Sum))"; Write-Output "MODULES excluding README/base/checklist: $((@($files | Where-Object {$_.Name -notin @('README.md','instrucciones_base_cv.md','checklist_codigo_cv.md')}).Count))"``
> - Ran `$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $map=@{}; foreach($f in $files){$i=0; foreach($line in Get-Content -LiteralPath $f.FullName -Encoding utf8){$i++; if($line -match '^\s*-\s+(.+?)\s*$'){ $k=$Matches[1].Trim().ToLowerInvariant(); if(-not $map.ContainsKey($k)){$map[$k]=@()} $map[$k]+="$($f.Name):$i" }}}; Write-Output '--- EXACT DUPLICATE BULLETS ---'; $map.GetEnumerator() | Where-Object {$_.Value.Count -gt 1} | Sort-Object Key | ForEach-Object { "$($_.Value.Count)x $($_.Key) => $($_.Value -join ', ')" }; Write-Output '--- HEADINGS REPEATED ACROSS FILES ---'; $hm=@{}; foreach($f in $files){$i=0; foreach($line in Get-Content -LiteralPath $f.FullName -Encoding utf8){$i++; if($line -match '^#{1,6}\s+(.+)$'){ $k=$Matches[1].Trim().ToLowerInvariant(); if(-not $hm.ContainsKey($k)){$hm[$k]=@()} $hm[$k]+="$($f.Name):$i" }}}; $hm.GetEnumerator() | Where-Object {$_.Value.Count -gt 1} | Sort-Object Key | ForEach-Object { "$($_.Value.Count)x $($_.key) => $($_.Value -join ', ')" }`
> - Ran `$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $terms='calibr','leakage','train/valid/test','prueba de humo','No invent','privacidad','latencia','rollback','métricas','validar','OpenCV','Kubernetes','SAM','tracking'; foreach($term in $terms){$hits=foreach($f in $files){$n=(Select-String -LiteralPath $f.FullName -Pattern $term -SimpleMatch -Encoding utf8 | Measure-Object).Count; if($n){"$($f.Name)=$n"}}; "${term}: $($hits -join ', ')"}`
> - Ran ``$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $issues=@(); foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $crlf=([regex]::Matches([Text.Encoding]::UTF8.GetString($b),'`r`n')).Count; $lf=([regex]::Matches([Text.Encoding]::UTF8.GetString($b),'(?<!`r)`n')).Count; $trail=([regex]::Matches([Text.Encoding]::UTF8.GetString($b),'(?m)[\t ]+$')).Count; [PSCustomObject]@{File=$f.Name; BOM=$bom; CRLF=$crlf; LF=$lf; Trailing=$trail; FinalLF=($b.Length -gt 0 -and $b[$b.Length-1]-eq 10)} }; $rows | Format-Table -AutoSize; Write-Output '--- links ---'; rg -n '\[[^]]+\]\(' '.\skills\vision-por-computadora' -g '*.md'; if($LASTEXITCODE -ne 0){'NONE'}``
>
> </details>
>
> La lectura completa muestra un patrón claro: el contenido temático es accionable y no hay duplicados textuales exactos relevantes, pero sí repetición semántica de validación, evaluación, leakage, humo y operación. La base concentra 781 palabras frente a módulos de 240–307, y el README no contiene una matriz de activación ni límites “no usar cuando”; verificaré ahora fronteras con dominios vecinos y mediré el formato/estado con precisión antes de redactar.
>
> <details><summary>Ran 14 commands</summary>
>
> - Ran `Write-Output '--- HEAD vision paths ---'; git ls-tree -r --name-only HEAD -- skills/vision-por-computadora; Write-Output '--- scoped status ---'; git status --short -- skills/vision-por-computadora; Write-Output '--- scoped diff stat ---'; git diff --stat -- skills/vision-por-computadora`
> - Ran ``Write-Output '--- ciencia datos vision ---'; Get-Content -Raw -LiteralPath .\skills\ciencia-ingenieria-datos\nlp_vision_audiovisual_reglas.md -Encoding utf8; Write-Output "`n--- desarrollo IA multimodal ---"; Get-Content -Raw -LiteralPath .\skills\desarrollo-ia\08_vision_audio_multimodal_reglas.md -Encoding utf8``
> - Ran `Write-Output '--- repo decisions/context relevant ---'; rg -n -i -C 2 "vision-por-computadora|visión por computadora|carga progresiva|activaci|propiedad|dominio" .\docs\CONTEXTO_PROYECTO.md .\docs\DECISIONES_TECNICAS.md .\docs\PENDIENTES.md .\docs\BITACORA_AGENTES.md .\docs\BITACORA_CODEX.md | Select-Object -First 240`
> - Ran ``$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; foreach($f in $files){$s=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false)); $crlf=([regex]::Matches($s,"`r`n")).Count; $barelf=([regex]::Matches($s,"(?<!`r)`n")).Count; [PSCustomObject]@{File=$f.Name; CRLF=$crlf; BareLF=$barelf; FinalLF=($s.EndsWith("`n"))} } | Format-Table -AutoSize``
> - Ran ``Get-Content -Raw -LiteralPath .\.gitattributes -Encoding utf8; Write-Output "`n--- editorconfig ---"; Get-Content -Raw -LiteralPath .\.editorconfig -Encoding utf8``
> - Ran `Write-Output '--- current 2026-09-09 decisions section ---'; $p='.\docs\DECISIONES_TECNICAS.md'; $l=Get-Content -LiteralPath $p -Encoding utf8; for($i=97;$i -le [Math]::Min(150,$l.Count);$i++){ '{0}: {1}' -f $i,$l[$i-1] }; Write-Output '--- current bitacora refactor section ---'; $p='.\docs\BITACORA_CODEX.md'; $l=Get-Content -LiteralPath $p -Encoding utf8; for($i=210;$i -le [Math]::Min(280,$l.Count);$i++){ '{0}: {1}' -f $i,$l[$i-1] }`
> - Ran `Write-Output '--- all current base/readme activation labels ---'; rg -n -i "usar cuando|no usar cuando|aplicar cuando|cargar|principal|complement|checklist|matriz|owner|propiet" .\skills\vision-por-computadora\*.md`
> - Ran `rg -n "^## |Cargar|Agregar|Incluir|No invent|Si faltan|Formato por defecto|Aplicar cambios|Evita leakage|No infieras|Todo pipeline" .\skills\vision-por-computadora\README.md .\skills\vision-por-computadora\instrucciones_base_cv.md .\skills\vision-por-computadora\checklist_codigo_cv.md`
> - Ran `rg -n "^## Alcance|tracking|SAM|OCR|bin picking|metrología|iluminación|cámara|latencia|rollback|reidentificación|grounding|métricas" .\skills\vision-por-computadora\*.md`
> - Ran `rg -n "^## Alcance|^## Usar cuando|^## Reglas|No usar|En vision|En documentos/OCR|En multimodalidad" .\skills\ciencia-ingenieria-datos\nlp_vision_audiovisual_reglas.md .\skills\desarrollo-ia -g '*vision*' -g '*multimodal*' 2>$null`
> - Ran ``$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; foreach($f in $files){$s=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false)); $crlf=([regex]::Matches($s,"`r`n")).Count; $barelf=([regex]::Matches($s,"(?<!`r)`n")).Count; [PSCustomObject]@{File=$f.Name; CRLF=$crlf; BareLF=$barelf; FinalLF=($s.EndsWith("`n"))} } | Format-Table -AutoSize``
> - Ran `$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $patterns='tracking','SAM','OCR','bin picking','metrolog','iluminación','cámara','latencia','rollback','reidentificación','grounding','métricas'; foreach($p in $patterns){Write-Output "--- $p ---"; $files | Select-String -Pattern $p -SimpleMatch -Encoding utf8 | ForEach-Object { "$($_.Filename):$($_.LineNumber):$($_.Line.Trim())" }}`
> - Ran ``$dir=Resolve-Path '.\skills\vision-por-computadora'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $rows=@(); foreach($f in $files){$s=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false)); $rows += [PSCustomObject]@{File=$f.Name; CRLF=([regex]::Matches($s,"`r`n")).Count; BareLF=([regex]::Matches($s,"(?<!`r)`n")).Count; FinalLF=$s.EndsWith("`n")} }; $rows | Format-Table -AutoSize``
> - Ran ``Get-Content -Raw -LiteralPath .\skills\desarrollo-ia\sistemas_generativos\vision_audio_multimodal_reglas.md -Encoding utf8; Write-Output "`n--- adjacent README references ---"; rg -n -i -C 2 "vision|multimodal|ocr|imagen|video" .\skills\desarrollo-ia\README.md .\skills\ciencia-ingenieria-datos\README.md .\skills\fotografias\README.md 2>$null``
>
> </details>
</details>

## 1. Resumen ejecutivo

- Se auditaron **17 artefactos Markdown**: README, base, checklist y **14 módulos temáticos**.
- Skills cargables: **15**; el README es documentación de navegación.
- Salud general: **media-alta**. La cobertura técnica es amplia y las reglas son accionables.
- Principal problema: **routing insuficiente y solapamiento semántico**, no falta de contenido.
- Mayor oportunidad: carga progresiva: base compacta + módulo principal + complementos condicionados + checklist al cierre.
- Optimización posible: **media**, principalmente por compactación de la base y selección más precisa.
- No hay evidencia suficiente para fusionar, dividir, eliminar o deprecar módulos.

Evidencia relevante:

- La base contiene 781 palabras; los módulos contienen entre 240 y 307.
- El dominio completo suma aproximadamente 5.119 palabras.
- Base + módulo + checklist requiere aproximadamente 1.266–1.333 palabras, sin contar README.
- Los archivos actuales están en UTF-8 sin BOM, LF, con nueva línea final y sin espacios finales.
- No existe `AGENTS.md` ni `SKILL.md` local aplicable; `docs/architecture.md` está vacío.
- El estado Git es transicional: los nombres antiguos y `pack-chatgpt/` aparecen eliminados, mientras los nombres descriptivos actuales aparecen no versionados. La auditoría corresponde al working tree actual.

## 2. Inventario funcional

| Skill | Propósito real | USAR CUANDO | NO USAR CUANDO | Estado |
|---|---|---|---|---|
| `instrucciones_base_cv.md` | Rol, límites, estilo, reproducibilidad y criterios transversales | Toda tarea de visión por computadora | Tarea sin componente visual | Útil, pero demasiado amplia |
| `clasificacion_imagenes_deep_learning_reglas.md` | Clasificación, CNN/ViT, transfer learning y fine-tuning | La salida principal sea una o más clases | Se requieran cajas, máscaras o trayectorias | Bien delimitada |
| `deteccion_objetos_reglas.md` | Localización mediante bounding boxes | Se necesiten objetos, clases y coordenadas | Clasificación pura o segmentación densa | Bien delimitada; solapa con video |
| `segmentacion_reglas.md` | Máscaras semánticas, de instancia o panópticas | Se necesite delimitar regiones o formas | Solo se requieran cajas | Bien delimitada |
| `keypoints_pose_estimacion_reglas.md` | Landmarks, pose 2D/3D y pose 6D | Se requieran puntos, articulaciones o coordenadas | Clasificación o detección general | Muy específica |
| `retrieval_visual_metric_learning_reglas.md` | Embeddings, similitud, búsqueda y hashing visual | La tarea sea recuperar, deduplicar o comparar imágenes | Se requiera afirmar identidad factual | Específica; requiere límite con reidentificación |
| `opencv_procesamiento_imagen_reglas.md` | Procesamiento clásico y validaciones OpenCV | Carga, transformación, filtrado o análisis clásico | El problema sea principalmente arquitectura de entrenamiento | Accionable; solapa con OCR/video |
| `ocr_document_ai_reglas.md` | Texto, documentos, formularios, tablas y códigos | Se extraiga texto o estructura documental | Comprensión visual general sin documentos | Específica; requiere frontera con VLM |
| `metricas_cv_reglas.md` | Selección e interpretación de métricas | Se diseñe o revise evaluación | Se implemente solo un pipeline | Valiosa, pero transversal y repetitiva |
| `despliegue_operacion_cv_reglas.md` | Inferencia, exportación, optimización y monitoreo | Se pase de experimento a operación | Selección inicial de modelo sin operación | Valiosa; requiere límites con industrial |
| `captacion_optica_iluminacion_reglas.md` | Cámara, sensor, óptica, iluminación y calibración | El problema dependa de adquisición o calidad de captura | Solo se modifique código posterior | Específica |
| `vision_industrial_robotica_reglas.md` | Requisitos de sistema, inspección, robótica y sectores | Existan tolerancias, línea, robot o criterios operacionales | Benchmark genérico de un modelo | Demasiado amplia |
| `vision_3d_lidar_open3d_reglas.md` | Profundidad, LiDAR, nubes, registro y metrología | Se trabaje con geometría o datos 3D | La tarea sea exclusivamente 2D | Específica; solapa con robótica |
| `video_tracking_movimiento_reglas.md` | Video, asociación temporal, tracking y eventos | Exista dimensión temporal, stream o trayectoria | Se analice una imagen aislada | Específica; solapa con detección |
| `vlm_generativa_datos_sinteticos_reglas.md` | VLM, grounding, generación y datos sintéticos | Se requiera lenguaje-imagen o generación visual | OCR determinista o segmentación tradicional | Valiosa; scope amplio |
| `checklist_codigo_cv.md` | Verificación final de código, datos, evaluación y despliegue | Antes de entregar, ejecutar o revisar | Consulta conceptual inicial | Debe cargarse al cierre |

La separación base y carga específica está documentada en [README.md](./gen-ai-skills/skills/vision-por-computadora/README.md:26).

## 3. Evaluación detallada

Puntuación 1–5. En `Redundancia`, 5 significa redundancia mínima.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base CV | 5 | 3 | 4 | 5 | 3 | 5 | 4 | 2 | MEJORAR |
| Clasificación | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Detección | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Segmentación | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Keypoints/pose | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 5 | MANTENER |
| Retrieval | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| OpenCV | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| OCR/Document AI | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 4 | MEJORAR |
| Métricas | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 2 | RESUMIR |
| Despliegue | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MEJORAR |
| Captación/óptica | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Industrial/robótica | 5 | 3 | 4 | 3 | 3 | 4 | 3 | 3 | MEJORAR |
| Visión 3D | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Video/tracking | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| VLM/generativa | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 4 | MEJORAR |
| Checklist | 5 | 3 | 5 | 5 | 5 | 5 | 4 | 3 | MANTENER |

La base concentra reglas valiosas de veracidad, privacidad, código y reproducibilidad, pero también inventaría contenido que ya aparece en README y módulos ([base](./gen-ai-skills/skills/vision-por-computadora/instrucciones_base_cv.md:20), [README](./gen-ai-skills/skills/vision-por-computadora/README.md:5)).

## 4. Problemas detectados

### Redundancias

No se detectaron duplicados textuales exactos entre bullets. Sí existe repetición semántica de:

- validación de formatos, dimensiones y canales;
- leakage por cámara, persona, documento, escena o video;
- prueba de humo;
- análisis de errores;
- métricas por tarea;
- privacidad y trazabilidad;
- preprocesamiento, postprocesamiento y operación.

La repetición es necesaria cuando expresa una excepción específica, pero no cuando repite una regla transversal.

### Solapamientos

1. **Detección ↔ video/tracking**
   Detección por frame versus asociación temporal, reidentificación y trayectorias.

2. **Captación ↔ visión industrial**
   Cámara, lente, iluminación y condiciones de producción aparecen en ambos ([captación](./gen-ai-skills/skills/vision-por-computadora/captacion_optica_iluminacion_reglas.md:5), [industrial](./gen-ai-skills/skills/vision-por-computadora/vision_industrial_robotica_reglas.md:5)).

3. **Visión 3D ↔ industrial/robótica**
   Bin picking, pose 6D, calibración mano-ojo y metrología aparecen en ambos.

4. **OCR ↔ OpenCV**
   El primero necesita preprocesamiento documental; el segundo contiene procesamiento y lectura de imágenes.

5. **OCR ↔ VLM**
   OCR visual con VLM no debe confundirse con extracción documental determinista ([OCR](./gen-ai-skills/skills/vision-por-computadora/ocr_document_ai_reglas.md:5), [VLM](./gen-ai-skills/skills/vision-por-computadora/vlm_generativa_datos_sinteticos_reglas.md:5)).

6. **Retrieval ↔ video/tracking**
   `reidentificación` aparece en ambos, pero con objetivos distintos.

7. **Métricas ↔ todos los módulos**
   Debe funcionar como complemento evaluativo, no como contenido obligatorio repetido.

### Exceso de contexto

- La base de 781 palabras es grande para una instrucción obligatoria.
- `Cobertura principal` repite el mapa del README y los nombres de los módulos.
- La referencia “Chile/LatAm y 2026” no cambia claramente el procedimiento.
- El README enumera archivos, pero no define módulo principal, complementos ni prioridad.
- Cargar todos los módulos suma aproximadamente 5.119 palabras y no favorece activación selectiva.

### Ambigüedad

Los módulos usan `Aplicar cuando`, mientras otros dominios refactorizados usan `USAR CUANDO` y `NO USAR CUANDO`. Falta una convención única.

También faltan reglas para casos como:

- detección + tracking;
- OCR + VLM;
- 3D + robótica;
- industrial + despliegue;
- captura + modelo.

### Fragmentación

No hay sobrefragmentación demostrada: 14 módulos temáticos son razonables. La fragmentación problemática es de activación, no de cantidad.

### Problemas arquitectónicos

- Falta una matriz tarea → skill principal → complementos.
- No existe matriz de propiedad de reglas.
- La base mezcla routing, estilo, seguridad, código, datos y cobertura enciclopédica.
- `vision_industrial_robotica_reglas.md` agrupa demasiados sectores y casos de uso.
- El dominio vecino `desarrollo-ia/sistemas_generativos/vision_audio_multimodal_reglas.md` y `ciencia-ingenieria-datos/nlp_vision_audiovisual_reglas.md` contienen reglas multimodales generales. Esto no exige fusionar, pero sí aclarar que visión por computadora posee profundidad técnica visual y los dominios vecinos poseen cobertura transversal.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Todos | Complementaria con duplicación | Alta | Compactar y conservar solo invariantes |
| Detección | Video/tracking | Parcialmente redundante y dependiente | Alta | Separar frame-level de temporal |
| Captación | Industrial | Parcialmente redundante | Alta | Captación posee adquisición; industrial posee aceptación y proceso |
| 3D | Industrial | Parcialmente redundante | Media-alta | 3D posee geometría; industrial posee aplicación |
| OCR | OpenCV | Complementarias | Media | OCR debe poseer extracción; OpenCV, procesamiento genérico |
| OCR | VLM | Parcialmente redundantes | Media | Determinista/documental versus razonamiento multimodal |
| Retrieval | Video/tracking | Parcialmente redundantes | Alta | Similaridad/índice versus identidad temporal |
| Keypoints | 3D | Complementarias | Media | 2D/pose versus sensor y geometría 3D |
| Métricas | Todos | Dependiente y transversal | Alta | Cargar solo para diseñar o revisar evaluación |
| Despliegue | Industrial | Parcialmente redundantes | Media | Serving/modelo versus operación del sistema |
| OpenCV | Video | Parcialmente redundantes | Media | Imagen/frame versus temporal/stream |
| Base | Checklist | Complementarias | Baja | Checklist solo al cierre |

## 6. Propuesta de arquitectura objetivo

```text
Estructura actual

vision-por-computadora/
├── README.md
├── instrucciones_base_cv.md
├── 14 módulos temáticos
└── checklist_codigo_cv.md
```

```text
Estructura propuesta

vision-por-computadora/
├── README.md                    # routing y mapa
├── instrucciones_base_cv.md     # base compacta y obligatoria
├── 14 módulos temáticos         # carga selectiva
├── metricas_cv_reglas.md        # complemento evaluativo
├── checklist_codigo_cv.md       # cierre/revisión
└── matriz_propiedad_reglas.md   # mantenimiento; no cargar por defecto
```

Responsabilidades:

- `README.md`: decidir skill principal y complementos.
- `instrucciones_base_cv.md`: rol, límites, veracidad, privacidad, formato y routing mínimo.
- Módulos principales: conocimiento y procedimiento específico.
- `metricas_cv_reglas.md`: selección evaluativa, cargada condicionalmente.
- `checklist_codigo_cv.md`: verificación final, no contexto obligatorio.
- `matriz_propiedad_reglas.md`: dueño único de reglas transversales.

No recomiendo crear otra base operativa todavía: podría aumentar la fragmentación. Tampoco recomiendo fusionar o dividir módulos antes de una validación funcional.

## 7. Acciones recomendadas

### P0 — Críticas

No se identificaron problemas críticos demostrados.

### P1 — Alto impacto

1. Formalizar en README la carga progresiva:

   - base siempre;
   - una skill principal;
   - complementos solo por dependencia concreta;
   - métricas cuando se evalúe;
   - checklist al cierre.

2. Añadir routing explícito por tarea.

3. Definir límites entre:

   - detección y tracking;
   - captación e industrial;
   - 3D y robótica;
   - OCR, OpenCV y VLM;
   - retrieval y reidentificación.

4. Crear una matriz de propiedad de reglas para leakage, privacidad, validación, métricas, humo, trazabilidad y operación.

### P2 — Optimización

1. Compactar la base eliminando inventario repetido.
2. Resumir `metricas_cv_reglas.md` y mantenerlo como complemento.
3. Estandarizar encabezados `USAR CUANDO` y `NO USAR CUANDO`.
4. Reducir listas de modelos cuando no cambien la decisión.
5. Mantener la normalización actual, que ya cumple UTF-8/LF.

### P3 — Opcional

- Evaluar si el módulo industrial requiere separación futura.
- Añadir ejemplos solo si una evaluación funcional demuestra beneficio.
- Medir activación correcta y calidad con tareas representativas.

## 8. Estimación de impacto

Estimaciones cualitativas, no resultados experimentales.

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Routing explícito en README | ↓↓ | ↑↑ | ↑↑ | Bajo |
| Compactar la base | ↓↓ | =/↑ | ↑ | Medio |
| Resumir métricas | ↓ | =/↑ | ↑ | Medio |
| Matriz de propiedad | = | ↑ | ↑↑ | Bajo |
| Delimitar detección/tracking | = | ↑↑ | ↑ | Bajo |
| Delimitar OCR/OpenCV/VLM | = | ↑↑ | ↑ | Medio |
| Cargar checklist solo al cierre | ↓↓ | =/↑ | ↑ | Bajo |
| Validación funcional con LLM | ↑ temporal | ↑↑ evidencia | ↑ | Bajo |

No es válido afirmar un porcentaje de ahorro ni preservación de calidad sin tokenizer, tareas, cohortes y evaluación antes/después.

## 9. Skills candidatas a modificación

### Mantener intactas

- `keypoints_pose_estimacion_reglas.md`
- `checklist_codigo_cv.md`

### Compactar

- `instrucciones_base_cv.md`
- `metricas_cv_reglas.md`

### Mejorar

- `ocr_document_ai_reglas.md`
- `despliegue_operacion_cv_reglas.md`
- `vision_industrial_robotica_reglas.md`
- `vlm_generativa_datos_sinteticos_reglas.md`

### Mantener con cambios menores

- `clasificacion_imagenes_deep_learning_reglas.md`
- `deteccion_objetos_reglas.md`
- `segmentacion_reglas.md`
- `retrieval_visual_metric_learning_reglas.md`
- `opencv_procesamiento_imagen_reglas.md`
- `captacion_optica_iluminacion_reglas.md`
- `vision_3d_lidar_open3d_reglas.md`
- `video_tracking_movimiento_reglas.md`

### Fusionar

Ninguna.

### Dividir

Ninguna por ahora.

### Reubicar

Ninguna.

### Deprecar o eliminar

Ninguna.

## 10. Plan de refactorización

1. Congelar inventario y estado Git actual.
2. Construir matriz de propiedad sin modificar reglas.
3. Añadir routing al README.
4. Estandarizar `USAR CUANDO` y `NO USAR CUANDO`.
5. Delimitar solapamientos principales.
6. Compactar la base.
7. Resumir y hacer opcional la skill de métricas.
8. Revisar el módulo industrial sin dividirlo todavía.
9. Ejecutar validación estática de archivos, encabezados, activadores, enlaces y formato.
10. Ejecutar evaluación funcional con tareas representativas.
11. Medir contexto usado, activación correcta, omisiones, errores y calidad.
12. Decidir posteriormente si algún módulo debe mantenerse, dividirse o fusionarse.

## Conclusión

1. El dominio tiene buena cobertura y utilidad técnica.
2. La mayor ineficiencia es el routing débil y la repetición transversal.
3. La mejor oportunidad es carga progresiva con propiedad clara de reglas.
4. Recomiendo refactorizar ahora, de forma conservadora.
5. La acción con mejor relación calidad/contexto es compactar la base y formalizar el README.
6. No recomiendo eliminar ni fusionar módulos en esta etapa.
