# Operaciones y tecnología

Dominio para administrar, diagnosticar, automatizar y operar plataformas tecnológicas corporativas con foco en continuidad, seguridad, trazabilidad, control de cambios y resolución práctica de problemas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_ops.md` | Instrucción personalizada base para operaciones, sistemas e infraestructura. |
| `windows_server_powershell_reglas.md` | Windows Server, PowerShell, servicios, tareas programadas, IIS, firewall y automatización. |
| `linux_rhel_oel_bash_reglas.md` | Linux RHEL/OEL, Bash, Python operacional, systemd, SELinux, repositorios y servicios. |
| `redes_conectividad_firewall_reglas.md` | Redes, DNS, proxy, firewall, TLS, puertos, conectividad, balanceadores y diagnóstico. |
| `virtualizacion_contenedores_reglas.md` | Virtualización, Docker, Podman, Kubernetes, OpenShift, volúmenes, redes e imágenes. |
| `bases_datos_operacion_reglas.md` | Operación SQL, Oracle, PostgreSQL, SQL Server, respaldos, mantenimiento y diagnóstico. |
| `observabilidad_continuidad_reglas.md` | Observabilidad, logs, métricas, alertas, runbooks, respaldos y continuidad. |
| `checklist_script_operacional.md` | Checklist transversal para scripts, runbooks y cambios operacionales. |
| `cloud_iac_kubernetes_reglas.md` | Cloud, IAM operativo, Terraform, Ansible, Kubernetes, GitOps y automatización moderna. |
| `incidentes_cambios_dr_reglas.md` | Incidentes, cambios, parches, hardening, RCA, continuidad, backup/restore y DR. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `instrucciones_base_ops.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea operacional.
3. Incluir `checklist_script_operacional.md` cuando se pidan scripts, comandos, runbooks o cambios.

## Carga selectiva y combinaciones

El patrón normal de carga es:

`README` + `instrucciones_base_ops.md` + un módulo principal según la tarea.

Agregar complementos solo cuando correspondan:

- `observabilidad_continuidad_reglas.md`: señales, alertas, logs, métricas, capacidad o evidencia operativa.
- `incidentes_cambios_dr_reglas.md`: respuesta coordinada, cambios, rollback, restauración o DR.
- `redes_conectividad_firewall_reglas.md`: DNS, rutas, puertos, firewall, TLS o conectividad.
- `checklist_script_operacional.md`: scripts, comandos, runbooks, automatizaciones o cambios.

Combinaciones condicionales frecuentes:

- Un despliegue Kubernetes cloud o GitOps puede requerir `cloud_iac_kubernetes_reglas.md` y `virtualizacion_contenedores_reglas.md`.
- Una caída de servicio con síntomas de conectividad puede requerir `redes_conectividad_firewall_reglas.md` y `observabilidad_continuidad_reglas.md`, además del módulo de plataforma afectado si corresponde.
- Un cambio o recuperación de base de datos puede requerir `bases_datos_operacion_reglas.md` e `incidentes_cambios_dr_reglas.md`, y `observabilidad_continuidad_reglas.md` cuando se investiguen señales o capacidad.
- Un script multiplataforma puede requerir el módulo Linux o Windows correspondiente y `checklist_script_operacional.md`.

Estas combinaciones son condicionales y no constituyen una carga obligatoria. No es necesario cargar todos los módulos para una tarea que no los requiera.


## Principios del dominio

- Diagnosticar antes de cambiar.
- Preferir cambios reversibles, auditables e idempotentes.
- Usar dry-run, prechecks, prueba de humo y rollback cuando sea posible.
- Proteger secretos, datos sensibles y ambientes productivos.
- Distinguir QA, staging, producción y emergencia.
- Registrar evidencia suficiente para auditoría, continuidad y aprendizaje.
