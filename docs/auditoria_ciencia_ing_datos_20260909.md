# Audita skills de ciencia de datos

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/0dd2cecb-d22f-4ab0-953a-ce5b0f2642fe/pasted-text.txt`

<details><summary>6 previous messages</summary>

> Voy a leer el texto adjunto y reconstruir el alcance exacto antes de tocar el repositorio. También revisaré el contexto previo de este proyecto para respetar decisiones y cambios existentes; por ahora mantendré la revisión en modo diagnóstico hasta identificar la acción solicitada.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/0dd2cecb-d22f-4ab0-953a-ce5b0f2642fe/pasted-text.txt`
>
> </details>
>
> - Ran `rg -n -i "ciencia-ingenieria-datos|auditoría|auditoria|módulo|module|matriz_propiedad|carga progresiva" 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> - Ran `Get-Content 'C:\Users\xbash\.codex\memories\MEMORY.md' | Select-Object -First 85`
>
> </details>
>
> El alcance quedó claro: es una auditoría estática y funcional-documental del dominio `ciencia-ingenieria-datos`, sin editar archivos. El contexto previo confirma que este checkout usa carga progresiva y que debo preservar la estructura canónica; ahora verificaré la raíz efectiva, el estado Git y el inventario completo antes de evaluar.
>
> <details><summary>Explored 2 files, ran 11 commands</summary>
>
> - Ran `git -C 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' -c core.excludesFile=.git/info/exclude status --short --branch`
>
> - Ran `Get-ChildItem -Force 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' | Select-Object Mode,Length,Name | Format-Table -AutoSize`
>
> - Ran `rg --files 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos' | Sort-Object`
>
> - Ran `rg --files -g 'AGENTS.md' -g 'README*' -g '*CONTEXT*' -g '*DECISION*' -g '*HANDOFF*' -g '*.md' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' | Sort-Object | Select-Object -First 120`
>
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos'; Get-ChildItem -File $p | Sort-Object Name | Select-Object Name,Length,@{N='Lines';E={(Get-Content -LiteralPath $_.FullName).Count}} | Format-Table -AutoSize`
>
> <details><summary>Explored a file</summary>
>
> - Read `./gen-ai-skills/skills/ciencia-ingenieria-datos/README.md`
>
> </details>
>
> - Ran `Get-Content -Raw 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\architecture.md'; Get-Content -Raw 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\CONTEXT.md'; Get-Content -Raw 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\HANDOFF.md'`
>
> <details><summary>Explored a file</summary>
>
> - Read `./gen-ai-skills/prompts/diseño_racionalizacion_de_skills_por_dominio.md`
>
> </details>
>
> - Ran ``$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos'; Get-ChildItem -File $p | Where-Object Name -ne 'README.md' | Sort-Object Name | ForEach-Object { "`n===== $($_.Name) ====="; [System.IO.File]::ReadAllText($_.FullName) }``
>
> - Ran `git -C 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' -c core.excludesFile=.git/info/exclude status --short -- 'skills/ciencia-ingenieria-datos' 'docs/CONTEXT.md' 'docs/HANDOFF.md'`
>
> - Ran `Get-ChildItem -Force 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' -Filter AGENTS.md -Recurse | Select-Object -ExpandProperty FullName; Get-ChildItem -Force 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\.agents' -Recurse -File | Select-Object -ExpandProperty FullName | Select-Object -First 80`
>
> - Ran `git -C 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' ls-tree -r --name-only HEAD -- 'skills/ciencia-ingenieria-datos'`
>
> - Ran `Get-Content -Raw 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\DECISIONES_TECNICAS.md'; Get-Content -Raw 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\README.md'`
>
> </details>
>
> La inspección confirma 14 documentos operativos y un `README.md`; el árbol actual no contiene `pack-chatgpt/`, coherente con la decisión registrada. Hay evidencia de un working tree deliberadamente no limpio (las versiones antiguas aparecen eliminadas y las nuevas como no versionadas), así que no interpretaré ese estado como defecto del dominio ni haré ninguna limpieza. Ahora cerraré los controles estructurales y la comparación de contenido para separar hechos de inferencias.
>
> <details><summary>Ran 16 commands</summary>
>
> - Ran ``$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos'; $files=Get-ChildItem -File $p | Sort-Object Name; $totalWords=0; $totalChars=0; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $crlf=([Text.Encoding]::UTF8.GetString($b)).Contains("`r`n"); $text=[IO.File]::ReadAllText($f.FullName); $trailing=($text -split "`n" | Where-Object {$_ -match '[ \t]+$'}).Count; $final=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); $words=([regex]::Matches($text,'\S+')).Count; $totalWords += $words; $totalChars += $text.Length; [pscustomobject]@{Name=$f.Name;Bytes=$b.Length;Words=$words;BOM=$bom;CRLF=$crlf;FinalLF=$final;TrailingLines=$trailing} } | Format-Table -AutoSize; "TOTAL_FILES=$($files.Count) TOTAL_WORDS=$totalWords TOTAL_CHARS=$totalChars"``
> - Ran `rg -n --glob '*.md' '(?i)(instrucciones_base_cied|reglas_transversales_cied|checklist_ciencia_ingenieria_datos|analisis_estadistico_modelamiento|bases_datos_almacenamiento|big_data_sistemas|etica_privacidad|fundamentos_matematicos|metodologia_experimentos|mineria_analitica|ml_dl_ia|nlp_vision|programacion_algoritmos|visualizacion_comunicacion|pack-chatgpt|SKILL\.md)' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos'`
> - Ran `rg -n --glob '*.md' '(?i)(ciencia-ingenieria-datos|desarrollo-ia|instrucciones_base_cied|reglas_transversales_cied|checklist_ciencia)' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\README.md' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\prompts'`
> - Ran `rg -n --glob '*.md' '(?i)(usar cuando|no usar cuando|validacion minima|dependencias|reglas|alcance)' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos' | Measure-Object | Select-Object -ExpandProperty Count`
> - Ran ``$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos'; $rows=@(); $totalWords=0; $totalChars=0; $files=Get-ChildItem -File $p | Sort-Object Name; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $text=[Text.Encoding]::UTF8.GetString($b); $crlf=$text.Contains("`r`n"); $trailing=($text -split "`n" | Where-Object {$_ -match '[ \t]+$'}).Count; $final=($b.Length -gt 0 -and $b[$b.Length-1] -eq 10); $words=([regex]::Matches($text,'\S+')).Count; $totalWords += $words; $totalChars += $text.Length; $rows += [pscustomobject]@{Name=$f.Name;Bytes=$b.Length;Words=$words;BOM=$bom;CRLF=$crlf;FinalLF=$final;TrailingLines=$trailing} }; $rows | Format-Table -AutoSize; "TOTAL_FILES=$($files.Count) TOTAL_WORDS=$totalWords TOTAL_CHARS=$totalChars"``
> - Ran `Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\README.md'`
> - Ran `Get-ChildItem -File -Recurse 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia' | Where-Object { $_.Name -match '(instrucciones_base_ia|reglas_transversales_ia|llm|rag|agentes|vision_audio|mlops|serving|datos_experimentos|testing|evaluacion)' } | Select-Object -ExpandProperty FullName`
> - Ran `rg -n -i '(desarrollo-ia|vision-por-computadora|ingenieria-software|operaciones-tecnologia|medicina|derecho)' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos\*.md'`
> - Ran `rg -n -i '(ciencia|datos|pipeline|estad|forecast|nlp|vision|multimodal|embedding|mlops|serving|reproduc|privacidad|gobernanza|modelo)' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\README.md'`
> - Ran `Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\base\instrucciones_base_ia.md'; Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\base\reglas_transversales_ia.md'`
> - Ran `Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\sistemas_generativos\nlp_embeddings_genai_reglas.md'; Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\sistemas_generativos\vision_audio_multimodal_reglas.md'`
> - Ran `Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\ciclo_de_vida\datos_experimentos_reglas.md'; Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\ciclo_de_vida\mlops_despliegue_ia.md'`
> - Ran `Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\ciclo_de_vida\testing_evaluacion_sistemas_ia_reglas.md'; Get-Content -Raw -Encoding utf8 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\desarrollo-ia\seguridad\gobernanza_uso_responsable_ia_reglas.md'`
> - Ran `$root='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $dirs=@($root,$root+'\skills\ciencia-ingenieria-datos'); foreach($d in $dirs){Write-Output "[$d]"; Get-ChildItem -Force -LiteralPath $d -Filter 'AGENTS.md' | Select-Object -ExpandProperty FullName}; Write-Output '[all AGENTS]'; Get-ChildItem -LiteralPath $root -Recurse -Force -Filter AGENTS.md -ErrorAction SilentlyContinue | Select-Object -ExpandProperty FullName`
> - Ran `rg -n --glob '*.md' '^(## (Alcance|Usar cuando|Reglas|Validacion minima|Dependencias|Seleccion de modulos|Formato recomendado|No usar cuando)|- No |- Define |- Valida |- Usa |- Registra |- Considera |- Evita |- En )' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos' | Select-Object -First 220`
> - Ran `rg -n -i 'EDA|A/B|experimenta|inferencia|forecast|pronost|embeddings|retrieval|data quality|contratos|linaje|privacidad|gobernanza|orquest|MLOps|serving|SQL|NoSQL' 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\ciencia-ingenieria-datos' | Select-Object -First 260`
>
> </details>
</details>

# Auditoría de `ciencia-ingenieria-datos`

## 1. Resumen ejecutivo

Se encontraron 15 archivos Markdown:

- 14 documentos operativos: base, reglas transversales, 11 módulos temáticos y checklist.
- 1 `README.md` de navegación.

El dominio está bien modularizado y no presenta sobrefragmentación grave. Su principal problema es la redundancia entre reglas transversales, base, checklist y algunos módulos especializados.

La arquitectura actual favorece la carga selectiva, pero la activación resulta ambigua en tareas mixtas como EDA/pipelines, A/B testing, forecasting y embeddings/retrieval.

El contenido operativo suma aproximadamente 3.593 palabras, sin contar el README. No se midieron tokens reales ni comportamiento de un LLM.

Estado estructural verificado: UTF-8 sin BOM, LF, nueva línea final y sin espacios finales. No se modificaron archivos.

## 2. Inventario funcional

| Archivo | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| `instrucciones_base_cied.md` | Rol, alcance, rigor, estilo y contrato de carga | Toda tarea del dominio | Útil, pero extensa |
| `reglas_transversales_cied.md` | Invariantes de calidad, leakage, reproducibilidad y privacidad | Junto con base y módulo principal | Útil, con duplicación |
| `fundamentos_matematicos_estadisticos_reglas.md` | Supuestos, fórmulas, incertidumbre, simulación y optimización | Se requiere justificación matemática o cuantificación de incertidumbre | Bien delimitada |
| `programacion_algoritmos_software_reglas.md` | Código, notebooks, algoritmos, pruebas y empaquetado | Se revisa o construye software para datos | Bien delimitada |
| `bases_datos_almacenamiento_recuperacion_reglas.md` | Modelamiento, SQL/NoSQL, almacenamiento y búsqueda | Se decide cómo almacenar, consultar o recuperar datos | Requiere límites más claros con pipelines |
| `analisis_estadistico_modelamiento_reglas.md` | EDA, regresión, series temporales, causalidad y A/B | Se analiza, explica, pronostica o estima | Solapamiento relevante |
| `ml_dl_ia_reglas.md` | Selección, entrenamiento y evaluación de modelos | Se construye o compara ML/DL/embeddings | Solapamiento con NLP y desarrollo-ia |
| `big_data_sistemas_distribuidos_reglas.md` | Batch, streaming, paralelismo y escalabilidad | El volumen, latencia o resiliencia exige distribución | Bien delimitada |
| `mineria_analitica_pipeline_reglas.md` | Limpieza, ETL/ELT, calidad, contratos y data products | Se transforma u opera datos recurrentemente | Solapamiento con análisis y bases |
| `nlp_vision_audiovisual_reglas.md` | Validaciones específicas de texto, documentos, imagen, audio y video | La modalidad cambia adquisición, extracción o evaluación | Útil, pero amplia |
| `visualizacion_comunicacion_datos_reglas.md` | Gráficos, dashboards, KPI y comunicación | El resultado debe apoyar una decisión o comunicar evidencia | Bien delimitada |
| `metodologia_experimentos_reproducibilidad_reglas.md` | Protocolo, comparación, reproducibilidad y auditoría | Se ejecuta o audita un experimento o benchmark | Solapamiento con análisis y ML |
| `etica_privacidad_gobernanza_datos_reglas.md` | Privacidad, linaje, acceso, sesgos y uso responsable | Hay datos sensibles, decisiones automatizadas o requisitos de gobernanza | Útil, con frontera legal/seguridad |
| `checklist_ciencia_ingenieria_datos.md` | Verificación final de análisis, pipelines y modelos | Al cierre o durante una auditoría | Debe permanecer fuera del contexto normal |

Evidencia principal: [`README.md`](./gen-ai-skills/skills/ciencia-ingenieria-datos/README.md:12), [`instrucciones_base_cied.md`](./gen-ai-skills/skills/ciencia-ingenieria-datos/instrucciones_base_cied.md:8).

## 3. Evaluación detallada

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 3 | 4 | 5 | 3 | 5 | 4 | 3 | **RESUMIR** |
| Transversal | 5 | 4 | 5 | 5 | 4 | 5 | 4 | 3 | **MEJORAR** |
| Fundamentos | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | **MANTENER_CON_CAMBIOS_MENORES** |
| Programación | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | **MANTENER** |
| Bases de datos | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | **MANTENER_CON_CAMBIOS_MENORES** |
| Análisis estadístico | 5 | 4 | 4 | 5 | 3 | 4 | 4 | 3 | **MEJORAR** |
| ML/DL/IA | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 3 | **MEJORAR** |
| Big data | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | **MANTENER_CON_CAMBIOS_MENORES** |
| Minería/pipelines | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 3 | **MEJORAR** |
| NLP/visión/audio | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 3 | **MEJORAR** |
| Visualización | 4 | 4 | 4 | 5 | 4 | 4 | 4 | 4 | **MANTENER** |
| Metodología | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 3 | **MEJORAR** |
| Ética/gobernanza | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | **MANTENER_CON_CAMBIOS_MENORES** |
| Checklist | 5 | 4 | 5 | 5 | 4 | 5 | 4 | 3 | **MANTENER_CON_CAMBIOS_MENORES** |

## 4. Problemas detectados

### Redundancias

- `instrucciones_base_cied.md`, `reglas_transversales_cied.md` y el checklist repiten calidad, leakage, reproducibilidad, privacidad e incertidumbre.
- `README.md` y la base repiten cobertura, selección y descripción de módulos.
- EDA aparece en análisis estadístico y minería/pipelines.
- A/B testing aparece en análisis estadístico y metodología.
- Embeddings y retrieval aparecen en ML, NLP y bases de datos.

### Solapamientos

- `analisis_estadistico_modelamiento_reglas.md` ↔ `metodologia_experimentos_reproducibilidad_reglas.md`.
- `mineria_analitica_pipeline_reglas.md` ↔ `bases_datos_almacenamiento_recuperacion_reglas.md`.
- `mineria_analitica_pipeline_reglas.md` ↔ `big_data_sistemas_distribuidos_reglas.md`.
- `ml_dl_ia_reglas.md` ↔ `nlp_vision_audiovisual_reglas.md`.
- El dominio completo ↔ `desarrollo-ia` en ML, embeddings, multimodalidad, serving y experimentación.

### Exceso de contexto

- La base es el archivo operativo más largo y se carga siempre.
- Sus secciones “Objetivo” y “Cobertura técnica” funcionan parcialmente como inventario del README.
- Las listas de tecnologías son útiles como orientación, pero no siempre cambian el comportamiento del agente.

### Ambigüedad

Casos actualmente difíciles de enrutar inequívocamente:

- EDA descriptivo: análisis estadístico o minería/pipeline.
- Forecasting: análisis estadístico, ML o `desarrollo-ia`.
- A/B testing: análisis estadístico o metodología.
- Embeddings para búsqueda: NLP, ML o bases de datos.
- OCR/VLM: este dominio o `desarrollo-ia`.
- Serving de datos versus serving de modelos.

### Problemas arquitectónicos

- El contrato de carga no es totalmente uniforme: el README dice “normalmente” cargar reglas transversales, mientras la base indica cargarlas.
- No existe una matriz explícita de módulos complementarios.
- No se declara formalmente un propietario único para reglas duplicadas.
- No se ha realizado todavía validación funcional con un LLM ni medición de tokens.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Transversal | Parcialmente redundantes | Media | Base conserva rol/estilo; transversal conserva invariantes |
| Transversal | Checklist | Complementarias con repetición | Media | Checklist solo verifica; no introducir reglas nuevas |
| Fundamentos | Análisis | Parcialmente redundantes | Media | Fundamentos: formalización; análisis: aplicación |
| Análisis | Metodología | Altamente solapadas | Alta | Metodología debe ser dueña del protocolo experimental |
| Análisis | Minería | Parcialmente redundantes | Media | Análisis: pregunta/modelo; minería: transformación/pipeline |
| Bases | Minería | Complementarias | Media | Bases: persistencia/consulta; minería: transformación |
| Minería | Big data | Complementarias | Media | Minería: workflow de datos; Big data: escala y distribución |
| ML/DL | NLP/visión/audio | Complementarias | Media | ML: ciclo del modelo; multimodal: validación por modalidad |
| Bases | NLP/visión/audio | Parcialmente redundantes | Media | Bases: índice/recuperación; multimodal: datos y evaluación |
| ML/DL | Metodología | Dependientes | Media | ML define modelo; metodología define comparación y evidencia |
| Ética | Checklist | Complementarias | Baja | Ética define controles; checklist verifica cierre |
| CIED | Desarrollo-IA | Frontera entre dominios | Alta | CIED debe ser principal para datos; desarrollo-ia para sistemas de IA |

## 6. Propuesta de arquitectura objetivo

No recomiendo cambiar todavía la estructura física ni crear `SKILL.md`. La estructura actual es compatible con la convención del repositorio.

```text
estructura actual
    skills/ciencia-ingenieria-datos/
    ├── README.md
    ├── instrucciones_base_cied.md
    ├── reglas_transversales_cied.md
    ├── 11 módulos temáticos
    └── checklist_ciencia_ingenieria_datos.md
             ↓
estructura objetivo
    misma estructura física
    ├── README.md                 # navegación y routing
    ├── instrucciones_base_cied.md # rol, estilo y límites
    ├── reglas_transversales_cied.md # invariantes únicas
    ├── módulos temáticos          # capacidades especializadas
    └── checklist_*.md             # verificación de cierre
```

Contrato recomendado:

```text
base
  + reglas_transversales
  + exactamente un módulo principal
  + complementos solo por dependencia explícita
  + checklist únicamente al cierre
```

El README debería incorporar una matriz breve de combinaciones frecuentes:

- Forecasting: análisis estadístico + metodología; ML solo si se entrena/compara un modelo.
- Pipeline con Spark: minería/pipelines + big data.
- Búsqueda semántica: NLP/multimodal + bases de datos; ML solo si se entrena o evalúa un modelo.
- Modelo con datos sensibles: módulo técnico + ética/gobernanza.
- Aplicación LLM/RAG/agente: `desarrollo-ia` principal + CIED como apoyo de datos.

## 7. Acciones recomendadas

### P0 — Críticas

1. Unificar el contrato de carga: base + transversal + un módulo principal.
2. Definir reglas de desempate para EDA, forecasting, A/B testing, embeddings y tareas multimodales.
3. Declarar que metodología posee el protocolo experimental, mientras análisis posee la interpretación estadística aplicada.

### P1 — Alto impacto

1. Reducir la base a rol, límites, estilo, selección y rigor esencial.
2. Establecer propiedad de reglas:
   - base: rol, estilo y formato;
   - transversal: invariantes;
   - análisis: inferencia, causalidad y pronóstico aplicado;
   - metodología: diseño experimental y reproducibilidad;
   - minería: transformaciones y contratos;
   - ML: ciclo de modelos;
   - NLP/visión/audio: riesgos específicos de modalidad.
3. Aclarar límites con `desarrollo-ia`, `ingenieria-software` y `operaciones-tecnologia`.

### P2 — Optimización

1. Eliminar de la base contenido que ya está en README.
2. Reducir repeticiones de leakage, baseline, privacidad y reproducibilidad.
3. Mantener los nombres de tecnologías solamente cuando activen una decisión concreta.

### P3 — Opcional

1. Crear una matriz de propiedad de reglas como documentación de mantenimiento.
2. Añadir una validación automática de:
   - contrato de carga;
   - referencias internas;
   - presencia de `Usar cuando`;
   - UTF-8/LF;
   - ausencia de referencias obsoletas.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Resumir la base | ↓↓ | = o ↑ | ↑ | Medio |
| Clarificar routing | = | ↑↑ | ↑↑ | Bajo |
| Asignar propiedad de reglas | ↓ | ↑ | ↑↑ | Medio |
| Separar análisis y metodología | ↓ | ↑ | ↑↑ | Medio |
| Reducir duplicación entre README y base | ↓ | = | ↑ | Bajo |
| Aclarar frontera con desarrollo-ia | = | ↑ | ↑ | Bajo |
| Fusionar módulos físicamente ahora | ↓ | Incierta | Incierta | Alto |

No es posible afirmar un ahorro de tokens sin medir con el tokenizer y comparar tareas equivalentes.

## 9. Skills candidatas a modificación

### Mantener intactas

- `programacion_algoritmos_software_reglas.md`
- `visualizacion_comunicacion_datos_reglas.md`

### Compactar

- `instrucciones_base_cied.md`

### Mejorar

- `reglas_transversales_cied.md`
- `analisis_estadistico_modelamiento_reglas.md`
- `mineria_analitica_pipeline_reglas.md`
- `ml_dl_ia_reglas.md`
- `nlp_vision_audiovisual_reglas.md`
- `metodologia_experimentos_reproducibilidad_reglas.md`

### Mantener con cambios menores

- `fundamentos_matematicos_estadisticos_reglas.md`
- `bases_datos_almacenamiento_recuperacion_reglas.md`
- `big_data_sistemas_distribuidos_reglas.md`
- `etica_privacidad_gobernanza_datos_reglas.md`
- `checklist_ciencia_ingenieria_datos.md`

### Fusionar, dividir, reubicar o eliminar

No hay evidencia suficiente para fusionar, dividir, reubicar o eliminar módulos. La recomendación conservadora es resolver primero la propiedad de reglas y evaluar posteriormente con casos funcionales.

## 10. Plan de refactorización

1. Conservar el estado actual y registrar el diagnóstico sin limpiar ni modificar el working tree.
2. Ajustar primero README, base y reglas transversales.
3. Definir la matriz de routing y los límites entre módulos.
4. Revisar solamente las reglas duplicadas de análisis, metodología, minería, ML y multimodalidad.
5. Ejecutar validaciones estáticas de estructura, referencias, codificación y finales de línea.
6. Probar casos representativos con un LLM:
   - EDA;
   - forecasting;
   - A/B testing;
   - pipeline con Spark;
   - búsqueda semántica;
   - modelo con datos sensibles;
   - OCR/VLM;
   - evaluación reproducible.
7. Medir archivos cargados, palabras/tokens, omisiones, correcciones y calidad.
8. Considerar fusiones o eliminaciones únicamente si la evidencia funcional demuestra redundancia.

### Conclusión

El dominio presenta una salud general buena y cobertura profesional razonable.
La mayor ineficiencia está en reglas repetidas entre base, transversal, checklist y módulos.
La mayor oportunidad es mejorar el routing y reducir la base siempre cargada.
Sí recomendaría refactorizar, pero primero de forma conservadora y sin fusionar archivos.
La mejor relación calidad/contexto provendría de compactar la base y formalizar la propiedad de cada regla.
