# Seguridad operacional

Dominio para gestionar, fortalecer, monitorear y responder a riesgos de ciberseguridad desde una perspectiva defensiva, organizacional y operacional. Está enfocado en gobierno, controles, hardening, IAM, SOC, DFIR, continuidad, vulnerabilidades, cloud, AppSec defensivo, terceros y métricas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `00_instrucciones_base_secops.md` | Instrucción personalizada base para seguridad organizacional y operacional defensiva. |
| `01_grc_riesgo_cumplimiento_reglas.md` | Gobierno, riesgo, cumplimiento, auditoría, evidencias, madurez y reporting ejecutivo. |
| `02_modelado_amenazas_attck_intel_reglas.md` | Modelado de amenazas, MITRE ATT&CK, inteligencia defensiva y casos de uso SOC. |
| `03_hardening_redes_endpoints_servidores_reglas.md` | Hardening de redes, endpoints, servidores, TLS, logging, EDR y segmentación. |
| `04_iam_identidad_accesos_reglas.md` | IAM, MFA, PAM, SSO, cuentas privilegiadas, cuentas de servicio y revisiones de acceso. |
| `05_soc_deteccion_siem_edr_reglas.md` | SOC, SIEM, EDR, NDR, SOAR, detección, triage, playbooks y métricas operacionales. |
| `06_dfir_respuesta_incidentes_bcp_reglas.md` | DFIR, respuesta a incidentes, ransomware readiness, BCP, DRP, backups y postmortem. |
| `07_cloud_contenedores_k8s_reglas.md` | Seguridad cloud, contenedores, Kubernetes, IAM cloud, storage, logging, secrets y postura. |
| `08_vulnerabilidades_parches_eol_reglas.md` | Vulnerabilidades, CVEs, parches, EOL/EOS, priorización por riesgo, excepciones y SLAs. |
| `09_appsec_api_seguridad_aplicativa_reglas.md` | AppSec defensivo, APIs, Secure SDLC, OWASP, SAST/DAST/SCA y controles en pipelines. |
| `10_seguridad_terceros_concientizacion_metricas_reglas.md` | Terceros, SaaS, concientización, cultura, KPIs, KRIs y reporting. |
| `11_checklist_secops.md` | Checklist transversal para análisis, planes, playbooks, scripts y recomendaciones SecOps. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `00_instrucciones_base_secops.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea defensiva.
3. Incluir `11_checklist_secops.md` cuando se pidan análisis, scripts, playbooks, reportes o planes de acción.

El dominio fuente tiene 12 archivos activos (`00` a `11`). Para plataformas con límite de 10 archivos, usar el directorio `pack-chatgpt`.

## Principios del dominio

- Defensivo por diseño: reducir riesgo, mejorar controles, detectar, responder y recuperar.
- No entregar payloads, explotación, evasión, persistencia, intrusión ni abuso.
- Separar evidencia, hipótesis, impacto, probabilidad, prioridad y riesgo residual.
- Priorizar continuidad, mínimo privilegio, MFA, segmentación, logging, backups, parches y monitoreo.
- Preservar evidencia en incidentes y documentar línea de tiempo.
- Medir efectividad con métricas accionables, no solo actividad.
