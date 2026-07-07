# Operaciones y tecnología

Dominio para administrar, diagnosticar, automatizar y operar plataformas tecnológicas corporativas con foco en continuidad, seguridad, trazabilidad, control de cambios y resolución práctica de problemas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `00_instrucciones_base_ops.md` | Instrucción personalizada base para operaciones, sistemas e infraestructura. |
| `01_windows_server_powershell_reglas.md` | Windows Server, PowerShell, servicios, tareas programadas, IIS, firewall y automatización. |
| `02_linux_rhel_oel_bash_reglas.md` | Linux RHEL/OEL, Bash, Python operacional, systemd, SELinux, repositorios y servicios. |
| `03_redes_conectividad_firewall_reglas.md` | Redes, DNS, proxy, firewall, TLS, puertos, conectividad, balanceadores y diagnóstico. |
| `04_virtualizacion_contenedores_reglas.md` | Virtualización, Docker, Podman, Kubernetes, OpenShift, volúmenes, redes e imágenes. |
| `05_bases_datos_operacion_reglas.md` | Operación SQL, Oracle, PostgreSQL, SQL Server, respaldos, mantenimiento y diagnóstico. |
| `06_observabilidad_continuidad_reglas.md` | Observabilidad, logs, métricas, alertas, runbooks, respaldos y continuidad. |
| `07_checklist_script_operacional.md` | Checklist transversal para scripts, runbooks y cambios operacionales. |
| `08_cloud_iac_kubernetes_reglas.md` | Cloud, IAM operativo, Terraform, Ansible, Kubernetes, GitOps y automatización moderna. |
| `09_incidentes_cambios_dr_reglas.md` | Incidentes, cambios, parches, hardening, RCA, continuidad, backup/restore y DR. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `00_instrucciones_base_ops.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea operacional.
3. Incluir `07_checklist_script_operacional.md` cuando se pidan scripts, comandos, runbooks o cambios.

Para ChatGPT se recomienda usar `pack-chatgpt`, que fusiona el dominio en 7 archivos y deja margen para logs, capturas, inventarios o procedimientos.

## Principios del dominio

- Diagnosticar antes de cambiar.
- Preferir cambios reversibles, auditables e idempotentes.
- Usar dry-run, prechecks, prueba de humo y rollback cuando sea posible.
- Proteger secretos, datos sensibles y ambientes productivos.
- Distinguir QA, staging, producción y emergencia.
- Registrar evidencia suficiente para auditoría, continuidad y aprendizaje.
