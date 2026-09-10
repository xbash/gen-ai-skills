# Audita skills de investigacion-ia

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/925240e5-9602-4dd7-a2d7-a0b6de97e1b4/pasted-text.txt`

<details><summary>6 previous messages</summary>

> Voy a leer el texto adjunto y revisar brevemente el contexto previo relevante del repositorio antes de actuar. Luego confirmaré el alcance exacto y haré solo los cambios que la solicitud autorice.
>
> <details><summary>Explored a file, ran a command</summary>
>
> - Ran `rg -n -i "skill|instruction|refactor|carga progresiva|AGENTS|gen-ai-skills|benchmark" 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/925240e5-9602-4dd7-a2d7-a0b6de97e1b4/pasted-text.txt`
>
> </details>
>
> </details>
>
> El adjunto solicita un diagnóstico previo, sin modificar archivos. La memoria confirma que este dominio ya tuvo un refactor conservador reciente; verificaré el estado actual del checkout y contrastaré la auditoría con ese antecedente, sin asumir que el estado histórico siga vigente.
>
> <details><summary>Ran 5 commands</summary>
>
> - Ran `$repo = 'C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- ROOT ---'; Get-ChildItem -Force $repo | Select-Object Mode,Length,LastWriteTime,Name; Write-Output '--- GIT ---'; git status --short --branch; Write-Output '--- FILES ---'; rg --files $repo | Sort-Object; Write-Output '--- AGENTS ---'; $agents = @('C:\rutinas-local\gen-ai-skills\AGENTS.md', 'C:\rutinas-local\gen-ai-skills\gen-ai-skills\AGENTS.md'); foreach ($p in $agents) { if (Test-Path -LiteralPath $p) { Write-Output "### $p"; Get-Content -Raw -LiteralPath $p } }`
> - Ran `$repo = 'C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Set-Location $repo; Write-Output '--- GIT ---'; git status --short --branch; Write-Output '--- PROJECT DOC REFERENCES ---'; rg -n -i "investigacion-ia|carga progresiva|matriz_propiedad|auditoria|refactor" README.md docs CONTRIBUTING.md prompts .agents .codex 2>$null; Write-Output '--- ARCHITECTURE ---'; Get-Content -Encoding utf8 -Raw docs\architecture.md; Write-Output '--- HANDOFF ---'; Get-Content -Encoding utf8 -Raw docs\HANDOFF.md; Write-Output '--- DOMAIN FILES ---'; Get-ChildItem -File skills\investigacion-ia | Sort-Object Name | Select-Object Name,Length,LastWriteTime`
> - Ran ``$d='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\investigacion-ia'; Get-ChildItem -File $d | Sort-Object Name | ForEach-Object { Write-Output "`n===== $($_.Name) ====="; $i=0; Get-Content -Encoding utf8 -LiteralPath $_.FullName | ForEach-Object { $i++; '{0,4}: {1}' -f $i,$_ } }``
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Set-Location $repo; Write-Output '--- CONTEXT ---'; Get-Content -Encoding utf8 -Raw docs\CONTEXT.md; Write-Output '--- DECISIONS ---'; Get-Content -Encoding utf8 -Raw docs\DECISIONS.md; Write-Output '--- DECISIONES_TECNICAS (matching) ---'; rg -n -i -C 3 "investigacion-ia|carga progresiva|propiedad|reglas|validacion funcional|tokens|contexto" docs\DECISIONES_TECNICAS.md docs\PENDIENTES.md docs\BITACORA_CODEX.md; Write-Output '--- MEMORY RELEVANT LINES ---'; $m='C:\Users\xbash\.codex\memories\MEMORY.md'; $i=0; Get-Content -Encoding utf8 -LiteralPath $m | ForEach-Object { $i++; if($i -ge 1 -and $i -le 35) { '{0}:{1}' -f $i,$_ } }; Write-Output '--- ROLLOUT RELEVANT ---'; $p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T05-14-03-GBzq-refactor_investigacion_ia_carga_progresiva.md'; if(Test-Path -LiteralPath $p){Get-Content -Encoding utf8 -Raw -LiteralPath $p}`
> - Ran `$p='C:\Users\xbash\.codex\attachments\925240e5-9602-4dd7-a2d7-a0b6de97e1b4\pasted-text.txt'; $i=0; Get-Content -Encoding utf8 -LiteralPath $p | ForEach-Object { $i++; '{0}:{1}' -f $i,$_ } | Select-Object -Last 60`
>
> </details>
>
> La auditoría ya tiene el inventario completo: 12 archivos actuales (10 módulos operativos, base y checklist, README y matriz de propiedad según la clasificación arquitectónica). El checkout está deliberadamente sucio: las versiones descriptivas aparecen como no seguidas y las antiguas numeradas como eliminadas; no tocaré ese estado. Haré ahora verificaciones estáticas de referencias, formato y carga para fundamentar el diagnóstico.
>
> <details><summary>Ran 4 commands</summary>
>
> - Ran ``$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Set-Location $repo; $d=Join-Path $repo 'skills\investigacion-ia'; Write-Output '--- STATUS DOMAIN ---'; git status --short -- 'skills/investigacion-ia'; Write-Output '--- HEAD DOMAIN ---'; git ls-tree -r --name-only HEAD -- 'skills/investigacion-ia'; Write-Output '--- COUNTS ---'; Get-ChildItem -File $d | Sort-Object Name | ForEach-Object { $lines=(Get-Content -Encoding utf8 -LiteralPath $_.FullName).Count; $words=((Get-Content -Encoding utf8 -Raw -LiteralPath $_.FullName) -split '\s+' | Where-Object { $_ }).Count; '{0}`tlines={1}`twords={2}`tbytes={3}' -f $_.Name,$lines,$words,$_.Length }; Write-Output '--- FORMAT CHECK ---'; Get-ChildItem -File $d | ForEach-Object { $b=[IO.File]::ReadAllBytes($_.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 0xEF -and $b[1]-eq 0xBB -and $b[2]-eq 0xBF); $raw=[IO.File]::ReadAllText($_.FullName,[Text.UTF8Encoding]::new($false,$true)); $crlf=([regex]::Matches($raw,"`r`n")).Count; $cr=([regex]::Matches($raw,"`r(?!`n)")).Count; $trail=($raw -split "`n" | Where-Object { $_ -match '[ \t]+$' }).Count; '{0}`tBOM={1}`tCRLF={2}`tCR={3}`ttrailing={4}' -f $_.Name,$bom,$crlf,$cr,$trail }; Write-Output '--- REFERENCES ---'; rg -n -o '`[^`]+`' $d``
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T05-14-03-GBzq-refactor_investigacion_ia_carga_progresiva.md'; $i=0; Get-Content -Encoding utf8 -LiteralPath $p | ForEach-Object { $i++; if($i -le 55) { '{0}:{1}' -f $i,$_ } }`
> - Ran ``$d='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\investigacion-ia'; Write-Output '--- FINAL NEWLINE ---'; Get-ChildItem -File $d | Sort-Object Name | ForEach-Object { $b=[IO.File]::ReadAllBytes($_.FullName); $end=if($b.Length -gt 0){$b[$b.Length-1]}else{-1}; '{0}`tfinal_byte={1}`tnewline={2}' -f $_.Name,$end,($end -eq 10) }; Write-Output '--- ACTIVATION HEADINGS ---'; rg -n '^## (Usar cuando|No usar cuando|Alcance|Salida recomendada)' $d; Write-Output '--- REPEATED NORMATIVE PHRASES ---'; rg -n -i 'no invent|no (digas|presentes|afirmes)|superior|estado del arte|reproduc|limitaciones|riesg|fuentes' $d``
> - Ran ``$d='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\investigacion-ia'; $files=Get-ChildItem -File $d; $broken=@(); foreach($f in $files){ $text=Get-Content -Encoding utf8 -Raw -LiteralPath $f.FullName; foreach($m in [regex]::Matches($text,'`([^`]+\.md)`')){ $name=$m.Groups[1].Value; if($name -eq 'SKILL.md'){continue}; if(-not (Test-Path -LiteralPath (Join-Path $d $name)) -and -not (Test-Path -LiteralPath (Join-Path (Split-Path $d -Parent) $name))){$broken += "$($f.Name): $name"} } }; if($broken.Count -eq 0){'BROKEN_MD_REFERENCES: NONE'} else {$broken}; Write-Output '--- MARKDOWN STRUCTURE ---'; foreach($f in $files){$t=Get-Content -Encoding utf8 -LiteralPath $f.FullName; $h1=($t | Where-Object {$_ -match '^# '}).Count; $h2=($t | Where-Object {$_ -match '^## '}).Count; '{0}`th1={1}`th2={2}' -f $f.Name,$h1,$h2}``
>
> </details>
</details>

# Auditoría técnica y funcional: `investigacion-ia`

Auditoría realizada sobre el estado actual del checkout, sin modificar archivos, sin staging y sin commit.

## 1. Resumen ejecutivo

- El dominio contiene 12 archivos actuales: 10 módulos operativos, `README.md` y matriz de propiedad.
- La arquitectura es saludable y ya implementa carga progresiva.
- Las fronteras principales están razonablemente claras: literatura, paper, diseño, evaluación, reproducibilidad, ética, redacción y tendencias.
- La mayor redundancia está en `README.md`, que repite reglas propiedad de la base.
- Existe una ambigüedad relevante en la activación del módulo de ética.
- No se justifican fusiones, divisiones, eliminaciones ni reubicaciones.
- La optimización estática adicional es media-baja; la principal mejora pendiente es funcional: probar selección y calidad con tareas reales.
- Los conteos siguientes son palabras, no tokens medidos por un tokenizer.

Estado físico verificado: los archivos descriptivos actuales están sin seguimiento y las versiones numeradas aparecen eliminadas en Git. El refactor todavía no está consolidado en `HEAD`.

## 2. Inventario funcional

| Archivo | Propósito real | USAR CUANDO | Estado |
|---|---|---|---|
| [`instrucciones_base_ia_investiga.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/instrucciones_base_ia_investiga.md:3) | Rol, límites, carga progresiva y reglas transversales | Toda tarea de investigación en IA | Correcto; 315 palabras |
| [`revision_estado_arte_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/revision_estado_arte_reglas.md:3) | Síntesis y revisión de múltiples fuentes | Estado del arte, revisión narrativa, sistemática o scoping | Correcto; solapa parcialmente con tendencias |
| [`lectura_critica_papers_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/lectura_critica_papers_reglas.md:3) | Evaluación profunda de un documento concreto | Paper, preprint o reporte focal | Correcto |
| [`diseno_metodologico_experimentos_ia_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/diseno_metodologico_experimentos_ia_reglas.md:3) | Preguntas, hipótesis, variables y protocolo | Antes de ejecutar o modificar un estudio | Correcto; amplio |
| [`evaluacion_benchmarks_metricas_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/evaluacion_benchmarks_metricas_reglas.md:3) | Interpretación crítica de resultados | Tablas, métricas, rankings o comparaciones existentes | Correcto |
| [`reproducibilidad_open_science_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/reproducibilidad_open_science_reglas.md:3) | Auditoría de artefactos y replicación | Reproducir, replicar o transferir estudios | Correcto |
| [`etica_seguridad_gobernanza_investigacion_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/etica_seguridad_gobernanza_investigacion_reglas.md:3) | Riesgos, privacidad, sesgos y gobernanza | Personas, datos sensibles, daño potencial, uso dual o alto impacto | Correcto, con ajuste de activación recomendado |
| [`redaccion_academica_comunicacion_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/redaccion_academica_comunicacion_reglas.md:3) | Transformación en artículo, tesis o presentación | El entregable principal es comunicacional | Correcto; ajustar frontera con diseño |
| [`vigilancia_tendencias_agenda_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/vigilancia_tendencias_agenda_reglas.md:3) | Seguimiento temporal y agenda futura | La pregunta depende de actualidad o madurez | Correcto; solapa parcialmente con revisión |
| [`checklist_investigacion_ia.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/checklist_investigacion_ia.md:3) | Control de cierre | Revisión final, no carga inicial | Correcto |
| [`README.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/README.md:8) | Router e inventario del dominio | Descubrir archivos y elegir módulos | Resumir |
| [`matriz_propiedad_reglas.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-ia/matriz_propiedad_reglas.md:3) | Documento de mantenimiento y propiedad normativa | Evolución del dominio | Mantener con cambios menores |

## 3. Evaluación detallada

Escala: 1 bajo, 5 alto. En redundancia, 5 significa redundancia mínima.

| Archivo | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Costo contexto | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|---|
| Base | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Revisión literatura | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | Medio | MANTENER |
| Lectura papers | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 4 | Medio | MANTENER |
| Diseño experimental | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Evaluación | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 4 | Medio | MANTENER |
| Reproducibilidad | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 4 | Medio | MANTENER |
| Ética y gobernanza | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 4 | Medio | MANTENER_CON_CAMBIOS_MENORES |
| Redacción | 4 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | Bajo | MANTENER_CON_CAMBIOS_MENORES |
| Tendencias | 4 | 4 | 4 | 4 | 4 | 5 | 4 | 4 | Bajo | MANTENER_CON_CAMBIOS_MENORES |
| Checklist | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 5 | Bajo | MANTENER |
| README | 4 | 2 | 4 | 5 | 3 | 4 | 4 | 3 | Medio | RESUMIR |
| Matriz propiedad | 4 | 4 | 4 | 3 | 3 | 4 | 4 | 5 | Medio, no rutinario | MANTENER_CON_CAMBIOS_MENORES |

## 4. Problemas detectados

### Redundancias

1. `README.md` repite reglas que ya pertenecen a la base: no inventar evidencia, distinguir evidencia e interpretación y no declarar superioridad. Es una repetición útil para orientación, pero excesiva para un router.

2. Los encabezados comunes (`Alcance`, `Usar cuando`, `No usar cuando`, `Salida recomendada`) son repetición estructural necesaria, no redundancia perjudicial.

3. La matriz declara correctamente que la base es dueña de las reglas transversales, pero algunos módulos vuelven a expresar reglas generales. Conviene conservarlas solo cuando añadan una aplicación específica.

### Solapamientos

- Revisión de literatura ↔ tendencias: frontera temporal clara, pero parcialmente solapadas.
- Lectura de paper ↔ evaluación: paper como unidad de análisis frente a resultados como unidad de evidencia.
- Diseño experimental ↔ evaluación: antes de ejecutar frente a interpretar resultados existentes.
- Evaluación ↔ reproducibilidad: evaluación considera disponibilidad de artefactos; reproducibilidad profundiza en su auditoría.
- Ética ↔ diseño, evaluación y lectura: dependencia condicional correcta.
- Redacción ↔ todos los módulos: relación de salida, no de contenido metodológico.
- Checklist ↔ todos los módulos: dependencia de cierre, correctamente separada.

No hay evidencia suficiente para fusionar o dividir módulos.

### Ambigüedad de activación

El módulo ético indica que no debe usarse cuando no existan riesgos plausibles identificados. Esto puede producir subactivación si los riesgos todavía no han sido evaluados. Sería más seguro exigir una revisión preliminar que confirme que no hay actores afectados, datos sensibles ni riesgos relevantes.

También falta una regla explícita de precedencia para tareas combinadas. La base indica elegir módulo principal y secundarios, pero no define cómo resolver casos con literatura, evaluación, reproducibilidad y redacción simultáneas.

### Exceso de contexto

- `README.md`: 433 palabras; es el principal candidato a compactación.
- Matriz de propiedad: 341 palabras; no debería cargarse como contexto normal de ejecución.
- La suma estática actual es de aproximadamente 3.677 palabras, pero la carga progresiva evita cargar todo por defecto.

### Problemas de formato

La política del repositorio declara UTF-8 sin BOM y LF. La auditoría encontró:

- 12/12 archivos sin BOM.
- 12/12 con nueva línea final.
- 12/12 sin espacios finales.
- 9 archivos con CRLF y 3 con LF.

Esto no cambia el comportamiento semántico, pero sí genera inconsistencia y puede afectar validaciones futuras.

### Problemas arquitectónicos

No se detectan carencias demostradas. Crear nuevas skills sin tareas representativas aumentaría fragmentación y costo de selección.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Revisión literatura | Tendencias | Parcialmente redundantes | Media | Mantener; reforzar dimensión temporal |
| Lectura papers | Evaluación | Parcialmente redundantes | Media | Mantener; documento frente a resultados |
| Diseño experimental | Evaluación | Dependientes | Media | Mantener frontera antes/después |
| Diseño experimental | Reproducibilidad | Complementarias | Baja | Mantener carga condicional |
| Evaluación | Reproducibilidad | Complementarias | Media | Mantener; artefactos frente a resultados |
| Ética | Diseño experimental | Dependientes | Media | Activar si hay actores, datos o daño |
| Ética | Evaluación | Complementarias | Media | Evaluar subgrupos, sesgos y riesgos |
| Redacción | Todas | Complementaria | Baja | Mantener como capa de salida |
| Checklist | Todas | Dependiente | Baja | Mantener exclusivamente al cierre |
| Base | Todas | Dependiente | Alta, intencional | Mantener como contrato transversal |

## 6. Propuesta de arquitectura objetivo

La arquitectura lógica recomendada coincide con la actual:

```text
skills/investigacion-ia/
├── README.md                              # router breve
├── instrucciones_base_ia_investiga.md     # carga obligatoria
├── revision_estado_arte_reglas.md         # módulo principal
├── lectura_critica_papers_reglas.md       # módulo principal
├── diseno_metodologico_experimentos_ia_reglas.md
├── evaluacion_benchmarks_metricas_reglas.md
├── reproducibilidad_open_science_reglas.md
├── etica_seguridad_gobernanza_investigacion_reglas.md
├── redaccion_academica_comunicacion_reglas.md
├── vigilancia_tendencias_agenda_reglas.md
├── checklist_investigacion_ia.md           # cierre
└── matriz_propiedad_reglas.md              # mantenimiento
```

Contrato de carga:

```text
README/router
    ↓
base obligatoria
    ↓
un módulo principal
    ↓
módulos secundarios con dependencia concreta
    ↓
checklist al cierre
```

La matriz de propiedad debe permanecer como artefacto de mantenimiento, no como contexto obligatorio.

## 7. Acciones recomendadas

### P0 — Críticas

No se identificaron problemas P0 confirmados mediante inspección estática.

### P1 — Alto impacto

1. Ajustar la condición negativa del módulo ético para evitar subactivación por riesgos no evaluados.
2. Añadir una regla breve para elegir módulo principal en tareas combinadas.
3. Ejecutar validación funcional con tareas representativas y un LLM.
4. Medir respuestas, omisiones, correcciones y carga de contexto; no asumir que la reducción estática preserva calidad.

### P2 — Optimización

1. Resumir `README.md` y dejar las reglas normativas en la base.
2. Normalizar todos los archivos a LF.
3. Uniformar terminología y formato de los activadores.
4. Mantener la matriz fuera de la carga rutinaria.

### P3 — Opcional

1. Crear un validador estático para referencias, encabezados, EOL y contrato de carga.
2. Añadir ejemplos de combinaciones de módulos solo si aparecen casos reales de uso.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Resumir README | ↓↓ | = / ↑ | ↑ | Bajo |
| Regla de precedencia para tareas combinadas | = | ↑ | ↑ | Bajo |
| Ajustar activación ética | = | ↑↑ en seguridad | ↑ | Bajo |
| Separar matriz de la carga rutinaria | ↓↓ | = | ↑ | Bajo |
| Normalizar EOL | = | = | ↑ | Bajo |
| Validación funcional con LLM | = | ↑↑ evidencia | ↑ | Medio |
| Medición real de tokens y omisiones | = | ↑↑ evidencia | ↑ | Medio |

Las flechas son estimaciones de diseño, no mediciones experimentales.

## 9. Skills candidatas a modificación

### Mantener estructuralmente

- Revisión de literatura.
- Lectura crítica de papers.
- Evaluación de benchmarks.
- Reproducibilidad.
- Checklist.

### Compactar

- `README.md`, eliminando principios duplicados y conservando solo routing, inventario y límites.

### Cambios menores

- Base: precedencia para tareas combinadas.
- Diseño experimental: precisar frontera con evaluación.
- Ética: endurecer criterio de no activación.
- Redacción: aclarar uso en propuestas aún sin resultados.
- Tendencias: reforzar diferencia entre actualidad y síntesis histórica.
- Matriz: declarar explícitamente que es documento de mantenimiento.

### Fusionar, dividir, reubicar o eliminar

No recomendado con la evidencia actual.

## 10. Plan de refactorización conservador

1. Confirmar el estado del working tree antes de mezclar estos cambios con otras modificaciones.
2. Modificar únicamente `README.md`, base, activación ética y, si se decide, redacción/tendencias.
3. Normalizar EOL de los archivos del dominio.
4. Validar referencias, estructura Markdown, BOM, nueva línea final y contrato de carga.
5. Ejecutar una batería funcional con tareas de literatura, paper, diseño, evaluación, reproducibilidad y riesgo.
6. Comparar cuatro configuraciones: base sola; base+módulo; base+módulo+dependencia; base+módulo+checklist.
7. Registrar tokens o palabras, calidad, omisiones y correcciones observadas.
8. Considerar fusiones o eliminaciones solo después de evidencia repetida de redundancia o uso conjunto.

## Conclusión

1. La salud general del dominio es buena desde el punto de vista arquitectónico estático.
2. La mayor ineficiencia está en la repetición del `README.md` y en cargar documentos de mantenimiento como contexto operativo.
3. La mayor oportunidad es validar funcionalmente la selección progresiva y sus límites.
4. No recomiendo una reestructuración amplia ahora.
5. La mejor relación calidad/tokens provendría de resumir el router, mantener un módulo principal y cargar dependencias solo cuando el caso lo exija.
