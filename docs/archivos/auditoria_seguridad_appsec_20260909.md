# Audita skills de AppSec

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/b1aa195e-424f-4c84-a542-4c4c78bccc43/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a reconstruir la solicitud desde el archivo adjunto y revisar el contexto mínimo del repositorio antes de actuar, para respetar su estructura y decisiones previas.
>
> <details><summary>Explored a file, ran 5 commands</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/b1aa195e-424f-4c84-a542-4c4c78bccc43/pasted-text.txt`
>
> </details>
>
> - Ran `rg -n -i --glob 'MEMORY.md' 'seguridad-appsec|appsec|security|gen-ai-skills' 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> - Ran `rg --files 'gen-ai-skills/skills/seguridad-appsec'`
>
> - Ran `Get-Content -Encoding utf8 'C:\Users\xbash\.codex\memories\MEMORY.md' | Select-Object -First 45`
>
> - Ran `git status --short --branch`
>
> - Ran `rg --files -g 'AGENTS.md' -g 'README*' -g 'CONTEXTO*' -g 'DECISIONES*' -g 'PENDIENTES*' -g 'BITACORA*' -g '!gen-ai-skills/skills/seguridad-appsec/**'`
>
> </details>
>
> El objetivo está claro: entregaré un diagnóstico únicamente, sin modificar archivos. El checkout efectivo es `C:\rutinas-local\gen-ai-skills\gen-ai-skills`; el directorio superior no es el repositorio Git. Encontré 12 archivos en `skills/seguridad-appsec`, incluidos base, checklist, README y nueve módulos especializados.
>
> <details><summary>Ran 6 commands</summary>
>
> - Ran `Get-ChildItem 'skills\seguridad-appsec' -File | Select-Object Name,Length,LastWriteTime | Format-Table -AutoSize`
> - Ran `Get-Content -Encoding utf8 'README.md'; Get-Content -Encoding utf8 'docs\CONTEXTO_PROYECTO.md'; Get-Content -Encoding utf8 'docs\DECISIONES_TECNICAS.md'`
> - Ran `git status --short --branch`
> - Ran `rg --files -g 'AGENTS.md' -g 'GEMINI.md' -g 'README*' -g 'CONTEXTO*' -g 'DECISIONES*' -g 'PENDIENTES*' -g 'BITACORA*'`
> - Ran `$files = @('skills\seguridad-appsec\README.md','skills\seguridad-appsec\instrucciones_base_appsec.md','skills\seguridad-appsec\checklist_appsec.md','skills\seguridad-appsec\auth_autorizacion_sesiones_reglas.md','skills\seguridad-appsec\cripto_secretos_datos_reglas.md','skills\seguridad-appsec\gobernanza_secure_sdlc_modelado_reglas.md'); foreach ($f in $files) { Write-Output "===== $f ====="; Get-Content -Raw -Encoding utf8 $f }`
> - Ran `$files = @('skills\seguridad-appsec\owasp_web_api_reglas.md','skills\seguridad-appsec\pentesting_autorizado_reporte_reglas.md','skills\seguridad-appsec\revision_codigo_logica_reglas.md','skills\seguridad-appsec\supply_chain_sbom_dependencias_reglas.md','skills\seguridad-appsec\hardening_configuracion_infra_reglas.md','skills\seguridad-appsec\cloud_contenedores_k8s_reglas.md'); foreach ($f in $files) { Write-Output "===== $f ====="; Get-Content -Raw -Encoding utf8 $f }`
>
> </details>
>
> La lectura completa muestra una arquitectura coherente de base + módulos + checklist, pero también confirma varias fronteras que debo contrastar con `seguridad-opsec` e `ingenieria-software`, especialmente cloud, hardening, AppSec general y revisión de código. Haré esa comparación para no declarar redundancias solo por nombres similares.
>
> <details><summary>Ran 15 commands</summary>
>
> - Ran `$files = @('skills\seguridad-opsec\README.md','skills\seguridad-opsec\instrucciones_base_secops.md','skills\seguridad-opsec\appsec_api_seguridad_aplicativa_reglas.md','skills\seguridad-opsec\cloud_contenedores_k8s_reglas.md','skills\seguridad-opsec\hardening_redes_endpoints_servidores_reglas.md','skills\seguridad-opsec\iam_identidad_accesos_reglas.md','skills\seguridad-opsec\vulnerabilidades_parches_eol_reglas.md'); foreach ($f in $files) { Write-Output "===== $f ====="; Get-Content -Raw -Encoding utf8 $f }`
> - Ran `$files = @('skills\ingenieria-software\README.md','skills\ingenieria-software\seguridad_codigo_reglas.md','skills\ingenieria-software\pruebas_calidad_reglas.md','skills\desarrollo-ia\README.md'); foreach ($f in $files) { if (Test-Path $f) { Write-Output "===== $f ====="; Get-Content -Raw -Encoding utf8 $f } }`
> - Ran `Get-Content -Raw -Encoding utf8 'docs\PENDIENTES.md'; Get-Content -Raw -Encoding utf8 'docs\BITACORA_AGENTES.md'`
> - Ran ``$files = Get-ChildItem 'skills\seguridad-appsec' -File | Sort-Object Name; foreach ($f in $files) { $txt = Get-Content -Raw -Encoding utf8 $f.FullName; $lines = ($txt -split "`n").Count; $words = ([regex]::Matches($txt,'\S+')).Count; $chars = $txt.Length; "{0}`tlines={1}`twords={2}`tchars={3}" -f $f.Name,$lines,$words,$chars }``
> - Ran `git status --short -- 'skills/seguridad-appsec'; git ls-files -- 'skills/seguridad-appsec'`
> - Ran `$files = Get-ChildItem 'skills\seguridad-appsec' -File | Sort-Object Name; $total=0; foreach ($f in $files) { $txt=Get-Content -Raw -Encoding utf8 $f.FullName; $words=([regex]::Matches($txt,'\S+')).Count; $total += $words; "{0}: {1} words" -f $f.Name,$words }; "TOTAL: $total words"`
> - Ran `$files = Get-ChildItem 'skills\seguridad-appsec' -File | Sort-Object Name; foreach ($f in $files) { $hits = Select-String -Path $f.FullName -Pattern 'USAR CUANDO|NO USAR CUANDO|Aplicar cuando|No entregar|No incluye|Validación mínima|criterio de aceptación|riesgo residual' -Encoding utf8; "===== $($f.Name) ====="; $hits | ForEach-Object { "{0}: {1}" -f $_.LineNumber,$_.Line.Trim() } }`
> - Ran `$files = Get-ChildItem 'skills\seguridad-appsec' -File -Filter '*.md' | Sort-Object Name; $patterns = @('No entregar','No diseñar','No hardcodear','No inventar','autoriz','evidencia','validación mínima','criterio de aceptación','dry-run','logs'); foreach ($p in $patterns) { $n=0; foreach ($f in $files) { $n += (Select-String -Path $f.FullName -Pattern $p -SimpleMatch -Encoding utf8 | Measure-Object).Count }; "{0}: {1} files/occurrences" -f $p,$n }`
> - Ran `$base=(Get-Content -Raw -Encoding utf8 'skills\seguridad-appsec\instrucciones_base_appsec.md'); $check=(Get-Content -Raw -Encoding utf8 'skills\seguridad-appsec\checklist_appsec.md'); $bw=([regex]::Matches($base,'\S+')).Count; $cw=([regex]::Matches($check,'\S+')).Count; "base=$bw checklist=$cw base+checklist=$($bw+$cw)"; Get-ChildItem 'skills\seguridad-appsec' -File -Filter '*_reglas.md' | Sort-Object Name | ForEach-Object { $w=([regex]::Matches((Get-Content -Raw -Encoding utf8 $_.FullName),'\S+')).Count; "{0}: module={1}; base+module={2}; base+module+checklist={3}" -f $_.BaseName,$w,$($bw+$w),$($bw+$w+$cw) }`
> - Ran `rg -n -F -e 'instrucciones_base_appsec.md' -e 'checklist_appsec.md' -e 'El dominio fuente tiene' -e 'USAR CUANDO' -e 'Aplicar cuando' -e 'referencia 2026' -e 'Chile/LatAm' -e 'No entregar' -e 'No invent' 'skills\seguridad-appsec'`
> - Ran `rg -n -F -e 'cloud, IAM' -e 'contenedores' -e 'Kubernetes' -e 'Secure SDLC' -e 'OWASP' -e 'EOL/EOS' -e 'hardening' -e 'autorización' 'skills\seguridad-appsec\*.md' 'skills\seguridad-opsec\*.md' 'skills\ingenieria-software\*.md'`
> - Ran `rg -n -i --glob '*.md' -e 'cloud, IAM' -e 'contenedores' -e 'Kubernetes' -e 'Secure SDLC' -e 'OWASP' -e 'EOL/EOS' -e 'hardening' -e 'autorización' 'skills\seguridad-appsec' 'skills\seguridad-opsec' 'skills\ingenieria-software'`
> - Ran `Get-Content -Raw -Encoding utf8 'docs\CONTEXT.md'; Get-Content -Raw -Encoding utf8 'docs\DECISIONS.md'; Get-Content -Raw -Encoding utf8 'docs\HANDOFF.md'`
> - Ran `Get-Content -Raw -Encoding utf8 'CONTRIBUTING.md'`
> - Ran `$files=@('skills\seguridad-appsec\README.md','skills\seguridad-appsec\instrucciones_base_appsec.md','skills\seguridad-appsec\checklist_appsec.md','skills\seguridad-opsec\README.md','skills\seguridad-opsec\instrucciones_base_secops.md'); foreach($f in $files){"===== $f ====="; $i=0; Get-Content -Encoding utf8 $f | ForEach-Object { $i++; if($i -le 80){'{0,3}: {1}' -f $i,$_} }}`
>
> </details>
>
> La comparación confirma que las principales redundancias no son internas solamente: `cloud_contenedores_k8s`, hardening, gestión de vulnerabilidades/AppSec y seguridad de código también aparecen en dominios vecinos. Ahora cerraré el diagnóstico con comprobaciones estáticas de integridad, conteo verificable y una propuesta conservadora sin fusionar ni eliminar módulos por intuición.
>
> <details><summary>Ran 3 commands</summary>
>
> - Ran ``$files=Get-ChildItem 'skills\seguridad-appsec' -File -Filter '*.md' | Sort-Object Name; $badBom=0;$badCrLf=0;$badTrail=0;$empty=0; foreach($f in $files){$b=[IO.File]::ReadAllBytes($f.FullName);$bom=($b.Length -ge 3 -and $b[0]-eq 0xEF -and $b[1]-eq 0xBB -and $b[2]-eq 0xBF);$s=[Text.Encoding]::UTF8.GetString($b);$crlf=$s.Contains("`r`n");$trail=($s -split "`n" | Where-Object {$_ -match '[ 	]+$'}).Count;$isEmpty=[string]::IsNullOrWhiteSpace($s);if($bom){$badBom++};if($crlf){$badCrLf++};if($trail -gt 0){$badTrail++};if($isEmpty){$empty++};"{0}: BOM={1}; CRLF={2}; trailing_lines={3}; empty={4}" -f $f.Name,$bom,$crlf,$trail,$isEmpty};"SUMMARY: md=$($files.Count); BOM_files=$badBom; CRLF_files=$badCrLf; files_with_trailing=$badTrail; empty=$empty"``
> - Ran `git check-attr text eol -- 'skills/seguridad-appsec/*.md'; Get-Content -Raw -Encoding utf8 '.gitattributes'; Get-Content -Raw -Encoding utf8 '.editorconfig'`
> - Ran `$fs=Get-ChildItem 'skills\seguridad-appsec' -File -Filter '*.md' | Where-Object {$_.Name -ne 'README.md'}; $map=@{}; foreach($f in $fs){foreach($line in (Get-Content -Encoding utf8 $f.FullName)){ $n=$line.Trim(); if($n.Length -gt 20 -and $n -notmatch '^#'){ if(-not $map.ContainsKey($n)){$map[$n]=New-Object System.Collections.Generic.List[string]};$map[$n].Add($f.Name)}}}; $map.GetEnumerator() | Where-Object {$_.Value.Count -ge 2} | Sort-Object {$_.Value.Count} -Descending | Select-Object -First 30 | ForEach-Object {"$($_.Value.Count)x: $($_.Key) :: $([string]::Join(', ',$_.Value))"}`
>
> </details>
</details>

# 1. Resumen ejecutivo

Audité el contenido actual del dominio:

- **12 archivos Markdown físicos**.
- **10 unidades de instrucción**: 1 base y 9 módulos especializados.
- **1 checklist operativo**.
- **1 README de navegación**.

Estado general: **bueno y funcional**, con límites defensivos claros, buena cobertura temática y módulos de tamaño relativamente homogéneo. La principal deuda está en la arquitectura de contexto y las fronteras con `seguridad-opsec` e `ingenieria-software`.

Nivel estimado de optimización: **medio-alto**, pero basado solo en evidencia estática. No se ejecutaron pruebas funcionales con LLM ni mediciones reales de tokens.

Principales hallazgos:

1. La base tiene **709 palabras** y concentra cobertura, formato, fuentes, seguridad y automatización defensiva.
2. Los módulos tienen entre **233 y 286 palabras**, pero repiten semánticamente autorización, evidencia, validación y límites ofensivos.
3. Hay solapamiento importante entre AppSec y `seguridad-opsec`, especialmente en cloud, hardening, vulnerabilidades y AppSec general.
4. La activación es razonablemente clara, pero todos los módulos usan `Aplicar cuando` y ninguno define explícitamente `NO USAR CUANDO`.
5. El árbol actual cumple la estructura base + módulos + checklist, pero el README podría ofrecer un routing más preciso.
6. Los 12 archivos están en CRLF, aunque `.gitattributes` y `.editorconfig` declaran LF.

No modifiqué ningún archivo.

# 2. Inventario funcional

El inventario está documentado en [`skills/seguridad-appsec/README.md`](/C:/rutinas-local/gen-ai-skills/gen-ai-skills/skills/seguridad-appsec/README.md).

| Archivo | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| `instrucciones_base_appsec.md` | Invariantes AppSec, límites defensivos, evidencia, estilo, código y formato | Siempre que la tarea sea principalmente AppSec | Operativa, demasiado amplia |
| `gobernanza_secure_sdlc_modelado_reglas.md` | Secure SDLC, threat modeling, requisitos, madurez y backlog | Diseño, arquitectura, gobierno o requisitos de seguridad | Operativa |
| `owasp_web_api_reglas.md` | Seguridad web y APIs | Revisión de endpoints, sesiones, CORS, errores, GraphQL o controles API | Operativa |
| `revision_codigo_logica_reglas.md` | Revisión de código y lógica de negocio | Código, flujos transaccionales, validaciones o parches defensivos | Operativa |
| `auth_autorizacion_sesiones_reglas.md` | Identidad aplicativa, sesiones y autorización | Login, MFA, JWT, OAuth/OIDC, roles o multi-tenant | Operativa |
| `cripto_secretos_datos_reglas.md` | Criptografía, secretos, TLS y datos sensibles | Cifrado, llaves, certificados, secretos o privacidad técnica | Operativa |
| `supply_chain_sbom_dependencias_reglas.md` | Dependencias, SBOM, CVEs y procedencia | Librerías, imágenes, pipelines, licencias o EOL/EOS | Operativa |
| `hardening_configuracion_infra_reglas.md` | Hardening de infraestructura que soporta aplicaciones | OS, middleware, DB, TLS, puertos, permisos o servicios | Operativa, frontera amplia |
| `cloud_contenedores_k8s_reglas.md` | Seguridad de cloud, contenedores y Kubernetes | IAM cloud, storage, workloads, ingress, secrets o policies | Operativa, alto solapamiento externo |
| `pentesting_autorizado_reporte_reglas.md` | Alcance, reglas de compromiso, evidencia y reporte | Pentesting autorizado, validación de controles o remediaciones | Operativa |
| `checklist_appsec.md` | Control de cierre transversal | Revisiones, reportes, scripts y planes de remediación | Operativa, cargar al cierre |
| `README.md` | Índice y guía de carga | Seleccionar archivos del dominio | Adecuado, mejorable como router |

La afirmación del README de **11 archivos activos** es consistente si se excluye el propio README: base + 9 módulos + checklist.

# 3. Evaluación detallada

Las puntuaciones son cualitativas y no representan un promedio.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base AppSec | 5 | 4 | 4 | 4 | 3 | 5 | 4 | 2 | **MEJORAR** |
| Gobernanza / SDLC | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | **MEJORAR** |
| OWASP Web/API | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | **MANTENER_CON_CAMBIOS_MENORES** |
| Revisión de código | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | **MANTENER_CON_CAMBIOS_MENORES** |
| Auth / autorización | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 4 | **MANTENER_CON_CAMBIOS_MENORES** |
| Cripto / secretos / datos | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | **MANTENER** |
| Supply chain / SBOM | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | **MEJORAR** |
| Hardening aplicativa | 4 | 3 | 4 | 4 | 4 | 4 | 4 | 2 | **MEJORAR** |
| Cloud / contenedores / K8s | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 2 | **MEJORAR** |
| Pentesting autorizado | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 3 | **MANTENER_CON_CAMBIOS_MENORES** |
| Checklist AppSec | 5 | 3 | 5 | 5 | 5 | 4 | 5 | 3 | **MANTENER_CON_CAMBIOS_MENORES** |

Observaciones principales:

- **Base:** esencial, pero combina instrucciones normativas, mapa temático, formato, fuentes y automatización. Debe compactarse y dejar más contenido especializado en los módulos.
- **Gobernanza:** aporta valor propio, aunque amenaza, madurez y reporting se aproximan a `seguridad-opsec`.
- **OWASP:** bien acotada a superficies web/API. Su principal solapamiento es con autenticación y lógica de negocio.
- **Revisión de código:** útil y accionable. Debe distinguir mejor entre revisión general de código y auditoría AppSec profunda.
- **Auth:** es uno de los módulos más específicos y reutilizables. Su frontera correcta es identidad aplicativa, no IAM corporativo.
- **Cripto:** presenta buen equilibrio entre cobertura y especificidad. No hay evidencia suficiente para fusionarla o dividirla.
- **Supply chain:** combina dependencias aplicativas, imágenes, pipelines y gobierno de vulnerabilidades. Debe separar claramente riesgo de software de gestión corporativa de vulnerabilidades.
- **Hardening:** su alcance incluye OS, redes y firewall, lo que invade `seguridad-opsec`.
- **Cloud:** coherente como módulo, pero muy próximo al módulo cloud de `seguridad-opsec`.
- **Pentesting:** mantiene límites seguros y estructura de reporte. Debe aclarar cuándo se usa como módulo independiente y cuándo requiere OWASP, Auth o Cloud.
- **Checklist:** es denso y operativo. La repetición respecto de la base es aceptable porque se carga al cierre, no por defecto.

## Activación recomendada

- Base: **USAR CUANDO:** la tarea trate principalmente de seguridad de aplicaciones o producto. **NO USAR CUANDO:** sea exclusivamente SOC, respuesta a incidentes, IAM corporativo o hardening de endpoints.
- Gobernanza: **USAR CUANDO:** se definan requisitos, arquitectura, Secure SDLC, amenazas o backlog AppSec. **NO USAR CUANDO:** solo se revise código puntual sin decisiones de diseño.
- OWASP: **USAR CUANDO:** haya web, API, GraphQL, gRPC, CORS, sesiones o controles de exposición. **NO USAR CUANDO:** el problema sea exclusivamente de infraestructura interna.
- Revisión de código: **USAR CUANDO:** se analicen código, validaciones, lógica de negocio o parches defensivos. **NO USAR CUANDO:** solo se diseñe una política organizacional.
- Auth: **USAR CUANDO:** se revisen login, tokens, sesiones, MFA, roles, tenants o autorización aplicativa. **NO USAR CUANDO:** se trate de altas/bajas corporativas, PAM o recertificación empresarial.
- Cripto: **USAR CUANDO:** haya cifrado, hashing, TLS, secretos, llaves o datos sensibles. **NO USAR CUANDO:** la solicitud sea exclusivamente de cumplimiento legal o gobierno de privacidad.
- Supply chain: **USAR CUANDO:** se revisen dependencias, SBOM, imágenes, CVEs, licencias o procedencia. **NO USAR CUANDO:** se gestione un programa corporativo completo de vulnerabilidades y SLAs.
- Hardening: **USAR CUANDO:** la configuración de servidores o middleware afecte directamente a una aplicación. **NO USAR CUANDO:** el alcance principal sean endpoints, redes corporativas o servidores generales.
- Cloud: **USAR CUANDO:** se analicen workloads, servicios cloud, contenedores o Kubernetes de una aplicación. **NO USAR CUANDO:** se trate de postura cloud corporativa transversal.
- Pentesting: **USAR CUANDO:** exista pentesting autorizado, laboratorio, validación controlada o reporte. **NO USAR CUANDO:** se solicite explotación, evasión o intrusión no autorizada.
- Checklist: **USAR CUANDO:** se cierre una revisión, reporte, script o plan AppSec. **NO USAR CUANDO:** se responda una consulta breve sin entregable.

# 4. Problemas detectados

## Redundancias

No detecté líneas idénticas repetidas entre módulos, pero sí repetición semántica:

- autorización y límites white-hat;
- separación entre evidencia, hipótesis, impacto y riesgo;
- no exposición de secretos;
- validación mínima;
- criterios de aceptación;
- logs sin datos sensibles;
- pruebas permitidas y prohibidas.

Esta repetición es parcialmente necesaria en seguridad, pero actualmente puede producir divergencia entre formulaciones.

## Solapamientos

Los principales son:

1. `owasp_web_api` ↔ `auth_autorizacion_sesiones`.
2. `owasp_web_api` ↔ `revision_codigo_logica`.
3. `auth_autorizacion_sesiones` ↔ `revision_codigo_logica`.
4. `cloud_contenedores_k8s` ↔ `supply_chain_sbom`.
5. `cloud_contenedores_k8s` ↔ `hardening_configuracion_infra`.
6. `gobernanza_secure_sdlc_modelado` ↔ `pentesting_autorizado_reporte`.
7. AppSec completo ↔ `seguridad-opsec/appsec_api_seguridad_aplicativa`.
8. Cloud AppSec ↔ `seguridad-opsec/cloud_contenedores_k8s`.
9. Hardening AppSec ↔ `seguridad-opsec/hardening_redes_endpoints_servidores`.
10. Supply chain AppSec ↔ `seguridad-opsec/vulnerabilidades_parches_eol`.
11. Revisión AppSec ↔ `ingenieria-software/seguridad_codigo_reglas`.

## Exceso de contexto

El dominio completo contiene aproximadamente **3.577 palabras**.

La carga recomendada base + un módulo varía entre **942 y 995 palabras**. Si además se incorpora el checklist, varía entre **1.233 y 1.286 palabras**. Estas cifras son una medida estática de palabras, no una medición de tokens ni de comportamiento del modelo.

La mayor oportunidad está en:

- compactar la base de 709 palabras;
- evitar repetir en la base el mapa ya presente en el README;
- centralizar invariantes defensivos;
- convertir el README en un router de tareas;
- no cargar checklist salvo al cierre.

## Ambigüedad

- `Aplicar cuando` es suficientemente comprensible, pero menos detectable que una sección explícita `USAR CUANDO`.
- No se define cuándo la exigencia de reglas de compromiso aplica a revisión local de código, análisis estático o revisión documental.
- “Severidad cualitativa” no tiene una escala mínima común.
- No se explicita qué módulo debe ser principal cuando una tarea combina API, Auth, Cloud y Supply chain.
- La referencia a “Chile/LatAm y referencia 2026” puede inducir expectativas normativas o temporales que los archivos no desarrollan.

## Fragmentación

No hay evidencia suficiente para fusionar módulos. Los nueve subtemas son distinguibles y cada uno contiene reglas propias.

Tampoco hay evidencia suficiente para dividir `cloud` o `hardening`; el problema principal es de frontera, no de tamaño interno.

## Problemas arquitectónicos

- AppSec y SecOps mantienen módulos casi equivalentes para cloud y AppSec defensivo.
- No existe una matriz explícita de propiedad de reglas entre dominios.
- El README orienta la carga, pero no ofrece recetas concretas como “API + Auth” o “Cloud + Supply”.
- El working tree contiene la migración en curso: archivos numerados antiguos aparecen eliminados y los nombres descriptivos actuales aparecen no versionados. Esto debe tratarse como estado de trabajo, no como baseline consolidado.
- Todos los archivos actuales están en CRLF, pese a la política declarada de LF.

# 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Todos los módulos | Dependiente | Alta | Mantener como base obligatoria, pero compactarla |
| Base | Checklist | Complementaria | Media | Mantener checklist solo al cierre |
| Gobernanza | Pentesting | Complementaria | Media | Gobernanza define requisitos; pentest valida controles |
| OWASP | Auth | Parcialmente redundante | Media | OWASP cubre superficie; Auth cubre identidad y sesión |
| OWASP | Revisión de código | Parcialmente redundante | Media | Separar revisión externa/API de revisión de implementación |
| Auth | Revisión de código | Complementaria | Baja | Auth define controles; código verifica implementación |
| Cripto | Auth | Complementaria | Baja | Separar gestión criptográfica de sesión/token |
| Cloud | Supply chain | Parcialmente redundante | Media | Cloud cubre runtime; Supply cubre procedencia e inventario |
| Cloud | Hardening | Complementaria | Media | Cloud cubre plataforma; hardening configuración aplicativa |
| Gobernanza | Checklist | Dependiente | Baja | Checklist verifica trazabilidad y cierre |
| AppSec | SecOps AppSec | Altamente redundante | Alta | Establecer propiedad y routing entre dominios |
| AppSec Cloud | SecOps Cloud | Altamente redundante | Alta | Separar workload/producto de postura cloud corporativa |
| AppSec Hardening | SecOps Hardening | Altamente redundante | Alta | AppSec: middleware y app; SecOps: OS, red y endpoints |
| AppSec Supply | SecOps Vulnerabilidades | Parcialmente redundante | Alta | AppSec: dependencias/SBOM; SecOps: programa, SLA y exposición |
| AppSec Código | Ingeniería Software Seguridad | Parcialmente redundante | Media | Ingeniería Software cubre mínimos; AppSec cubre auditoría profunda |

# 6. Propuesta de arquitectura objetivo

La estructura física actual es adecuada:

```text
README.md
    ↓
instrucciones_base_appsec.md
    ↓
módulo principal
    ↓
módulos complementarios solo si la tarea los requiere
    ↓
checklist_appsec.md al cierre
```

Propuesta conservadora:

```text
skills/seguridad-appsec/
├── README.md
│   ├── mapa de archivos
│   ├── tabla de routing por tarea
│   └── fronteras con seguridad-opsec e ingenieria-software
├── instrucciones_base_appsec.md
│   ├── invariantes defensivos
│   ├── evidencia y no invención
│   ├── límites de autorización
│   └── formato general mínimo
├── módulos especializados
│   ├── gobernanza / SDLC
│   ├── OWASP / Web / API
│   ├── código / lógica
│   ├── auth / sesiones
│   ├── cripto / secretos / datos
│   ├── supply chain
│   ├── hardening aplicativa
│   ├── cloud / contenedores / K8s
│   └── pentesting autorizado
└── checklist_appsec.md
```

No recomiendo crear otra skill base transversal dentro de AppSec: aumentaría la carga y duplicaría el papel de `instrucciones_base_appsec.md`.

# 7. Acciones recomendadas

## P0 — Críticas

1. Definir fronteras entre AppSec, SecOps e Ingeniería de Software.
2. Condicionar la exigencia de reglas de compromiso según el tipo de tarea:
   - activo externo o producción: autorización completa;
   - revisión local de código o documentos: alcance del artefacto y límites seguros.
3. Evitar que cloud, hardening o vulnerabilidades sean activados simultáneamente desde ambos dominios sin routing explícito.

## P1 — Alto impacto

1. Añadir una tabla de routing concreta al README:
   - API: base + OWASP;
   - API con identidad: base + OWASP + Auth;
   - revisión de código: base + código;
   - código con controles de identidad: base + código + Auth;
   - contenedor: base + Cloud + Supply;
   - diseño: base + Gobernanza;
   - pentest: base + Pentest + módulo técnico afectado.
2. Compactar la base y retirar contenido de índice ya cubierto por README.
3. Definir propiedad entre dominios:
   - AppSec: aplicación, API, código, identidad aplicativa, dependencias y workloads;
   - SecOps: infraestructura corporativa, IAM empresarial, SOC, incidentes y programa de vulnerabilidades;
   - Ingeniería Software: prácticas generales de código y pruebas.
4. Normalizar los archivos a LF conforme a la política del repositorio.

## P2 — Optimización

1. Uniformar `USAR CUANDO` y `NO USAR CUANDO` en todos los módulos.
2. Definir una escala cualitativa mínima para severidad o indicar que debe usarse la escala del marco elegido.
3. Reducir la lista de fuentes de la base a categorías y mantener referencias concretas solo donde cambien la decisión.
4. Retirar o volver condicional la frase “referencia 2026”.
5. Homogeneizar términos como “validación mínima”, “criterio de aceptación” y “riesgo residual”.

## P3 — Opcional

1. Crear una matriz de propiedad de reglas entre dominios.
2. Ejecutar pruebas con tareas representativas y distintos conjuntos de archivos.
3. Medir palabras y tokens cargados, omisiones, correcciones y calidad de respuesta.

# 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---:|---:|---|
| Compactar la base | ↓↓ | ↔ o ↑ | ↑↑ | Medio |
| Routing detallado en README | ↓ | ↑↑ | ↑ | Bajo |
| Fronteras AppSec/SecOps | ↓↓ en cargas combinadas | ↑↑ | ↑↑ | Medio |
| Activación `USAR/NO USAR` | = | ↑ | ↑ | Bajo |
| Condicionar reglas de compromiso | = | ↑↑ | ↑ | Medio |
| Separar cloud runtime de postura cloud | ↓ | ↑ | ↑↑ | Medio |
| Separar Supply chain de gestión de vulnerabilidades | ↓ | ↑ | ↑↑ | Bajo |
| Normalizar LF | = | = | ↑ | Bajo |
| Matriz de propiedad de reglas | ↑ inicialmente | ↑ | ↑↑ | Bajo |

Las reducciones indicadas son estimaciones cualitativas. No representan tokens medidos.

# 9. Skills candidatas a modificación

## Mantener intactas

- `cripto_secretos_datos_reglas.md`, salvo que posteriormente se decida uniformar activadores.
- La estructura temática general de `pentesting_autorizado_reporte_reglas.md`.
- La existencia del checklist como capa de cierre.

## Compactar

- `instrucciones_base_appsec.md`.
- `README.md`, especialmente principios repetidos y routing genérico.

## Mejorar

- `gobernanza_secure_sdlc_modelado_reglas.md`.
- `owasp_web_api_reglas.md`.
- `revision_codigo_logica_reglas.md`.
- `auth_autorizacion_sesiones_reglas.md`.
- `supply_chain_sbom_dependencias_reglas.md`.
- `hardening_configuracion_infra_reglas.md`.
- `cloud_contenedores_k8s_reglas.md`.
- `pentesting_autorizado_reporte_reglas.md`.
- `checklist_appsec.md`.

## Fusionar

- Ninguna. No existe evidencia suficiente para fusionar módulos internos.

## Dividir

- Ninguna. La fragmentación actual es razonable.

## Reubicar

- No recomiendo mover archivos todavía.
- Sí recomiendo reubicar conceptualmente responsabilidades hacia `seguridad-opsec` e `ingenieria-software` mediante routing y límites explícitos.

## Eliminar o deprecar

- Ninguna.

# 10. Plan de refactorización

1. Confirmar el estado de la migración actual y preservar los cambios no versionados.
2. Definir una matriz de propiedad AppSec/SecOps/Ingeniería de Software.
3. Diseñar el routing del README.
4. Ajustar fronteras semánticas sin mover archivos.
5. Compactar la base conservando seguridad, veracidad, autorización y criterios de validación.
6. Añadir activadores explícitos a los módulos.
7. Normalizar codificación y finales de línea.
8. Ejecutar validación estática:
   - archivos esperados;
   - no vacíos;
   - referencias existentes;
   - sin BOM;
   - LF;
   - sin espacios finales.
9. Ejecutar validación funcional con casos representativos.
10. Medir contexto y tokens antes/después.
11. Solo después decidir si alguna fusión, división o reubicación está justificada.

## Conclusión

El dominio está en buen estado y sus módulos son útiles y reutilizables.
La mayor ineficiencia es la repetición semántica entre la base, los módulos y dominios vecinos.
La mayor oportunidad está en el routing y en separar claramente AppSec de SecOps.
Sí recomendaría refactorizar ahora, pero de forma conservadora y por fases.
La mejor relación calidad/tokens provendría de compactar la base y establecer fronteras de carga explícitas.
No hay evidencia para eliminar, fusionar o dividir módulos en esta etapa.
La calidad funcional y el ahorro real de tokens aún deben validarse con LLM y mediciones observadas.

Trazabilidad de contexto: se revisaron completos los 12 archivos actuales de `skills/seguridad-appsec`, además de `README.md`, `CONTRIBUTING.md`, `docs/CONTEXT.md`, `docs/DECISIONS.md`, `docs/HANDOFF.md`, `docs/PENDIENTES.md` y contrastes puntuales de `seguridad-opsec` e `ingenieria-software`.
