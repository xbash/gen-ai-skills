# Auditoría funcional — operaciones-tecnologia

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Ruta auditada: `skills/operaciones-tecnologia/`

## Alcance y evidencia

Se usaron `docs/estado_operaciones-tecnologia_20260910.md` y `docs/precheck_operaciones-tecnologia_20260910.md` únicamente para establecer el estado, inventario y routing previos. La evidencia de esta auditoría es el contenido real y actual de los 11 Markdown de `skills/operaciones-tecnologia/`.

No se modificó contenido bajo la ruta auditada. El estado Git específico de esa ruta no presenta cambios.

## Resultado ejecutivo

**ESTADO: APROBADO_CON_MEJORAS**

Los nueve componentes operativos cubren capacidades diferenciables y utilizables: base transversal; bases de datos; cloud/IaC/Kubernetes; incidentes/cambios/DR; Linux; observabilidad/continuidad; redes; virtualización/contenedores; y Windows. El README y el checklist cumplen funciones auxiliares.

La estructura plana no impide la carga selectiva ni demuestra por sí misma una necesidad de migrar a subdirectorios o a `SKILL.md`. Tampoco hay evidencia suficiente para fusionar componentes: los solapamientos encontrados corresponden, principalmente, a controles de seguridad operacional y a casos reales donde dos capacidades deben cargarse juntas. Existe una mejora P2 para hacer explícita esa selección combinada en el README.

## Inventario evaluado

| Tipo | Componentes |
|---|---:|
| Operativos | 9 |
| Auxiliares | 2 |
| Placeholders | 0 |
| Directorios con `SKILL.md` | 0 |

Los componentes operativos son `instrucciones_base_ops.md`, `bases_datos_operacion_reglas.md`, `cloud_iac_kubernetes_reglas.md`, `incidentes_cambios_dr_reglas.md`, `linux_rhel_oel_bash_reglas.md`, `observabilidad_continuidad_reglas.md`, `redes_conectividad_firewall_reglas.md`, `virtualizacion_contenedores_reglas.md` y `windows_server_powershell_reglas.md`.

## Métricas cualitativas

Escala 1–5; en **Redundancia**, 5 significa baja redundancia perjudicial. Las puntuaciones son juicio cualitativo sobre el contenido actual, no mediciones de uso, calidad en producción ni consumo de tokens.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Dictamen |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| `instrucciones_base_ops.md` | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | MANTENER |
| `bases_datos_operacion_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | MANTENER |
| `cloud_iac_kubernetes_reglas.md` | 5 | 5 | 4 | 4 | 4 | 4 | 4 | 3 | MANTENER |
| `incidentes_cambios_dr_reglas.md` | 5 | 5 | 5 | 4 | 4 | 4 | 4 | 3 | MANTENER |
| `linux_rhel_oel_bash_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 4 | MANTENER |
| `observabilidad_continuidad_reglas.md` | 5 | 4 | 5 | 4 | 4 | 4 | 4 | 3 | MANTENER |
| `redes_conectividad_firewall_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 5 | MANTENER |
| `virtualizacion_contenedores_reglas.md` | 5 | 5 | 4 | 5 | 4 | 4 | 4 | 3 | MANTENER |
| `windows_server_powershell_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 4 | MANTENER |

`README.md` se mantiene como índice/router y `checklist_script_operacional.md` como auxiliar de cierre condicional para scripts, comandos, runbooks y cambios; no se puntuaron como componentes operativos.

## Fronteras y carga selectiva

### Base frente a módulos

La base concentra invariantes apropiados: veracidad, protección de secretos, separación de ambientes, cambios mínimos, reversibilidad, validaciones, evidencias y formato de respuesta. También enumera la cobertura del dominio y establece un contrato común para scripts. No contiene comandos o procedimientos de proveedor que debieran emigrar a módulos.

Los módulos conservan criterios y riesgos propios: comportamiento por motor de base de datos; identidad, state y despliegue declarativo cloud; lifecycle y restricciones de Linux o Windows; protocolos y pruebas de red; o persistencia y rootless en contenedores. La repetición semántica de prechecks, rollback, logs y ambiente es necesaria para que `base + módulo principal` siga siendo seguro y aplicable. No se observó duplicación literal sustantiva.

### Incidentes/cambios/DR frente a observabilidad/continuidad

`observabilidad_continuidad_reglas.md` cubre detección, señales, ruido de alertas, diagnóstico basado en evidencia y operación recurrente. `incidentes_cambios_dr_reglas.md` cubre respuesta coordinada, severidad, comunicación, control de cambios, recuperación, RTO/RPO, RCA y postmortem. Las coincidencias sobre respaldos, validación y continuidad son un acoplamiento operativo real, no evidencia suficiente de fusión.

Para una alerta o síntoma sin cambio ni recuperación, basta base + observabilidad. Para un incidente, una restauración, un rollback coordinado o una ventana de cambio, se añade incidentes/cambios/DR. Ambos son pertinentes cuando la detección deriva en recuperación o cambio controlado.

### Cloud/IaC/Kubernetes frente a virtualización/contenedores

`cloud_iac_kubernetes_reglas.md` se concentra en identidad, cuenta/región/proyecto, IAM, redes cloud, Terraform, Ansible, GitOps y revisión declarativa. `virtualizacion_contenedores_reglas.md` cubre runtime, imágenes, rootless, volúmenes, redes de contenedores, VMs, snapshots y operación de cargas; su sección Kubernetes aporta controles del workload.

Una tarea de Docker/Podman/VM o persistencia local puede usar solo virtualización/contenedores. Un cambio Terraform, de recursos cloud, GitOps o de contexto cloud usa cloud/IaC/Kubernetes. Un despliegue Kubernetes sobre cloud o mediante GitOps requiere ambos. La coexistencia de controles de namespace, contexto, RBAC, probes y rollback es complementaria por sus diferentes puntos de operación.

### Linux frente a Windows

Los controles transversales compartidos ya están en la base; cada módulo aporta mecanismos, riesgos y comprobaciones específicos del sistema operativo. `systemd`, SELinux, repositorios, filesystem e `errexit` no son intercambiables con servicios, IIS, tareas programadas, `-LiteralPath` y manejo de errores de PowerShell. La separación es necesaria.

### Redes frente a cloud, observabilidad y plataformas

Redes define la responsabilidad de conectividad: origen/destino, protocolo, DNS, rutas, firewall, TLS, listeners y evidencia de pruebas. Cloud consume esa responsabilidad al configurar red cloud; observabilidad aporta señales y alertas; virtualización/contenedores aporta redes de plataforma. En una caída con síntomas de red, se carga redes más observabilidad; se suma el módulo de plataforma solo si el servicio afectado vive allí. No se justifica fusionar.

### Bases de datos operativas

El módulo se mantiene acotado a operación: motor, conectividad, bloqueos, planes, consultas diagnósticas, respaldos, restauración y cambios controlados. No se transforma en diseño SQL genérico. Se combina con incidentes/cambios/DR para recuperación o cambio coordinado, con observabilidad ante señales o capacidad y con el módulo del sistema operativo solo si la evidencia apunta al host o servicio subyacente.

### Checklist operacional

El checklist es un cierre auxiliar, no un procedimiento de diagnóstico ni un sustituto de la base. Debe cargarse para crear, corregir o revisar scripts, comandos, consultas, runbooks, automatizaciones y cambios; no se requiere en una consulta puramente diagnóstica. Mantenerlo separado evita cargar una lista de entrega en cada incidente o análisis.

## Riesgo operacional transversal

El dominio cubre de forma suficiente la confirmación de ambiente, alcance, privilegios, acciones destructivas, respaldos, rollback, validación posterior, evidencias, observabilidad y continuidad. Estos son controles de seguridad operacional; no se amplían hacia prácticas especializadas de AppSec o SecOps.

No se identificó un P0 o P1 que deje sin control un cambio de alto riesgo. La cobertura no prueba que un runbook concreto sea seguro: cada uso real sigue requiriendo versiones, ambiente, permisos, dependencias y autorización verificables.

## Arquitectura física

**MANTENER** la estructura plana actual. Con nueve módulos especializados y un README, las rutas son visibles y la carga selectiva es viable. No hay evidencia de que subdirectorios o `SKILL.md` mejoren materialmente el routing, la mantenibilidad o la portabilidad. Una migración física por uniformidad sería un cambio sin beneficio demostrado.

## Hallazgos

| Prioridad | Hallazgo | Evidencia | Decisión |
|---|---|---|---|
| P2 | El README indica cargar archivos específicos, pero no explicita cuándo añadir un segundo módulo en fronteras recurrentes. | Los módulos tienen fronteras complementarias; los casos combinados requieren inferir la selección desde las descripciones individuales. | Añadir una guía compacta de carga selectiva y combinaciones; no cambiar módulos. |
| P3 | Los once Markdown inspeccionados usan CRLF. | Inspección del contenido actual. | No es un defecto funcional ni una decisión de arquitectura; no se incluye en el plan de esta auditoría. |

P0: 0. P1: 0. P2: 1. P3: 1.

## Plan de ejecución Luna

Existe una mejora P2 acotada; se genera un plan determinista para ella. No hay ambigüedad significativa ni motivo para `REVISIÓN_TERRA_ALTA`.

- PLAN_EJECUCION_LUNA: REQUERIDO.
- ACCIONES_READY: 1.
- ACCIONES_BLOCKED: 0.
- REVISIÓN_TERRA_ALTA: NO.

El plan no autoriza ejecución automática.
