# Audita skills de investigación

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/41bd47be-4089-47c8-932e-2aa0b76a3e20/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer el texto adjunto y reconstruir el alcance exacto antes de actuar; también revisaré el contexto previo del repositorio si la solicitud implica cambios o decisiones sobre esta biblioteca.
>
> <details><summary>Explored 2 files, ran a command</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/41bd47be-4089-47c8-932e-2aa0b76a3e20/pasted-text.txt`
>
> </details>
>
> - Ran `$mem='C:\Users\xbash\.codex\memories\MEMORY.md'; rg -n -i -C 2 'investigacion-general|auditor[ií]a|skills|carga progresiva|matriz_propiedad|gen-ai-skills' $mem | Select-Object -First 120`
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/memories/rollout_summaries/2026-09-09T14-16-13-71a0-auditoria_estatica_investigacion_ia_sin_ediciones.md`
>
> </details>
>
> </details>
>
> El adjunto solicita una auditoría estática y funcional del dominio `skills/investigacion-general`, con diagnóstico previo y sin modificar archivos. Haré el inventario y lectura completa, verificaré el estado real del checkout y separaré evidencia, inferencias y recomendaciones; no aplicaré refactorizaciones.
>
> <details><summary>Ran 11 commands</summary>
>
> - Ran `git -C 'C:\rutinas-local\gen-ai-skills\gen-ai-skills' -c core.excludesFile=.git/info/exclude status --short --branch`
> - Ran `$root='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output 'TARGET'; Get-ChildItem -LiteralPath (Join-Path $root 'skills\investigacion-general') -Recurse -File | Sort-Object FullName | ForEach-Object { $_.FullName.Substring($root.Length+1) }; Write-Output 'RELEVANT'; Get-ChildItem -LiteralPath $root -Recurse -File -Include AGENTS.md,README.md,CONTEXT.md,DECISIONS.md,HANDOFF.md,.editorconfig,.gitattributes | Sort-Object FullName | ForEach-Object { $_.FullName.Substring($root.Length+1) }`
> - Ran ``$root='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $p=Join-Path $root 'skills\investigacion-general'; $files=Get-ChildItem -LiteralPath $p -Recurse -File | Sort-Object FullName; foreach($f in $files){$bytes=[IO.File]::ReadAllBytes($f.FullName); $text=[Text.Encoding]::UTF8.GetString($bytes); [pscustomobject]@{File=$f.FullName.Substring($root.Length+1); Bytes=$bytes.Length; Lines=($text -split "`n").Count; Words=([regex]::Matches($text,'\S+')).Count; BOM=($bytes.Length -ge 3 -and $bytes[0]-eq 0xEF -and $bytes[1]-eq 0xBB -and $bytes[2]-eq 0xBF); CRLF=([regex]::Matches($text,"`r`n")).Count; LF=([regex]::Matches($text,"(?<!`r)`n")).Count; FinalNL=$text.EndsWith("`n"); TrailingWS=([regex]::Matches($text,'(?m)[ \t]+$')).Count}} | Format-Table -AutoSize``
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\investigacion-general'; Get-ChildItem -LiteralPath $p -File | Sort-Object Name | ForEach-Object { Write-Output ('===== ' + $_.Name + ' ====='); $i=0; Get-Content -LiteralPath $_.FullName -Encoding UTF8 | ForEach-Object { $i++; '{0,4}: {1}' -f $i,$_ } }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\architecture.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; '{0,4}: {1}' -f $i,$_ }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\CONTEXTO_PROYECTO.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; if($i -le 260){'{0,4}: {1}' -f $i,$_} }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\DECISIONES_TECNICAS.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; if($i -le 260){'{0,4}: {1}' -f $i,$_} }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\skills\investigacion-general\instrucciones_base_investiga.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; '{0,4}: {1}' -f $i,$_ }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\auditoria_investigacion_ia_20260909.md'; if(Test-Path -LiteralPath $p){$i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; '{0,4}: {1}' -f $i,$_ }} else { 'MISSING' }`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\README.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object { $i++; if($i -le 220){'{0,4}: {1}' -f $i,$_} }`
> - Ran `$root='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $paths=@('skills\investigacion-general','skills\investigacion-general\README.md','docs\architecture.md','docs\best-practices.md','docs\prompt-design.md','.editorconfig','.gitattributes'); foreach($rel in $paths){$p=Join-Path $root $rel; if(Test-Path -LiteralPath $p){$f=Get-Item -LiteralPath $p; [pscustomobject]@{Path=$rel;Bytes=$f.Length;LastWrite=$f.LastWriteTimeUtc}}else{[pscustomobject]@{Path=$rel;Bytes='MISSING';LastWrite=''}}} | Format-Table -AutoSize`
>
> </details>
>
> El inventario actual del objetivo es mucho menor que el patrón documentado: contiene solo 2 archivos (`instrucciones_base_investiga.md` y `checklist_investigacion.md`) y no tiene `README.md` ni módulos especializados. El checkout está ampliamente sucio por cambios previos ajenos al alcance; preservaré ese estado y distinguiré lo que es una carencia del dominio de lo que no puede atribuirse al contenido sin evidencia adicional.
>
> <details><summary>Ran 10 commands</summary>
>
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- HEAD TARGET ---'; git -C $repo ls-tree -r --name-only HEAD -- 'skills/investigacion-general'; Write-Output '--- STATUS TARGET ---'; git -C $repo status --short -- 'skills/investigacion-general'; Write-Output '--- TARGET COUNTS ---'; $d=Join-Path $repo 'skills\investigacion-general'; foreach($f in (Get-ChildItem -LiteralPath $d -File | Sort-Object Name)){ $raw=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false,$true)); $lines=($raw -split [char]10).Count; $words=([regex]::Matches($raw,'\S+')).Count; $b=[IO.File]::ReadAllBytes($f.FullName); $bom=($b.Length -ge 3 -and $b[0]-eq 239 -and $b[1]-eq 187 -and $b[2]-eq 191); $crlf=([regex]::Matches($raw,[char]13+[char]10)).Count; $lf=([regex]::Matches($raw,'(?<!\r)\n')).Count; $trail=([regex]::Matches($raw,'(?m)[ \t]+$')).Count; '{0} bytes={1} lines={2} words={3} BOM={4} CRLF={5} LF={6} trail={7} finalNL={8}' -f $f.Name,$b.Length,$lines,$words,$bom,$crlf,$lf,$trail,$raw.EndsWith([char]10) }`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- TARGET REFERENCES ---'; rg -n -i -g '*.md' -g '*.txt' 'investigacion-general|instrucciones_base_investiga|checklist_investigacion' $repo; Write-Output '--- DOMAIN ACTIVATION HEADINGS ---'; rg -n '^## (Usar cuando|No usar cuando|Alcance|Salida recomendada|Forma de trabajo|Formato de respuesta)' (Join-Path $repo 'skills\investigacion-general')`
> - Ran `$p='C:\rutinas-local\gen-ai-skills\gen-ai-skills\docs\auditoria_academia_20260909.md'; rg -n -C 5 -i 'investigacion-general|instrucciones_base_investigacion|checklist_investigacion' $p | Select-Object -First 220`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $d=Join-Path $repo 'skills\investigacion-ia'; Write-Output '--- IA FILES ---'; Get-ChildItem -LiteralPath $d -File | Sort-Object Name | ForEach-Object { '{0} bytes={1}' -f $_.Name,$_.Length }; Write-Output '--- IA README ---'; $i=0; Get-Content -LiteralPath (Join-Path $d 'README.md') -Encoding UTF8 | ForEach-Object {$i++; '{0,4}: {1}' -f $i,$_}; Write-Output '--- IA BASE ---'; $i=0; Get-Content -LiteralPath (Join-Path $d 'instrucciones_base_ia_investiga.md') -Encoding UTF8 | ForEach-Object {$i++; '{0,4}: {1}' -f $i,$_}`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $a=Join-Path $repo 'skills\investigacion-general\instrucciones_base_investiga.md'; $b=Join-Path $repo 'skills\investigacion-ia\instrucciones_base_ia_investiga.md'; $c=Join-Path $repo 'skills\investigacion-general\checklist_investigacion.md'; $d=Join-Path $repo 'skills\investigacion-ia\checklist_investigacion_ia.md'; Write-Output '--- HASHES ---'; foreach($p in @($a,$b,$c,$d)){ if(Test-Path $p){(Get-FileHash -Algorithm SHA256 -LiteralPath $p).Hash + ' ' + $p} }; Write-Output '--- BASE DIFF SUMMARY ---'; Compare-Object (Get-Content -Encoding UTF8 $a) (Get-Content -Encoding UTF8 $b) -SyncWindow 3 | Select-Object -First 80 | Format-Table -AutoSize; Write-Output '--- CHECKLIST DIFF SUMMARY ---'; Compare-Object (Get-Content -Encoding UTF8 $c) (Get-Content -Encoding UTF8 $d) -SyncWindow 3 | Select-Object -First 80 | Format-Table -AutoSize`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- DOMAIN README HEADINGS ---'; Get-ChildItem -LiteralPath (Join-Path $repo 'skills') -Directory | Sort-Object Name | ForEach-Object { $p=Join-Path $_.FullName 'README.md'; if(Test-Path $p){$h=(Get-Content -Encoding UTF8 $p | Where-Object {$_ -match '^#|Usar cuando|cargar|carga|checklist|base'} | Select-Object -First 18) -join ' || '; '{0}: {1}' -f $_.Name,$h} else {'{0}: README MISSING' -f $_.Name} }`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- TARGET STRUCTURE ---'; $d=Join-Path $repo 'skills\investigacion-general'; Get-ChildItem -LiteralPath $d -Force | Select-Object Mode,Length,Name; Write-Output '--- ROOT AGENTS ---'; rg --files -g 'AGENTS.md' -g '!**/.git/**' $repo; if($LASTEXITCODE -ne 0){'NONE'}; Write-Output '--- DOMAIN LINKS ---'; rg -n '\]\(' $d; if($LASTEXITCODE -ne 0){'NONE'}; Write-Output '--- PENDING/DECISION REFERENCES ---'; rg -n -i -C 3 'investigacion-general|investigacion general|base_investiga|checklist_investigacion' (Join-Path $repo 'docs') (Join-Path $repo 'README.md') | Select-Object -First 160`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $d=Join-Path $repo 'skills\investigacion-general'; Write-Output '--- HEADINGS ---'; rg -n '^#{1,6} ' $d; Write-Output '--- ACTIONABLE LINE TYPES ---'; foreach($f in (Get-ChildItem -LiteralPath $d -File | Sort-Object Name)){ $t=Get-Content -Encoding UTF8 -LiteralPath $f.FullName; $bullets=@($t | Where-Object {$_ -match '^\s*[-*]\s+'}).Count; $numbered=@($t | Where-Object {$_ -match '^\s*\d+[.)]\s+'}).Count; $checks=@($t | Where-Object {$_ -match '^\s*-\s+\[[ xX]\]'}).Count; $when=@($t | Where-Object {$_ -match '(?i)usar cuando|no usar cuando'}).Count; '{0}: bullets={1} numbered={2} checks={3} activation_terms={4}' -f $f.Name,$bullets,$numbered,$checks,$when }`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- RELATED BASES AND CHECKLISTS ---'; $paths=@('skills\academia\instrucciones_base_academia.md','skills\academia\checklist_revision_notebook.md','skills\historia\instrucciones_base_historia.md','skills\historia\checklist_analisis_historico.md','skills\filosofia\instrucciones_base_pensamiento.md','skills\filosofia\checklist_analisis_filosofico.md','skills\investigacion-ia\README.md','skills\investigacion-ia\instrucciones_base_ia_investiga.md','skills\investigacion-ia\checklist_investigacion_ia.md'); foreach($rel in $paths){$p=Join-Path $repo $rel; if(Test-Path $p){$t=Get-Content -Encoding UTF8 -LiteralPath $p; $words=([regex]::Matches(($t -join [char]10),'\S+')).Count; $heads=($t | Where-Object {$_ -match '^## '}) -join ' | '; '{0}: words={1}; h2={2}' -f $rel,$words,$heads}}`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; $p=Join-Path $repo 'skills\investigacion-ia\checklist_investigacion_ia.md'; $i=0; Get-Content -LiteralPath $p -Encoding UTF8 | ForEach-Object {$i++; '{0,4}: {1}' -f $i,$_}; Write-Output '--- COMMON SENTENCE/PHRASE SIGNALS ---'; $a=Get-Content -Raw -Encoding UTF8 (Join-Path $repo 'skills\investigacion-general\instrucciones_base_investiga.md'); $b=Get-Content -Raw -Encoding UTF8 (Join-Path $repo 'skills\investigacion-ia\instrucciones_base_ia_investiga.md'); $phrases=@('No invent','fuentes','evidencia','supuestos','limitaciones','reproduc','metric','baseline','causal','sesgos','faltan','carga','checklist'); foreach($x in $phrases){'{0}: general={1} ia={2}' -f $x,([regex]::Matches($a,$x,'IgnoreCase')).Count,([regex]::Matches($b,$x,'IgnoreCase')).Count}; Write-Output '--- REPEATED GENERAL RULES ACROSS TARGET FILES ---'; $ta=Get-Content -Encoding UTF8 (Join-Path $repo 'skills\investigacion-general\instrucciones_base_investiga.md'); $tb=Get-Content -Encoding UTF8 (Join-Path $repo 'skills\investigacion-general\checklist_investigacion.md'); foreach($term in @('no invent','falt','evidencia','fuentes','muestra','causal','reproduc','metrica','limitacion','etica','sesgo','sensib')){ $ca=@($ta|Where-Object {$_ -match $term}).Count; $cb=@($tb|Where-Object {$_ -match $term}).Count; '{0}: base={1} checklist={2}' -f $term,$ca,$cb }`
>
> </details>
>
> La lectura confirma que el dominio no es una colección incompleta de muchos módulos: es un núcleo transversal de base + checklist. El hallazgo arquitectónico principal es otro: está indexado como dominio, pero carece del `README.md` que el repositorio usa como router, y no declara activación ni contrato de carga. Compararé ahora sus fronteras con `investigacion-ia` y dominios académicos cercanos para no recomendar duplicación innecesaria.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran `$p='C:\Users\xbash\.codex\memories\MEMORY.md'; $i=0; Get-Content -Encoding UTF8 -LiteralPath $p | ForEach-Object { $i++; if($i -ge 60 -and $i -le 76){'{0}:{1}' -f $i,$_} }`
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T14-16-13-71a0-auditoria_estatica_investigacion_ia_sin_ediciones.md'; $i=0; Get-Content -Encoding UTF8 -LiteralPath $p | ForEach-Object { $i++; if($i -ge 20 -and $i -le 55){'{0}:{1}' -f $i,$_} }`
> - Ran `$repo='C:\rutinas-local\gen-ai-skills\gen-ai-skills'; Write-Output '--- TARGET/IA WORDS ---'; foreach($rel in @('skills\investigacion-general\instrucciones_base_investiga.md','skills\investigacion-general\checklist_investigacion.md','skills\investigacion-ia\README.md','skills\investigacion-ia\instrucciones_base_ia_investiga.md','skills\investigacion-ia\checklist_investigacion_ia.md')){$p=Join-Path $repo $rel;$t=Get-Content -Raw -Encoding UTF8 $p; '{0}: words={1} lines={2}' -f $rel,([regex]::Matches($t,'\S+')).Count,(($t -split [char]10).Count)}`
>
> </details>
</details>

# Auditoría técnica y funcional: `investigacion-general`

Auditoría realizada sobre el checkout actual, sin modificar archivos, hacer staging, commits ni publicaciones.

## Evidencia y alcance

- Repositorio efectivo: `C:\rutinas-local\gen-ai-skills\gen-ai-skills`.
- El directorio objetivo está sin seguimiento en Git: `?? skills/investigacion-general/`.
- No existen archivos de este dominio en `HEAD`.
- Se identificaron y leyeron completamente 2 archivos:
  - [`instrucciones_base_investiga.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-general/instrucciones_base_investiga.md:1)
  - [`checklist_investigacion.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/investigacion-general/checklist_investigacion.md:1)
- Tamaño estático: 1.445 y 2.367 palabras respectivamente; 3.812 palabras en total. Son conteos de palabras, no tokens.
- No se ejecutó una prueba con LLM ni una evaluación funcional comparativa.

## 1. Resumen ejecutivo

El dominio tiene contenido metodológico sólido y altamente reutilizable, pero está incompleto como unidad de distribución.

Problemas principales:

1. Falta `README.md`, aunque la convención del repositorio lo considera el router de cada dominio ([`README.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/README.md:66)).
2. No existe un contrato explícito de carga progresiva.
3. Ningún archivo declara `USAR CUANDO` o `NO USAR CUANDO`.
4. La base es muy amplia y el checklist contiene 93 criterios; cargar ambos para una tarea pequeña puede ser costoso.
5. Existen reglas transversales conceptualmente duplicadas con `investigacion-ia`.
6. No hay evidencia suficiente para fusionar, dividir, eliminar o reubicar archivos.

Estado general: contenido metodológico fuerte, arquitectura de activación débil.

Nivel estimado de optimización:

- Selección y activación: medio-alto.
- Reducción segura de contenido: medio.
- Reducción bruta de palabras: no recomendable sin validación funcional.

## 2. Inventario funcional

| Archivo | Propósito real | Usar cuando | No usar cuando | Estado |
|---|---|---|---|---|
| `instrucciones_base_investiga.md` | Marco transversal para formular problemas, evaluar evidencia, diseñar estudios, interpretar resultados y comunicar conclusiones. | Toda tarea de investigación cuantitativa, cualitativa, mixta, documental, experimental, observacional o aplicada. | Como sustituto de requisitos profesionales, legales o técnicos de un dominio específico; tampoco para implementar sistemas productivos. | Sólido, pero sin activación explícita. |
| `checklist_investigacion.md` | Auditoría de cumplimiento metodológico y trazabilidad de artefactos de investigación. | Revisión final o auditoría de un informe, artículo, notebook, script, presentación, base de datos u otro artefacto. | Como contexto obligatorio inicial o como sustituto del diseño metodológico. | Valioso, pero demasiado amplio para cargarse siempre. |

La base declara su alcance transversal en sus líneas 3–6 y el checklist define su uso de revisión en las líneas 3–18.

## 3. Evaluación detallada

Escala 1–5. En redundancia, 5 significa redundancia mínima.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Costo contexto | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|---|
| Base | 5 | 5 | 4 | 3 | 4 | 5 | 4 | 3 | Medio-alto | `MANTENER_CON_CAMBIOS_MENORES` |
| Checklist | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 3 | Alto | `MANTENER_CON_CAMBIOS_MENORES` |

### Base

Fortalezas:

- Establece límites epistemológicos claros.
- Distingue hechos, supuestos, hipótesis, resultados e interpretaciones.
- Cubre fuentes, datos faltantes, diseños cuantitativos y cualitativos, métricas, causalidad, reproducibilidad y ética.
- Tiene reglas accionables, no solo descripciones.

Problemas:

- No define cómo se carga en relación con otros archivos.
- No contiene una frase inequívoca de activación.
- Mezcla invariantes transversales con procedimientos específicos de múltiples enfoques.
- Parte de su contenido se repite operacionalmente en el checklist.

### Checklist

Fortalezas:

- Es verificable y exige evidencia localizable.
- Distingue `Cumple`, `No cumple`, `No verificable` y `No aplica`.
- Incluye criterios para datos, método, código, métricas, inferencia, ética, comunicación y reproducibilidad.
- El formato de informe y la trazabilidad son especialmente útiles.

Problemas:

- Sus 10 secciones lo convierten en un checklist casi universal.
- Puede inducir a cargar 93 criterios aunque solo sea necesario revisar una parte.
- La instrucción de aplicar solo criterios pertinentes existe, pero no hay un mecanismo de selección rápida por tipo de artefacto.
- Repite principios de la base, aunque esa repetición es parcialmente necesaria para convertirlos en controles verificables.

## 4. Problemas detectados

### Redundancias

**Evidencia encontrada**

La base y el checklist repiten conceptos sobre:

- no inventar datos o fuentes;
- distinguir evidencia e interpretación;
- declarar faltantes y limitaciones;
- reproducibilidad;
- métricas y comparaciones;
- causalidad;
- sesgos y ética.

La base establece reglas normativas; el checklist las transforma en criterios de auditoría. Por ello, no toda repetición es perjudicial.

**Inferencia razonable**

La duplicación se vuelve problemática solo si ambas piezas se mantienen como fuentes normativas independientes. Podrían divergir con el tiempo.

**Recomendación**

Mantener ambos archivos, pero declarar explícitamente:

- la base es la fuente normativa primaria;
- el checklist es una herramienta de verificación derivada;
- el checklist no amplía silenciosamente las reglas de la base.

### Solapamientos

- `investigacion-general` ↔ `investigacion-ia`: solapamiento alto en rigor metodológico, evidencia, métricas y reproducibilidad.
- `investigacion-general` ↔ `academia`: relación complementaria; academia se centra en notebooks y revisión formativa.
- `investigacion-general` ↔ `historia` y `filosofia`: relación complementaria; esos dominios aportan criterios disciplinares específicos.
- Base ↔ checklist: relación complementaria con redundancia funcional controlada.

No hay evidencia suficiente para fusionar `investigacion-general` con `investigacion-ia`. El segundo tiene módulos específicos sobre papers, benchmarks, IA, ética y tendencias.

### Exceso de contexto

- La base tiene 1.445 palabras y cubre casi todo el ciclo de investigación.
- El checklist tiene 2.367 palabras y 93 casillas.
- El dominio no tiene router; por lo tanto, un consumidor externo puede cargar ambos archivos sin saber cuál corresponde a cada etapa.

La mayor oportunidad no es eliminar criterios, sino permitir carga selectiva.

### Ambigüedad

No existen encabezados explícitos de activación como:

```text
USAR CUANDO:
NO USAR CUANDO:
```

Tampoco existe una regla para:

- seleccionar un archivo principal;
- cargar el checklist solo al cierre;
- resolver tareas combinadas;
- distinguir investigación general de investigación especializada en IA.

### Fragmentación

No hay sobrefragmentación interna: solo existen dos archivos.

Sí existe una posible subfragmentación entre dominios de investigación generales y especializados, especialmente con `investigacion-ia`. El problema actual no justifica crear más archivos; primero debe definirse la relación entre ambos dominios.

### Problemas arquitectónicos

1. El dominio aparece en el índice raíz, pero no tiene `README.md`.
2. La estructura incumple parcialmente la convención documentada de dominios.
3. No hay matriz de propiedad de reglas para prevenir futuras divergencias.
4. El estado Git sin seguimiento impide afirmar que el dominio ya forme parte de una versión consolidada.
5. Una auditoría histórica menciona el nombre inexistente `instrucciones_base_investigacion.md`; es una referencia dentro de una transcripción, no un enlace operativo, pero puede confundir el mantenimiento.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base general | Checklist general | Complementarias | Media | Mantener; base como fuente normativa y checklist como control de cierre. |
| Base general | Base de `investigacion-ia` | Parcialmente redundantes | Media-alta | Definir si IA hereda la base general o permanece autónoma. |
| Checklist general | Checklist de `investigacion-ia` | Parcialmente redundantes | Media | Diferenciar checklist transversal y checklist específico de IA. |
| `investigacion-general` | `academia` | Complementarias | Baja | Mantener separadas: investigación general frente a notebooks académicos. |
| `investigacion-general` | `historia` | Complementarias | Baja | Mantener separadas; historia aporta reglas disciplinares. |
| `investigacion-general` | `filosofia` | Complementarias | Baja | Mantener separadas; filosofía aporta análisis conceptual propio. |
| Base general | Futuros módulos especializados | Dependientes | Media | Cargar la base y solo un módulo principal cuando exista evidencia de necesidad. |

## 6. Propuesta de arquitectura objetivo

### Estructura actual

```text
skills/investigacion-general/
├── instrucciones_base_investiga.md
└── checklist_investigacion.md
```

### Estructura propuesta conservadora

```text
skills/investigacion-general/
├── README.md                       # router breve y contrato de carga
├── instrucciones_base_investiga.md # invariantes transversales
└── checklist_investigacion.md      # auditoría y cierre
```

Contrato recomendado:

```text
README/router
    ↓
base obligatoria para investigación
    ↓
módulo especializado de otro dominio, solo si corresponde
    ↓
checklist al cierre o durante una auditoría
```

No recomiendo crear nuevos módulos dentro de `investigacion-general` todavía. Los dominios `investigacion-ia`, `academia`, `historia` y `filosofia` ya cubren especializaciones relacionadas.

## 7. Acciones recomendadas

### P0 — Críticas

No se identificaron problemas P0 confirmados.

### P1 — Alto impacto

1. Crear un `README.md` del dominio con inventario, límites y selección de archivos.
2. Añadir al README y a la base una regla explícita de carga progresiva.
3. Añadir `USAR CUANDO` y `NO USAR CUANDO` para ambos archivos.
4. Definir la relación normativa entre `investigacion-general` e `investigacion-ia`.
5. Ejecutar pruebas funcionales con tareas representativas antes de compactar contenido.

### P2 — Optimización

1. Mantener el checklist fuera de la carga inicial.
2. Añadir una selección rápida del checklist por tipo de artefacto.
3. Eliminar del checklist solo prosa explicativa que no cambie decisiones.
4. Crear un validador estático para README, referencias, encabezados, BOM, EOL y contrato de carga.
5. Considerar una matriz de propiedad si se agregan módulos.

### P3 — Opcional

1. Añadir ejemplos de combinaciones de archivos solo después de observar casos reales.
2. Crear perfiles opcionales del checklist para literatura, datos, código y comunicación, únicamente si las mediciones muestran ahorro útil.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Añadir `README.md` router | ↓↓ en uso operativo | ↑ | ↑↑ | Bajo |
| Declarar contrato de carga | ↓ | ↑ | ↑ | Bajo |
| Añadir activadores explícitos | = / ↓ | ↑ | ↑ | Bajo |
| Mantener checklist solo para cierre | ↓↓ | = / ↑ | ↑ | Bajo |
| Definir relación con `investigacion-ia` | ↓↓ entre dominios | = / ↑ | ↑↑ | Medio |
| Compactar checklist tras pruebas | ↓↓ | = si se conserva cobertura | ↑ | Medio |
| Validación funcional con LLM | = | ↑↑ evidencia | ↑ | Medio |
| Normalizar formato de archivos | = | = | ↑ | Bajo |

Las flechas son estimaciones de diseño, no mediciones experimentales.

## 9. Skills candidatas a modificación

### Mantener intactas conceptualmente

- Ninguna requiere reestructuración inmediata.

### Mantener con cambios menores

- `instrucciones_base_investiga.md`: añadir activación y contrato de carga.
- `checklist_investigacion.md`: declarar explícitamente que es una herramienta de cierre y mejorar selección condicional.

### Resumir

- Ningún archivo debe resumirse antes de una prueba funcional. El checklist podría compactarse después de medir cobertura y omisiones.

### Fusionar

- Ninguna fusión recomendada.

### Dividir

- No recomendado por ahora. Dividir el checklist sin casos de uso reales podría aumentar la carga de selección.

### Reubicar

- No recomendado. La ubicación del dominio es coherente.

### Eliminar o deprecar

- Ningún archivo candidato.

## 10. Plan de refactorización conservador

1. Confirmar el estado del working tree y definir qué parte del dominio se incorporará realmente al repositorio.
2. Crear únicamente el router `README.md`.
3. Añadir el contrato de carga y las frases de activación.
4. Mantener base y checklist sin reducción inicial.
5. Ejecutar validaciones estáticas de estructura, referencias y formato.
6. Probar al menos tareas de:
   - revisión bibliográfica;
   - diseño metodológico;
   - análisis de datos;
   - revisión de un informe;
   - auditoría de reproducibilidad;
   - comunicación de resultados.
7. Comparar:
   - base sola;
   - base + checklist;
   - base + dominio especializado;
   - base + dominio especializado + checklist.
8. Medir tokens reales, omisiones, correcciones y calidad.
9. Compactar o dividir solo si existe evidencia repetida de mejora.

## Conclusión

1. La salud metodológica del dominio es alta, pero su arquitectura de distribución es incompleta.
2. La mayor ineficiencia es la ausencia de un router y la carga potencial del checklist completo.
3. La mayor oportunidad es explicitar carga progresiva y límites entre dominios.
4. No recomiendo fusionar, dividir ni eliminar archivos ahora.
5. La mejor relación calidad/tokens provendrá de añadir `README.md`, cargar el checklist solo al cierre y validar funcionalmente antes de compactar.
