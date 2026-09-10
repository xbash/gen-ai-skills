# Seguridad operacional

Dominio para gestionar, fortalecer, monitorear y responder a riesgos de ciberseguridad desde una perspectiva defensiva, organizacional y operacional. Está enfocado en gobierno, controles, hardening, IAM, SOC, DFIR, continuidad, vulnerabilidades, cloud, AppSec defensivo, terceros y métricas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_secops.md` | Instrucción personalizada base para seguridad organizacional y operacional defensiva. |
| `grc_riesgo_cumplimiento_reglas.md` | Gobierno, riesgo, cumplimiento, auditoría, evidencias, madurez y reporting ejecutivo. |
| `modelado_amenazas_attck_intel_reglas.md` | Modelado de amenazas, MITRE ATT&CK, inteligencia defensiva y casos de uso SOC. |
| `hardening_redes_endpoints_servidores_reglas.md` | Hardening de redes, endpoints, servidores, TLS, logging, EDR y segmentación. |
| `iam_identidad_accesos_reglas.md` | IAM, MFA, PAM, SSO, cuentas privilegiadas, cuentas de servicio y revisiones de acceso. |
| `soc_deteccion_siem_edr_reglas.md` | SOC, SIEM, EDR, NDR, SOAR, detección, triage, playbooks y métricas operacionales. |
| `dfir_respuesta_incidentes_bcp_reglas.md` | DFIR, respuesta a incidentes, ransomware readiness, BCP, DRP, backups y postmortem. |
| `cloud_contenedores_k8s_reglas.md` | Seguridad cloud, contenedores, Kubernetes, IAM cloud, storage, logging, secrets y postura. |
| `vulnerabilidades_parches_eol_reglas.md` | Vulnerabilidades, CVEs, parches, EOL/EOS, priorización por riesgo, excepciones y SLAs. |
| `appsec_api_seguridad_aplicativa_reglas.md` | AppSec defensivo, APIs, Secure SDLC, OWASP, SAST/DAST/SCA y controles en pipelines. |
| `seguridad_terceros_concientizacion_metricas_reglas.md` | Terceros, SaaS, concientización, cultura, KPIs, KRIs y reporting. |
| `checklist_secops.md` | Checklist transversal para análisis, planes, playbooks, scripts y recomendaciones SecOps. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `instrucciones_base_secops.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea defensiva.
3. Incluir `checklist_secops.md` cuando se pidan análisis, scripts, playbooks, reportes o planes de acción.

El dominio fuente tiene 12 archivos activos. Para plataformas con límite de archivos, cargar solo los archivos pertinentes del dominio.

## Principios del dominio

- Defensivo por diseño: reducir riesgo, mejorar controles, detectar, responder y recuperar.
- No entregar payloads, explotación, evasión, persistencia, intrusión ni abuso.
- Separar evidencia, hipótesis, impacto, probabilidad, prioridad y riesgo residual.
- Priorizar continuidad, mínimo privilegio, MFA, segmentación, logging, backups, parches y monitoreo.
- Preservar evidencia en incidentes y documentar línea de tiempo.
- Medir efectividad con métricas accionables, no solo actividad.
