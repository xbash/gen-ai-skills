# Audita skills de seguridad OPSEC

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/7352c7c7-ebf2-46e1-b87b-052f40179ae4/pasted-text.txt`

<details><summary>6 previous messages</summary>

> Voy a leer el texto adjunto y revisar el contexto mínimo del repositorio para identificar con precisión qué acción solicita y si hay convenciones previas relevantes.
>
> <details><summary>Explored a file, ran 2 commands</summary>
>
> <details><summary>Explored a file</summary>
>
> - Read `C:/Users/xbash/.codex/attachments/7352c7c7-ebf2-46e1-b87b-052f40179ae4/pasted-text.txt`
>
> </details>
>
> - Ran `rg -n -i "seguridad-opsec|opsec|gen-ai-skills|refactor|carga progresiva|matriz.*propiedad" 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> - Ran `$m = Get-Content 'C:\Users\xbash\.codex\memories\MEMORY.md'; $m[0..42]; $m[614..660]`
>
> </details>
>
> El adjunto solicita un diagnóstico בלבד: auditoría completa del dominio `skills/seguridad-opsec`, sin modificar archivos todavía. Aplicaré el criterio conservador registrado para este repositorio: primero inventario y evidencia, luego relaciones y arquitectura propuesta; no concluiré mejoras funcionales a partir de tamaño estático בלבד.
>
> <details><summary>Ran 9 commands</summary>
>
> - Ran `Get-ChildItem -Force | Select-Object Mode,Name,Length`
> - Ran `git status --short --branch`
> - Ran `rg --files -g 'AGENTS.md' -g 'README*' -g 'CONTEXTO*' -g 'DECISIONES*' -g 'PENDIENTES*' -g 'BITACORA*' -g '.editorconfig' -g '.gitattributes'`
> - Ran `rg --files 'gen-ai-skills/skills/seguridad-opsec'`
> - Ran `git status --short --branch`
> - Ran `Get-ChildItem -Force | Select-Object Mode,Name,Length; Get-ChildItem 'skills/seguridad-opsec' -File | Select-Object Name,Length,@{N='Lineas';E={(Get-Content $_.FullName).Count}}`
> - Ran `Get-Content -Raw 'README.md'; Get-Content -Raw 'docs/CONTEXTO_PROYECTO.md'; Get-Content -Raw 'docs/DECISIONES_TECNICAS.md'; Get-Content -Raw 'docs/PENDIENTES.md'`
> - Ran `Get-Content -Raw 'skills/seguridad-opsec/README.md'; Get-Content -Raw 'skills/seguridad-opsec/instrucciones_base_secops.md'; Get-Content -Raw 'skills/seguridad-opsec/checklist_secops.md'`
> - Ran ``Get-ChildItem 'skills/seguridad-opsec' -File | Sort-Object Name | ForEach-Object { $lines=(Get-Content $_.FullName).Count; '{0}`t{1}`t{2}' -f $_.Name,$lines,$_.Length }``
>
> </details>
>
> El checkout está en `main`, pero tiene muchas modificaciones no relacionadas (incluidas eliminaciones y cambios de otros dominios); las preservaré y limitaré el trabajo a lectura. El dominio auditado contiene 13 archivos: README, base, 10 módulos especializados y checklist. Ahora estoy leyendo los módulos completos y contrastando su estructura real, no solo sus nombres.
>
> <details><summary>Ran 19 commands</summary>
>
> - Ran `$files=@('skills/seguridad-opsec/grc_riesgo_cumplimiento_reglas.md','skills/seguridad-opsec/modelado_amenazas_attck_intel_reglas.md','skills/seguridad-opsec/hardening_redes_endpoints_servidores_reglas.md','skills/seguridad-opsec/iam_identidad_accesos_reglas.md','skills/seguridad-opsec/soc_deteccion_siem_edr_reglas.md'); foreach($f in $files){ Write-Output "===== $f ====="; Get-Content -Encoding utf8 $f }`
> - Ran `$files=@('skills/seguridad-opsec/dfir_respuesta_incidentes_bcp_reglas.md','skills/seguridad-opsec/cloud_contenedores_k8s_reglas.md','skills/seguridad-opsec/vulnerabilidades_parches_eol_reglas.md','skills/seguridad-opsec/appsec_api_seguridad_aplicativa_reglas.md','skills/seguridad-opsec/seguridad_terceros_concientizacion_metricas_reglas.md'); foreach($f in $files){ Write-Output "===== $f ====="; Get-Content -Encoding utf8 $f }`
> - Ran `rg --files 'skills/seguridad-appsec' 'skills/desarrollo-ia' | Sort-Object`
> - Ran `Get-Content -Encoding utf8 'skills/seguridad-appsec/README.md'; Get-Content -Encoding utf8 'skills/desarrollo-ia/README.md'`
> - Ran `rg -n -i "seguridad|threat|amenaza|IAM|incidente|vulnerab|hardening|OWASP|MITRE|SOC|SIEM|DFIR|privileg|MFA" 'skills/seguridad-opsec' 'skills/seguridad-appsec' 'skills/desarrollo-ia'`
> - Ran `$files=@('skills/seguridad-appsec/instrucciones_base_appsec.md','skills/seguridad-appsec/gobernanza_secure_sdlc_modelado_reglas.md','skills/seguridad-appsec/cloud_contenedores_k8s_reglas.md','skills/seguridad-appsec/hardening_configuracion_infra_reglas.md','skills/seguridad-appsec/supply_chain_sbom_dependencias_reglas.md'); foreach($f in $files){ Write-Output "===== $f ====="; Get-Content -Encoding utf8 $f }`
> - Ran `$files=@('skills/seguridad-appsec/auth_autorizacion_sesiones_reglas.md','skills/seguridad-appsec/owasp_web_api_reglas.md','skills/seguridad-appsec/revision_codigo_logica_reglas.md','skills/seguridad-appsec/checklist_appsec.md'); foreach($f in $files){ Write-Output "===== $f ====="; Get-Content -Encoding utf8 $f }`
> - Ran `$files=@('skills/desarrollo-ia/seguridad/seguridad_modelos_ia_reglas.md','skills/desarrollo-ia/base/reglas_transversales_ia.md'); foreach($f in $files){ Write-Output "===== $f ====="; Get-Content -Encoding utf8 $f }`
> - Ran ``$files=Get-ChildItem 'skills/seguridad-opsec' -File -Filter '*.md'; foreach($f in $files){$text=Get-Content -Raw -Encoding utf8 $f.FullName; $words=([regex]::Matches($text,'\S+')).Count; $headers=([regex]::Matches($text,'(?m)^#{1,6} ')).Count; $bullets=([regex]::Matches($text,'(?m)^- ')).Count; '{0}`tbytes={1}`tlines={2}`twords={3}`theaders={4}`tbullets={5}' -f $f.Name,$f.Length,(Get-Content $f.FullName).Count,$words,$headers,$bullets}``
> - Ran ``$files=Get-ChildItem 'skills/seguridad-opsec' -File -Filter '*.md'; $map=@{}; foreach($f in $files){foreach($line in Get-Content -Encoding utf8 $f.FullName){$n=($line -replace '`[^`]+`','' -replace '\s+',' ').Trim().ToLowerInvariant(); if($n -and $n -notmatch '^#' -and $n.Length -ge 35){if(!$map.ContainsKey($n)){$map[$n]=@()} ; $map[$n]+=$f.Name}}}; $map.GetEnumerator() | Where-Object {$_.Value.Count -gt 1} | Sort-Object {$_.Value.Count},Name -Descending | ForEach-Object { '{0}`t{1}' -f $_.Value.Count,$_.Key; $_.Value | Sort-Object -Unique | ForEach-Object {'  '+$_} }``
> - Ran `rg -n "(Usar cuando|No usar cuando|Aplicar cuando|cargar|Carga|sustit|correspond|depend|seguridad-appsec|desarrollo-ia)" 'skills/seguridad-opsec'`
> - Ran `$p='skills/seguridad-opsec/instrucciones_base_secops.md'; $b=[IO.File]::ReadAllBytes($p); 'BOM='+([BitConverter]::ToString($b[0..2])); 'UTF8='+([Text.Encoding]::UTF8.GetString($b[0..([Math]::Min($b.Length-1,180))]))`
> - Ran ``$p='skills/seguridad-opsec/instrucciones_base_secops.md'; $raw=[IO.File]::ReadAllText($p,[Text.UTF8Encoding]::new($false)); [regex]::Matches($raw,'Ã|Â|â|�').Count; $raw.Contains("`r`n"); $raw.EndsWith("`n"); $raw -match '[ \t]+$'``
> - Ran ``$p='skills/seguridad-opsec/README.md'; $raw=[IO.File]::ReadAllText($p,[Text.UTF8Encoding]::new($false)); 'replacement='+([regex]::Matches($raw,'Ã|Â|â|�').Count); 'CRLF='+$raw.Contains("`r`n"); 'finalLF='+$raw.EndsWith("`n"); 'trailing='+($raw -match '(?m)[ \t]+$')``
> - Ran ``$files=Get-ChildItem 'skills/seguridad-opsec' -File -Filter '*.md'; foreach($f in $files){$raw=[IO.File]::ReadAllText($f.FullName,[Text.UTF8Encoding]::new($false)); $b=[IO.File]::ReadAllBytes($f.FullName); '{0}`tBOM={1}`tCRLF={2}`tLF={3}`ttrailing={4}' -f $f.Name,([BitConverter]::ToString($b[0..([Math]::Min(2,$b.Length-1))]) -eq 'EF-BB-BF'),$raw.Contains("`r`n"),$raw.EndsWith("`n"),($raw -match '(?m)[ \t]+$')}``
> - Ran ``$files=Get-ChildItem 'skills/seguridad-opsec' -File -Filter '*.md'; foreach($f in $files){$t=Get-Content -Raw -Encoding utf8 $f.FullName; $links=([regex]::Matches($t,'\[[^\]]+\]\([^\)]+\)|`\.\.?/[^`]+`')).Count; $refs=([regex]::Matches($t,'seguridad-appsec|desarrollo-ia|instrucciones_base_secops|checklist_secops')).Count; '{0}`tlinks_or_path_refs={1}`tcross_or_self_refs={2}' -f $f.Name,$links,$refs}``
> - Ran `Get-Content -Encoding utf8 .gitattributes; Get-Content -Encoding utf8 .editorconfig`
> - Ran `git status --short -- 'skills/seguridad-opsec'`
> - Ran `$m=Get-Content 'C:\Users\xbash\.codex\memories\MEMORY.md'; 1..42 | ForEach-Object { '{0}: {1}' -f $_,$m[$_-1] }; 650..657 | ForEach-Object { '{0}: {1}' -f $_,$m[$_-1] }`
>
> </details>
</details>

# Auditoría de `seguridad-opsec`

## 1. Resumen ejecutivo

Se analizaron los 12 archivos de instrucción activos del dominio, más su `README.md`; todos fueron leídos completos.

El dominio está funcionalmente bien orientado: tiene límites defensivos claros, controles operacionales útiles, criterios de validación y buena cobertura de SecOps. Sin embargo, presenta tres problemas principales:

1. Solapamiento significativo con `skills/seguridad-appsec`.
2. Falta de un contrato explícito de carga progresiva y propiedad de reglas.
3. Duplicación semántica entre base, checklist, GRC, métricas, IAM, cloud, hardening y vulnerabilidades.

El mayor candidato a reubicación es [`appsec_api_seguridad_aplicativa_reglas.md`](./gen-ai-skills/skills/seguridad-opsec/appsec_api_seguridad_aplicativa_reglas.md:1), porque existe un dominio AppSec separado con cobertura más completa.

La optimización posible es media-alta en selección de contexto y mantenibilidad, pero todavía no puede afirmarse una mejora de calidad ni una reducción efectiva de tokens sin pruebas funcionales con LLM.

Estado Git relevante: el dominio está en una transición no consolidada: los archivos numerados antiguos aparecen eliminados, los nombres descriptivos aparecen como no versionados y el README está modificado. No realicé cambios.

## 2. Inventario funcional

| Skill | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| `instrucciones_base_secops.md` | Rol, límites defensivos, evidencia, estilo, fuentes y formatos | La tarea sea SecOps amplia o aún no tenga módulo principal | Útil, demasiado amplia |
| `grc_riesgo_cumplimiento_reglas.md` | Gobierno, riesgo, controles, auditoría y reporting | Se evalúen riesgos, controles, cumplimiento o madurez | Sólida, solapa con terceros |
| `modelado_amenazas_attck_intel_reglas.md` | Amenazas, ATT&CK e inteligencia defensiva | Se modelen escenarios o se diseñen controles/detecciones | Sólida, solapa con SOC/AppSec |
| `hardening_redes_endpoints_servidores_reglas.md` | Endurecimiento de infraestructura tradicional | Se revisen OS, redes, servidores, TLS o superficie expuesta | Sólida, solapa con cloud/AppSec |
| `iam_identidad_accesos_reglas.md` | IAM empresarial, cuentas, privilegios y ciclo JML | Se revisen identidades, accesos o recertificación | Sólida, solapa con cloud/AppSec |
| `soc_deteccion_siem_edr_reglas.md` | Detección, triage, playbooks y métricas SOC | Se diseñen o revisen capacidades de monitoreo | Sólida, depende de DFIR |
| `dfir_respuesta_incidentes_bcp_reglas.md` | Incidentes, forense, continuidad y recuperación | Exista un incidente o se diseñe resiliencia/DR | Valiosa, relativamente amplia |
| `cloud_contenedores_k8s_reglas.md` | Seguridad de cloud, contenedores y Kubernetes | El objeto principal sea plataforma cloud o cluster | Útil, alto solapamiento |
| `vulnerabilidades_parches_eol_reglas.md` | CVEs, parches, EOL/EOS y priorización | Se gestionen vulnerabilidades de activos o plataformas | Sólida, solapa con AppSec supply chain |
| `appsec_api_seguridad_aplicativa_reglas.md` | AppSec, APIs, SDLC, SAST/DAST/SCA | La aplicación/producto sea el objeto principal | Debe reubicarse |
| `seguridad_terceros_concientizacion_metricas_reglas.md` | Terceros, SaaS, awareness y métricas | El riesgo dependa de proveedores, usuarios o cultura | Útil, algo amplia |
| `checklist_secops.md` | Verificación transversal de entregables | Al cerrar análisis, scripts, playbooks o planes | Útil, parcialmente redundante |

La clasificación se deriva de los apartados `Alcance`/`Aplicar cuando` existentes; ninguno contiene una sección literal `No usar cuando`.

## 3. Evaluación detallada

Puntuaciones independientes de 1 a 5; en redundancia, 5 significa mínima redundancia.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 4 | 4 | 3 | 3 | 5 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |
| GRC | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Amenazas | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Hardening | 5 | 4 | 4 | 4 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| IAM | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| SOC | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| DFIR/BCP | 5 | 5 | 4 | 4 | 3 | 4 | 3 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Cloud/K8s | 5 | 4 | 4 | 4 | 3 | 4 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |
| Vulnerabilidades | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| AppSec | 3 | 3 | 4 | 2 | 3 | 2 | 2 | 1 | REUBICAR |
| Terceros | 5 | 4 | 4 | 4 | 4 | 4 | 3 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Checklist | 5 | 3 | 4 | 5 | 3 | 5 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |

Evidencia estática:

- La base tiene 717 palabras.
- Los módulos especializados tienen entre 225 y 306 palabras.
- Las 12 unidades de instrucción suman aproximadamente 3.501 palabras.
- No se encontraron líneas idénticas largas repetidas; la redundancia es principalmente semántica.
- Los módulos no contienen referencias explícitas entre sí.
- Los archivos están en UTF-8 sin BOM y con final de línea final, pero en el checkout aparecen con CRLF pese a que [`.gitattributes`](./gen-ai-skills/.gitattributes:1) y [`.editorconfig`](./gen-ai-skills/.editorconfig:1) declaran LF.

## 4. Problemas detectados

### Redundancias

- La base repite cobertura y principios que luego reaparecen en módulos.
- El checklist repite evidencia, alcance, riesgo, rollback, logs y validación ya presentes en la base.
- GRC y terceros repiten riesgo residual, responsables, evidencias, métricas y reporting.
- IAM, cloud y terceros repiten MFA, accesos, cuentas de servicio, logs y permisos.
- Hardening y cloud repiten configuración segura, exposición, logging, privilegios y rollback.

Parte de esta repetición es necesaria para que los módulos sean portables cuando se cargan de forma aislada.

### Solapamientos relevantes

- El módulo AppSec de este dominio se superpone con [`skills/seguridad-appsec`](./gen-ai-skills/skills/seguridad-appsec/README.md:1), que ya posee módulos para OWASP, autenticación, código, supply chain, cloud y hardening.
- `cloud_contenedores_k8s` se superpone directamente con `seguridad-appsec/cloud_contenedores_k8s_reglas.md`.
- `vulnerabilidades_parches_eol` se superpone con `seguridad-appsec/supply_chain_sbom_dependencias_reglas.md`.
- `hardening_redes_endpoints_servidores` se superpone con `seguridad-appsec/hardening_configuracion_infra_reglas.md`.
- `iam_identidad_accesos` se superpone parcialmente con autenticación AppSec y con IAM cloud.
- `modelado_amenazas` y SOC son complementarios, pero no tienen frontera de activación explícita.

### Exceso de contexto

- La base enumera toda la cobertura del dominio aunque normalmente solo se necesita un módulo principal.
- La sección extensa de fuentes se carga en todas las tareas.
- El README identifica plataformas concretas, pero no define un router inequívoco.
- El checklist debería cargarse al cierre, no como contexto permanente.

### Ambigüedad

- La frase “usar el dominio separado correspondiente” no identifica explícitamente `skills/seguridad-appsec`.
- No existe una matriz de propiedad de reglas.
- No se distingue formalmente “IAM empresarial” de “autenticación/autorización de aplicación”.
- No se distingue formalmente “cloud de plataforma” de “cloud de workload aplicativa”.
- La referencia fija a “2026” puede quedar obsoleta.

### Fragmentación

No hay evidencia suficiente para fusionar los módulos principales. Sus fronteras temáticas son razonables y el tamaño individual es moderado.

La única fragmentación problemática es la distribución de AppSec entre dos dominios distintos.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| GRC | Terceros | Parcialmente redundantes | Media | GRC conserva riesgo corporativo; terceros conserva ciclo de proveedor |
| GRC | SOC | Complementarias | Baja | Separar reporting ejecutivo de métricas operacionales |
| Amenazas | SOC | Complementarias/dependientes | Media | Amenazas define escenarios; SOC define detecciones |
| Amenazas | AppSec gobernanza | Parcialmente redundantes | Media | Separar amenaza empresarial de amenaza de producto |
| Hardening | Cloud/K8s | Parcialmente redundantes | Alta | OS/redes/servidores versus plataforma cloud/Kubernetes |
| Hardening | AppSec hardening | Altamente redundantes | Alta | Aplicación e infraestructura de producto deben ir a AppSec |
| IAM | Cloud/K8s | Parcialmente redundantes | Media | IAM conserva ciclo de vida; cloud conserva configuración del proveedor |
| IAM | AppSec auth | Parcialmente redundantes | Alta | Identidad empresarial versus sesión/autorización de aplicación |
| IAM | Terceros | Complementarias | Media | IAM controla acceso; terceros controla riesgo contractual y baja |
| SOC | DFIR | Dependientes | Alta | SOC detecta/triagea; DFIR contiene, preserva y recupera |
| Cloud/K8s | AppSec cloud | Altamente redundantes | Alta | Selección por objeto primario: plataforma o workload |
| Vulnerabilidades | AppSec supply chain | Altamente redundantes | Alta | Activos corporativos versus dependencias/artefactos de software |
| Vulnerabilidades | Hardening | Complementarias | Media | Parche/configuración deben conservarse separados |
| Terceros | GRC | Parcialmente redundantes | Media | Evitar duplicar reporting y riesgo residual |
| AppSec-opsec | Seguridad AppSec | Potencialmente fusionables | Crítica | Reubicar o deprecar el módulo opsec |
| Checklist | Base | Repetición necesaria | Media | Mantener como validación de cierre |

## 6. Propuesta de arquitectura objetivo

### Estructura actual

```text
skills/seguridad-opsec/
├── README.md
├── instrucciones_base_secops.md
├── 10 módulos temáticos planos
└── checklist_secops.md
```

### Estructura propuesta

```text
skills/seguridad-opsec/
├── README.md                         # Router y contrato de carga
├── instrucciones_base_secops.md      # Reglas transversales mínimas
├── grc_riesgo_cumplimiento_reglas.md
├── modelado_amenazas_attck_intel_reglas.md
├── hardening_redes_endpoints_servidores_reglas.md
├── iam_identidad_accesos_reglas.md
├── soc_deteccion_siem_edr_reglas.md
├── dfir_respuesta_incidentes_bcp_reglas.md
├── cloud_contenedores_k8s_reglas.md
├── vulnerabilidades_parches_eol_reglas.md
├── seguridad_terceros_concientizacion_metricas_reglas.md
└── checklist_secops.md

appsec_api_seguridad_aplicativa_reglas.md
└── reubicado hacia skills/seguridad-appsec/
```

No recomiendo crear subdirectorios nuevos todavía. La cantidad y tamaño de módulos no justifican ese costo estructural.

El README debería declarar:

```text
Carga estándar:
base + un módulo principal
+ módulos complementarios solo si existe dependencia concreta
+ checklist al cierre
```

Y debería incluir reglas de selección por objeto primario:

- aplicación/producto/API → `seguridad-appsec`;
- infraestructura corporativa → `seguridad-opsec`;
- cloud de plataforma → `seguridad-opsec`;
- workload aplicativa en cloud → `seguridad-appsec`;
- IAM empresarial → `seguridad-opsec`;
- sesión/autorización de aplicación → `seguridad-appsec`.

## 7. Acciones recomendadas

### P0 — Críticas

- Resolver la propiedad del módulo AppSec antes de seguir agregando contenido.
- Confirmar que la transición Git actual —eliminaciones antiguas y archivos descriptivos no versionados— corresponde al trabajo intencional del usuario.
- Establecer la frontera formal entre `seguridad-opsec` y `seguridad-appsec`.

### P1 — Alto impacto

- Incorporar al README un router por objeto primario.
- Documentar carga base + módulo principal + dependencias concretas + checklist final.
- Crear una matriz de propiedad de reglas antes de fusionar o eliminar contenido.
- Acotar GRC, terceros, cloud, IAM y vulnerabilidades mediante reglas `No usar cuando` específicas.
- Convertir la referencia ambigua al “dominio separado” en una ruta explícita.

### P2 — Optimización

- Compactar la cobertura enumerativa de la base.
- Reducir la repetición de principios generales en módulos, conservando las salvaguardas necesarias para carga aislada.
- Mantener fuentes detalladas solo donde cambien la decisión técnica.
- Medir carga por palabras/tokens de los conjuntos de contexto reales.
- Normalizar LF posteriormente como tarea de higiene separada.

### P3 — Opcional

- Separar métricas ejecutivas de métricas SOC.
- Sustituir “referencia 2026” por una instrucción de verificación de vigencia.
- Añadir ejemplos mínimos de rutas de carga, sin convertirlos en contenido obligatorio.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---:|---:|---|
| Router y carga progresiva | ↓↓ | ↑ | ↑↑ | Medio |
| Reubicar módulo AppSec | ↓↓ | ↑ | ↑↑ | Medio-alto |
| Acotar cloud/IAM/hardening | ↓ | ↑ | ↑ | Medio |
| Compactar la base | ↓↓ | =/↑ | ↑ | Medio |
| Mantener checklist solo al cierre | ↓ | =/↑ | ↑ | Bajo |
| Matriz de propiedad de reglas | = | ↑↑ | ↑↑ | Bajo |
| Normalizar EOL | = | = | ↑ | Bajo |

Son estimaciones de diseño, no mediciones experimentales.

## 9. Skills candidatas a modificación

### Mantener prácticamente intactas

Ninguna requiere preservación literal absoluta, pero `modelado_amenazas`, `soc` y `dfir` tienen buen valor operativo y no deberían fusionarse sin evidencia adicional.

### Compactar

- `instrucciones_base_secops.md`
- `checklist_secops.md`
- parcialmente `grc_riesgo_cumplimiento_reglas.md`
- parcialmente `seguridad_terceros_concientizacion_metricas_reglas.md`

### Fusionar

No recomiendo fusiones inmediatas.

### Dividir

`dfir_respuesta_incidentes_bcp_reglas.md` podría dividirse en DFIR y continuidad en el futuro, pero solo si los casos reales muestran que se cargan por separado.

### Reubicar

- `appsec_api_seguridad_aplicativa_reglas.md` hacia `skills/seguridad-appsec`.

### Eliminar o deprecar

Ningún archivo debería eliminarse ahora. El módulo AppSec puede deprecarse después de verificar referencias y actualizar el router.

## 10. Plan de refactorización

1. Confirmar el estado Git actual y preservar la transición existente.
2. Crear una matriz de propiedad y frontera entre SecOps, AppSec y Desarrollo de IA.
3. Actualizar el README como router, sin mover todavía archivos.
4. Añadir límites explícitos solo en los módulos con mayor solapamiento.
5. Reubicar o deprecar el módulo AppSec después de comprobar referencias.
6. Compactar base y checklist conservando controles operativos.
7. Ejecutar validación estática: inventario, referencias, UTF-8, EOL, estructura y carga.
8. Ejecutar evaluación funcional con casos representativos.
9. Medir selección correcta, archivos cargados, tokens, omisiones, respuestas inseguras y necesidad de corrección.
10. Solo después decidir fusiones, divisiones o eliminaciones.

## Conclusión

El dominio está sano en contenido defensivo y valor operativo.
La mayor ineficiencia es el solapamiento entre SecOps y AppSec.
La mayor oportunidad es introducir selección por objeto primario y carga progresiva.
No recomendaría eliminar módulos principales ahora.
Sí recomendaría refactorizar el routing antes de compactar contenido.
La mejor relación calidad/tokens provendría de reubicar el módulo AppSec y cargar un único módulo principal con checklist al cierre.
No se modificaron archivos durante esta auditoría.
