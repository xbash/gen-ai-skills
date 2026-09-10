# Audita skills de operaciones TI

> User context
>
> Attachments:
> - # Rol Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño …: `C:/Users/xbash/.codex/attachments/f4238e89-5d40-40d5-a900-0090e773c6d6/pasted-text.txt`

<details><summary>8 previous messages</summary>

> Voy a leer el texto adjunto y recuperar solo el contexto previo relevante del repositorio antes de actuar, para respetar decisiones y convenciones ya establecidas.
>
> <details><summary>Ran a command</summary>
>
> - Ran `Get-Content -Raw -LiteralPath 'C:\Users\xbash\.codex\attachments\f4238e89-5d40-40d5-a900-0090e773c6d6\pasted-text.txt'; Write-Output '--- MEMORY HITS ---'; rg -n -i --max-count 40 'gen-ai-skills|ciencia-ingenieria-datos|desarrollo-ia|investigacion-ia|AGENTS|skill|refactor|contexto' 'C:\Users\xbash\.codex\memories\MEMORY.md'`
>
> </details>
>
> El encargo adjunto solicita un diagnóstico, no cambios: auditar todo `skills/operaciones-tecnologia`, evaluar cada skill y sus relaciones, y terminar con una arquitectura y plan conservadores. Mantendré explícitamente separadas la evidencia observada, las inferencias y las recomendaciones; no modificaré archivos.
>
> <details><summary>Ran 6 commands</summary>
>
> - Ran `Write-Output '--- FILES ---'; rg --files 'gen-ai-skills/skills/operaciones-tecnologia'; Write-Output '--- RELEVANT ROOT DOCS ---'; rg --files -g 'AGENTS.md' -g 'README*' -g 'CONTEXTO*' -g 'CONTEXT*' -g 'HANDOFF*' -g 'DECISION*' -g '*arquitect*' 'gen-ai-skills' 'C:\rutinas-local\gen-ai-skills' | Select-Object -First 200`
> - Ran `git status --short --branch; Write-Output '--- ROOT ---'; Get-ChildItem -Force -Name; Write-Output '--- TARGET ---'; Get-ChildItem -Force -Recurse -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia' | Select-Object FullName,Length,Mode`
> - Ran `Get-Content -Raw -LiteralPath 'C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T04-18-07-8GOd-refactorizacion_skills_continuidad_gen_ai_skills.md'; Write-Output '---'; Get-Content -Raw -LiteralPath 'C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T05-14-03-GBzq-refactor_investigacion_ia_carga_progresiva.md'`
> - Ran `$files = Get-ChildItem -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia' -File | Sort-Object Name; foreach ($f in $files) { Write-Output ('===== ' + $f.Name + ' ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath $f.FullName }`
> - Ran `git -C 'gen-ai-skills' status --short --branch; git -C 'gen-ai-skills' log -1 --oneline`
> - Ran `Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/README.md'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/docs/CONTEXTO_PROYECTO.md'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/docs/CONTEXT.md'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/docs/DECISIONES_TECNICAS.md'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/docs/HANDOFF.md'`
>
> </details>
>
> La inspección inicial confirma 10 archivos operativos más `README.md`, y que el repositorio está en un estado de trabajo ya modificado por una refactorización amplia no atribuida a esta auditoría. Preservaré ese estado y limitaré el análisis al dominio solicitado; ahora estoy completando la lectura de los módulos que no cabían en la primera salida.
>
> <details><summary>Ran 12 commands</summary>
>
> - Ran `Write-Output ('===== instrucciones_base_ops.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/instrucciones_base_ops.md'
> Write-Output ('===== checklist_script_operacional.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/checklist_script_operacional.md'`
> - Ran `Write-Output ('===== cloud_iac_kubernetes_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/cloud_iac_kubernetes_reglas.md'
> Write-Output ('===== incidentes_cambios_dr_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/incidentes_cambios_dr_reglas.md'`
> - Ran `Write-Output ('===== bases_datos_operacion_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/bases_datos_operacion_reglas.md'
> Write-Output ('===== linux_rhel_oel_bash_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/linux_rhel_oel_bash_reglas.md'`
> - Ran `Write-Output ('===== observabilidad_continuidad_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/observabilidad_continuidad_reglas.md'
> Write-Output ('===== redes_conectividad_firewall_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/redes_conectividad_firewall_reglas.md'
> Write-Output ('===== virtualizacion_contenedores_reglas.md ====='); Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia/virtualizacion_contenedores_reglas.md'`
> - Ran ``$dir = Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; Get-ChildItem -LiteralPath $dir -File -Filter '*.md' | Sort-Object Name | ForEach-Object { $t = Get-Content -Encoding UTF8 -Raw -LiteralPath $_.FullName; $words = ([regex]::Matches($t, '\S+')).Count; $lines = ($t -split '\r?\n').Count; $head = ([regex]::Matches($t, '(?m)^#{1,6}\s+.*$') | ForEach-Object Value) -join ' | '; '{0}`tlines={1}`twords={2}`tchars={3}`theadings={4}' -f $_.Name,$lines,$words,$t.Length,$head };``
> - Ran `$dir = Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; $rows = @(); Get-ChildItem -LiteralPath $dir -File -Filter '*.md' | ForEach-Object { $file=$_.Name; $i=0; Get-Content -Encoding UTF8 -LiteralPath $_.FullName | ForEach-Object { $i++; $s=$_.Trim(); if ($s -and $s -notmatch '^#{1,6}\s' -and $s -notmatch '^[-*]\s*\[[ xX]\]' -and $s -notmatch '^[-*]\s') { $rows += [pscustomobject]@{Text=$s; File=$file; Line=$i} } } }; $rows | Group-Object Text | Where-Object Count -ge 2 | Sort-Object Count -Descending | Select-Object Count,Name,@{n='Locations';e={($_.Group | ForEach-Object { "$($_.File):$($_.Line)" }) -join ', '}} | Format-List`
> - Ran `Write-Output '--- DOMAIN REFERENCES IN PROJECT DOCS ---'; rg -n -i 'operaciones-tecnologia|instrucciones_base_ops|checklist_script_operacional|cloud_iac|incidentes_cambios|observabilidad_continuidad' 'gen-ai-skills/docs' 'gen-ai-skills/README.md' 'gen-ai-skills/skills' -g '*.md' -g '!skills/operaciones-tecnologia/*.md'`
> - Ran `git -C 'gen-ai-skills' ls-tree -r --name-only HEAD -- 'skills/operaciones-tecnologia'; Write-Output '--- STATUS TARGET ---'; git -C 'gen-ai-skills' status --short -- 'skills/operaciones-tecnologia'; Write-Output '--- AGENTS TARGET/PARENTS ---'; Get-ChildItem -LiteralPath 'gen-ai-skills/skills/operaciones-tecnologia','gen-ai-skills/skills','gen-ai-skills' -Filter 'AGENTS.md' -File -Force -ErrorAction SilentlyContinue | Select-Object -ExpandProperty FullName`
> - Ran `Write-Output '--- ACTIVATION AND VALIDATION TERMS ---'; rg -n -i 'usar cuando|no usar cuando|validaci[oó]n m[ií]nima|dry-run|rollback|backup|restore|RTO|RPO|Kubernetes|OpenShift|IAM|hardening|incidentes|logs|secretos|ambiente|producci[oó]n' 'gen-ai-skills/skills/operaciones-tecnologia'`
> - Ran `Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/seguridad-appsec/README.md'; Write-Output '--- SECOPS ---'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/seguridad-opsec/README.md'; Write-Output '--- SOFTWARE ---'; Get-Content -Encoding UTF8 -Raw -LiteralPath 'gen-ai-skills/skills/ingenieria-software/README.md'`
> - Ran `Write-Output '--- CONTEXT OPS ---'; rg -n -i -C 3 'operaciones|infraestructura|operacional|carga progresiva|base|checklist|dueño|propiedad|módulo|m[oó]dulo' 'gen-ai-skills/docs/CONTEXT.md' 'gen-ai-skills/docs/DECISIONES_TECNICAS.md' 'gen-ai-skills/docs/DECISIONS.md' 'gen-ai-skills/docs/HANDOFF.md' | Select-Object -First 240`
> - Ran `$p='gen-ai-skills/docs/DECISIONES_TECNICAS.md'; $lines=Get-Content -Encoding UTF8 -LiteralPath $p; for($i=96;$i -le [Math]::Min($lines.Count,180);$i++){ '{0}: {1}' -f $i,$lines[$i-1] }`
>
> </details>
>
> La lectura completa muestra una arquitectura coherente en intención —base, módulos temáticos y checklist—, pero todavía sin una capa transversal explícita ni una matriz de propiedad/activación para este dominio. También aparecen dos solapamientos relevantes: continuidad/incidentes y Kubernetes entre runtime/cloud-IaC. Haré una última pasada estática para no convertir esas observaciones en afirmaciones no verificadas.
>
> <details><summary>Ran 8 commands</summary>
>
> - Ran `$dir=Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $sum=0; foreach($f in $files){$n=([regex]::Matches((Get-Content -Encoding UTF8 -Raw $f.FullName),'\S+')).Count;$sum+=$n}; "FILES=$($files.Count) TOTAL_WORDLIKE_TOKENS=$sum"; $loadable=$files | Where-Object Name -ne 'README.md'; $base=$loadable | Where-Object Name -eq 'instrucciones_base_ops.md'; $check=$loadable | Where-Object Name -eq 'checklist_script_operacional.md'; $bw=([regex]::Matches((Get-Content -Encoding UTF8 -Raw $base.FullName),'\S+')).Count; $cw=([regex]::Matches((Get-Content -Encoding UTF8 -Raw $check.FullName),'\S+')).Count; "LOADABLE=$($loadable.Count) BASE=$bw CHECKLIST=$cw"; foreach($f in ($loadable | Where-Object Name -notin @('instrucciones_base_ops.md','checklist_script_operacional.md') | Sort-Object Name)){ $mw=([regex]::Matches((Get-Content -Encoding UTF8 -Raw $f.FullName),'\S+')).Count; "BASE_PLUS_$($f.BaseName)=$($bw+$mw) BASE_PLUS_MODULE_PLUS_CHECKLIST=$($bw+$mw+$cw)" }`
> - Ran ``$dir=Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; $issues=@(); foreach($f in Get-ChildItem -LiteralPath $dir -File -Filter '*.md'){ $b=[IO.File]::ReadAllBytes($f.FullName); if($b.Length -ge 3 -and $b[0]-eq 0xEF -and $b[1]-eq 0xBB -and $b[2]-eq 0xBF){$issues += "$($f.Name):BOM"}; $t=[IO.File]::ReadAllText($f.FullName); if($t.Contains("`r`n")){$issues += "$($f.Name):CRLF"}; if([regex]::IsMatch($t,'(?m)[ \t]+$')){$issues += "$($f.Name):TRAILING_WHITESPACE"}; if(-not $t.EndsWith("`n")){$issues += "$($f.Name):NO_FINAL_LF"} }; if($issues.Count){$issues}else{'NORMALIZATION=OK'}``
> - Ran `$dir=Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; $all=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; $heads=@{}; foreach($f in $all){$i=0; foreach($line in Get-Content -Encoding UTF8 $f.FullName){$i++; if($line -match '^#{1,6}\s+(.+)$'){ $key=$Matches[1].Trim().ToLowerInvariant(); if(-not $heads.ContainsKey($key)){$heads[$key]=@()} $heads[$key]+= "$($f.Name):$i" }}}; $heads.GetEnumerator() | Where-Object {$_.Value.Count -gt 1} | Sort-Object Key | ForEach-Object { "$($_.Key) => $($_.Value -join ', ')" }`
> - Ran `$dir=Resolve-Path 'gen-ai-skills/skills/operaciones-tecnologia'; $files=Get-ChildItem -LiteralPath $dir -File -Filter '*.md'; foreach($f in $files){$i=0; foreach($line in Get-Content -Encoding UTF8 $f.FullName){$i++; if($line -match '\[[^\]]+\]\(([^)]+)\)'){"$($f.Name):$i:$line"}}}; if(-not ($files | Select-String -Pattern '\[[^\]]+\]\(')){ 'MARKDOWN_LINKS=NONE_DETECTED' }`
> - Ran `rg -n '\[[^]]+\]\(' 'gen-ai-skills/skills/operaciones-tecnologia' -g '*.md'; if ($LASTEXITCODE -ne 0) { 'MARKDOWN_LINKS=NONE_DETECTED' }`
> - Ran `$p='C:\Users\xbash\.codex\memories\MEMORY.md'; $l=Get-Content -LiteralPath $p; for($i=25;$i -le 36;$i++){ '{0}: {1}' -f $i,$l[$i-1] }`
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T04-18-07-8GOd-refactorizacion_skills_continuidad_gen_ai_skills.md'; $l=Get-Content -Encoding UTF8 -LiteralPath $p; for($i=10;$i -le 38;$i++){ '{0}: {1}' -f $i,$l[$i-1] }`
> - Ran `$p='C:\Users\xbash\.codex\memories\rollout_summaries\2026-09-09T05-14-03-GBzq-refactor_investigacion_ia_carga_progresiva.md'; $l=Get-Content -Encoding UTF8 -LiteralPath $p; for($i=10;$i -le 38;$i++){ '{0}: {1}' -f $i,$l[$i-1] }`
>
> </details>
</details>

# 1. Resumen ejecutivo

Auditoría realizada sobre el estado actual de `skills/operaciones-tecnologia`, sin modificar archivos.

- El dominio contiene 11 archivos Markdown: 1 README y 10 artefactos cargables: 1 base, 8 módulos temáticos y 1 checklist.
- Salud general: media-alta. La cobertura operacional es amplia y las reglas son ejecutables.
- Principal problema: falta una ruta de activación suficientemente precisa y una capa transversal explícita.
- Solapamientos principales: observabilidad/incidentes/DR y virtualización-contenedores/cloud-Kubernetes.
- Oportunidad principal: carga progresiva con base compacta, módulo principal, complementos condicionados y checklist al cierre.
- Optimización posible: media, principalmente por reducción de contexto redundante y mejor routing.
- No hay evidencia suficiente para fusionar, dividir, eliminar o deprecar módulos.

Evidencia estática:

- La carga actual base+módulo varía entre aproximadamente 1.062 y 1.105 unidades léxicas.
- Base+módulo+checklist varía entre aproximadamente 1.424 y 1.467.
- Todos los archivos actuales presentan finales de línea CRLF, aunque la política del repositorio establece LF.
- No se detectaron enlaces Markdown internos.
- No existe `AGENTS.md` en el dominio, sus padres ni la raíz del repositorio.
- El estado Git es transicional: los módulos descriptivos actuales aparecen como no versionados y los antiguos módulos numerados/proveedores aparecen eliminados.

El análisis aplica al working tree actual, no a una versión histórica.

# 2. Inventario funcional

| Artefacto | Propósito real | USAR CUANDO | NO USAR CUANDO | Estado |
|---|---|---|---|---|
| `instrucciones_base_ops.md` | Rol, alcance, límites, estilo, seguridad y formato operacional | Toda tarea de operaciones o infraestructura | Consulta puramente conceptual sin acción operacional | Base amplia y reutilizable |
| `windows_server_powershell_reglas.md` | Administración Windows Server y automatización PowerShell | Servicios, IIS, tareas programadas, firewall o scripts Windows | Problemas exclusivamente Linux, cloud o SQL | Módulo temático bien delimitado |
| `linux_rhel_oel_bash_reglas.md` | Operación Linux RHEL/OEL, Bash, systemd y SELinux | Servicios, filesystem, permisos, repositorios o scripts Linux | Administración Windows o Kubernetes como asunto principal | Módulo temático bien delimitado |
| `redes_conectividad_firewall_reglas.md` | Diagnóstico de conectividad, DNS, TLS, puertos y firewall | Fallas de red, aperturas controladas o validación de servicios | Cambio de aplicación sin componente de red | Módulo específico de alto valor |
| `virtualizacion_contenedores_reglas.md` | Runtime de VMs, contenedores, volúmenes y Kubernetes | Docker, Podman, KVM, VMware, OpenShift o persistencia | IaC/cloud como actividad principal | Útil; requiere frontera con cloud |
| `bases_datos_operacion_reglas.md` | Operación SQL, respaldos, mantenimiento y diagnóstico de motores | Oracle, PostgreSQL, SQL Server, DML/DDL operacional o rendimiento | Diseño de esquema exclusivamente de desarrollo | Específico y accionable |
| `observabilidad_continuidad_reglas.md` | Logs, métricas, alertas, respaldos y continuidad recurrente | Monitoreo, capacity planning, rotación, alertas o runbooks | Incidente crítico con gestión formal de respuesta | Útil; solapa con incidentes/DR |
| `cloud_iac_kubernetes_reglas.md` | Cloud, IAM operativo, Terraform, Ansible, GitOps y automatización | Provisionamiento, `plan/apply`, clusters o cambios cloud | Operación runtime local sin IaC/cloud | Útil; solapa con contenedores y SecOps |
| `incidentes_cambios_dr_reglas.md` | Incidentes, RCA, cambios, parches, backup/restore y DR | Incidentes, ventanas de cambio, hardening o recuperación | Consulta técnica aislada sin gestión operacional | Alto valor; ámbito amplio |
| `checklist_script_operacional.md` | Verificación final de scripts, runbooks y cambios | Entrega, revisión o ejecución de cambios operacionales | Contexto inicial o consulta conceptual | Checklist transversal, no debe cargarse siempre |

El README documenta esta separación en [README.md](./gen-ai-skills/skills/operaciones-tecnologia/README.md:7).

# 3. Evaluación detallada

Puntuaciones de 1 a 5. En `Redundancia`, 5 significa redundancia mínima.

| Skill | Valor | Costo contexto | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base ops | ALTO | ALTO | 5 | 3 | 4 | 4 | 3 | 5 | 4 | 2 | MEJORAR |
| Windows/PowerShell | ALTO | MEDIO | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Linux/RHEL/Bash | ALTO | MEDIO | 4 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Redes/firewall | ALTO | MEDIO | 5 | 4 | 5 | 5 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Virtualización/contenedores | ALTO | MEDIO | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Bases de datos | ALTO | MEDIO | 5 | 4 | 4 | 5 | 4 | 4 | 4 | 4 | MANTENER_CON_CAMBIOS_MENORES |
| Observabilidad/continuidad | ALTO | MEDIO | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |
| Cloud/IaC/Kubernetes | ALTO | MEDIO | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |
| Incidentes/cambios/DR | ALTO | MEDIO | 5 | 4 | 4 | 4 | 4 | 4 | 4 | 2 | MANTENER_CON_CAMBIOS_MENORES |
| Checklist operacional | ALTO | MEDIO | 5 | 3 | 5 | 5 | 5 | 5 | 4 | 3 | MANTENER |

La base concentra 743 unidades léxicas y repite invariantes que también aparecen en los módulos especializados. Su problema no es falta de contenido, sino amplitud y carga obligatoria.

# 4. Problemas detectados

## Redundancias

- “Validar ambiente”, “declarar versión”, “proteger secretos”, “registrar logs”, “usar rollback” y “hacer pruebas de humo” aparecen en la base y en varios módulos.
- La repetición es parcialmente necesaria cuando expresa una excepción específica, pero no cuando repite la misma regla general.
- El checklist reproduce controles ya presentes en la base, aunque esto es aceptable por su función de verificación final.

## Solapamientos

1. `observabilidad_continuidad_reglas.md` y `incidentes_cambios_dr_reglas.md`

   Ambos cubren incidentes, continuidad, respaldos, runbooks, RTO/RPO, rollback y validación.

   Recomendación: mantener separados por ahora, delimitando:

   - Observabilidad: señales, alertas, capacidad, logs y operación recurrente.
   - Incidentes/DR: respuesta coordinada, cambios, recuperación, RCA y pruebas de recuperación.

2. `virtualizacion_contenedores_reglas.md` y `cloud_iac_kubernetes_reglas.md`

   Ambos mencionan Kubernetes/OpenShift, redes, recursos, despliegue, rollback y validación.

   Recomendación:

   - Virtualización/contenedores: runtime, imágenes, volúmenes, rootless y ciclo de vida.
   - Cloud/IaC: identidad, proveedor, Terraform/Ansible, GitOps, cuentas, regiones y provisionamiento.

3. Operaciones y seguridad operacional

   `cloud_iac_kubernetes_reglas.md` incluye IAM, cifrado y secretos; `incidentes_cambios_dr_reglas.md` incluye hardening; el dominio SecOps también cubre cloud, IAM, hardening, DR y respuesta a incidentes.

   Recomendación: operaciones debe controlar ejecución, disponibilidad, reversibilidad y contexto; SecOps debe ser dueño de amenazas, controles de seguridad, riesgo y cumplimiento.

## Exceso de contexto

- La sección “Cobertura principal” de la base funciona parcialmente como inventario del README.
- La frase “con foco en Chile/LatAm y referencia 2026” introduce dependencia temporal sin modificar claramente el comportamiento operacional.
- Las listas de versiones concretas pueden quedar obsoletas y no son necesarias como regla permanente.
- La carga de todos los módulos produciría aproximadamente 3.834 unidades léxicas, cuando la mayoría de tareas solo requiere base más uno o dos módulos.

## Ambigüedad

- Los módulos usan `Aplicar cuando`, pero no existe una convención explícita `USAR CUANDO`/`NO USAR CUANDO`.
- El README indica cargar archivos específicos, pero no ofrece una matriz tarea → módulo principal → complementos.
- Kubernetes, backups, firewall e incidentes pueden activar varios módulos sin una regla de prioridad.
- No se especifica cuándo cargar la base transversal —actualmente inexistente— para tareas simples frente a cambios de estado.

## Fragmentación

No se observa sobrefragmentación grave. Ocho módulos temáticos son razonables para este alcance.

La principal fragmentación problemática está dentro de los temas de continuidad e incidentes, pero no hay evidencia funcional suficiente para dividirlos todavía.

## Problemas arquitectónicos

- Falta una capa `reglas_transversales_ops.md`.
- Falta una matriz de propiedad de reglas.
- El README no formaliza carga progresiva.
- El dominio no tiene un contrato de activación tan preciso como otros dominios ya refactorizados del repositorio.
- El contenido actual incumple la convención de LF en el working tree: todos los archivos auditados están en CRLF.

# 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base ops | Todos los módulos | Complementarias con duplicación | Media | Compactar base y centralizar invariantes |
| Base ops | Checklist | Complementarias | Baja | Base para orientación; checklist solo al cierre |
| Windows | Linux | Complementarias | Baja | Mantener separadas |
| Windows | Redes | Parcialmente redundantes | Media | Mantener; aclarar que redes posee diagnóstico de conectividad |
| Linux | Redes | Parcialmente redundantes | Media | Mantener; conservar solo comandos específicos por sistema |
| Virtualización | Cloud/IaC/Kubernetes | Parcialmente redundantes | Alta | Definir runtime versus provisionamiento/cloud |
| Observabilidad | Incidentes/DR | Altamente redundantes en continuidad | Alta | Mantener inicialmente; delimitar operación recurrente versus respuesta formal |
| Observabilidad | Checklist | Complementarias | Baja | Checklist verifica la entrega, no define observabilidad |
| Incidentes/DR | Checklist | Complementarias | Media | Checklist al cierre de cambios y runbooks |
| Cloud/IaC/Kubernetes | Redes | Dependientes | Media | Cargar redes solo si el cambio afecta conectividad |
| Cloud/IaC/Kubernetes | SecOps cloud | Parcialmente redundantes | Alta | Operaciones posee ejecución; SecOps posee controles de seguridad |
| Bases de datos | Incidentes/DR | Dependientes | Media | Cargar DR cuando exista backup, restore o cambio crítico |

# 6. Propuesta de arquitectura objetivo

```text
estructura actual

skills/operaciones-tecnologia/
├── README.md
├── instrucciones_base_ops.md
├── 8 módulos temáticos
└── checklist_script_operacional.md
```

```text
estructura propuesta

skills/operaciones-tecnologia/
├── README.md
├── instrucciones_base_ops.md
├── reglas_transversales_ops.md
├── matriz_propiedad_reglas.md
├── windows_server_powershell_reglas.md
├── linux_rhel_oel_bash_reglas.md
├── redes_conectividad_firewall_reglas.md
├── virtualizacion_contenedores_reglas.md
├── bases_datos_operacion_reglas.md
├── observabilidad_continuidad_reglas.md
├── cloud_iac_kubernetes_reglas.md
├── incidentes_cambios_dr_reglas.md
└── checklist_script_operacional.md
```

Responsabilidades propuestas:

- `instrucciones_base_ops.md`: rol, alcance, límites, estilo y routing mínimo.
- `reglas_transversales_ops.md`: evidencia, ambiente, permisos, secretos, reversibilidad, idempotencia, dry-run, validación y rollback.
- `matriz_propiedad_reglas.md`: dueño único de cada regla para evitar divergencias.
- Módulos temáticos: procedimientos y criterios propios.
- Checklist: control de cierre, no contexto obligatorio.

No recomiendo renombrar los módulos actuales ni recrear subdirectorios por proveedor. Los nombres descriptivos actuales son coherentes con la arquitectura vigente.

# 7. Acciones recomendadas

## P0 — Críticas

No se identificaron problemas críticos demostrados que exijan una modificación inmediata.

## P1 — Alto impacto

1. Formalizar en el README el contrato de carga:

   - base siempre;
   - una skill principal;
   - complementos solo si existe dependencia concreta;
   - checklist al cierre o durante revisión.

2. Crear `reglas_transversales_ops.md` extrayendo únicamente reglas realmente comunes.

3. Crear `matriz_propiedad_reglas.md` para asignar un único dueño a:

   - seguridad de secretos;
   - validación de ambiente;
   - rollback;
   - observabilidad;
   - continuidad;
   - pruebas de humo;
   - control de cambios.

4. Definir límites entre:

   - runtime de contenedores y cloud/IaC;
   - observabilidad y respuesta a incidentes;
   - operaciones y SecOps.

## P2 — Optimización

1. Compactar la base eliminando cobertura repetida y prosa general.
2. Retirar o generalizar la referencia temporal “2026”.
3. Estandarizar en cada módulo:

   - `USAR CUANDO`;
   - `NO USAR CUANDO`, cuando exista riesgo de confusión;
   - reglas específicas;
   - validación;
   - riesgos.

4. Normalizar los archivos a UTF-8 sin BOM, LF, nueva línea final y sin espacios finales.
5. Reducir listas de herramientas o versiones a las que cambien efectivamente el comportamiento.

## P3 — Opcional

- Evaluar una división futura de incidentes/cambios y continuidad/DR.
- Crear módulos específicos por proveedor cloud solo si aparecen tareas recurrentes que no puedan resolverse con el módulo general.
- Añadir ejemplos operacionales únicamente si una evaluación funcional demuestra que mejoran resultados.

# 8. Estimación de impacto

Estimaciones cualitativas; no son resultados experimentales.

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Routing explícito en README | ↓↓ por carga selectiva | ↑↑ | ↑↑ | Bajo |
| Compactar la base | ↓↓ | =/↑ | ↑ | Medio |
| Crear reglas transversales y extraer duplicación | ↓↓ en cargas combinadas | ↑ | ↑↑ | Medio |
| Matriz de propiedad | ↓ indirecta | ↑ | ↑↑ | Bajo |
| Delimitar Kubernetes/runtime/cloud | = | ↑↑ | ↑↑ | Bajo |
| Delimitar observabilidad/incidentes | = | ↑↑ | ↑ | Medio |
| Estandarizar `USAR CUANDO`/`NO USAR CUANDO` | = | ↑↑ | ↑ | Bajo |
| Cargar checklist solo al cierre | ↓↓ en tareas exploratorias | =/↑ | ↑ | Bajo |
| Normalizar CRLF a LF | = | = | ↑ | Bajo |
| Benchmark funcional con tareas representativas | ↑ temporalmente | ↑↑ evidencia | ↑ | Bajo |

No corresponde afirmar todavía ahorro neto de tokens ni preservación de calidad: eso requiere comparar tareas representativas con y sin la arquitectura propuesta.

# 9. Skills candidatas a modificación

## Mantener intactas en contenido

- `redes_conectividad_firewall_reglas.md`
- `bases_datos_operacion_reglas.md`
- `checklist_script_operacional.md`

Solo requieren, como mínimo, normalización de formato y eventualmente metadatos de activación.

## Compactar o mejorar

- `instrucciones_base_ops.md`: principal candidata a compactación.
- `windows_server_powershell_reglas.md`
- `linux_rhel_oel_bash_reglas.md`
- `virtualizacion_contenedores_reglas.md`
- `cloud_iac_kubernetes_reglas.md`

La mejora debe centrarse en fronteras y eliminación de reglas transversales repetidas.

## Mantener separadas, con límites más claros

- `observabilidad_continuidad_reglas.md`
- `incidentes_cambios_dr_reglas.md`
- `virtualizacion_contenedores_reglas.md`
- `cloud_iac_kubernetes_reglas.md`

No recomiendo fusionarlas todavía.

## Fusionar

Ninguna con la evidencia actual.

## Dividir

Ninguna por ahora. `incidentes_cambios_dr_reglas.md` podría dividirse en el futuro, pero solo después de observar tareas reales y activación conjunta.

## Reubicar

No se justifica reubicar módulos dentro del dominio actual.

## Deprecar o eliminar

Ninguna.

## Nuevos artefactos recomendados

- `reglas_transversales_ops.md`
- `matriz_propiedad_reglas.md`

# 10. Plan de refactorización

1. Congelar el inventario actual y registrar el estado Git del dominio.
2. Construir la matriz de propiedad sin modificar reglas todavía.
3. Definir el routing del README con tareas principales y complementos.
4. Añadir límites `USAR CUANDO`/`NO USAR CUANDO`.
5. Extraer reglas transversales a `reglas_transversales_ops.md`.
6. Compactar la base conservando límites, formato y controles críticos.
7. Revisar los módulos por solapamiento, sin fusionar ni dividir automáticamente.
8. Normalizar formato UTF-8/LF.
9. Ejecutar validación estática: archivos esperados, referencias, encabezados, activadores, propietarios y formato.
10. Ejecutar una validación funcional posterior con tareas representativas de Windows, Linux, redes, Kubernetes, bases de datos, incidentes y scripts.
11. Medir calidad, correcciones, omisiones y contexto utilizado.
12. Solo con esa evidencia decidir si algún módulo debe fusionarse, dividirse o mantenerse sin cambios.

## Conclusión

1. El dominio está bien cubierto y es operacionalmente útil.
2. La mayor ineficiencia es la duplicación de reglas transversales y el routing poco explícito.
3. La mayor oportunidad es introducir carga progresiva con propiedad clara de reglas.
4. Recomiendo refactorizar, pero de forma conservadora y por fases.
5. La mejor relación calidad/contexto provendría de compactar la base, añadir routing y cargar el checklist solo al cierre.
6. No recomiendo eliminar ni fusionar módulos en esta etapa.
