# Seguridad AppSec

Dominio para diseñar, revisar, validar y mejorar la seguridad de aplicaciones, productos, APIs, código, dependencias, pipelines, configuraciones e infraestructura aplicativa desde un enfoque white-hat, autorizado y orientado a remediación.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_appsec.md` | Instrucción personalizada base para seguridad de producto y aplicaciones. |
| `gobernanza_secure_sdlc_modelado_reglas.md` | Gobernanza AppSec, Secure SDLC, threat modeling, requisitos, madurez y backlog. |
| `owasp_web_api_reglas.md` | OWASP, seguridad web, APIs REST/GraphQL, validaciones, sesiones, errores y CORS. |
| `revision_codigo_logica_reglas.md` | Revisión de código, lógica de negocio, controles server-side, errores y pruebas defensivas. |
| `auth_autorizacion_sesiones_reglas.md` | Autenticación, autorización, sesiones, JWT, OAuth/OIDC, cookies, MFA y roles. |
| `cripto_secretos_datos_reglas.md` | Criptografía aplicada, secretos, TLS, certificados, tokens, datos sensibles y privacidad. |
| `supply_chain_sbom_dependencias_reglas.md` | Supply chain, dependencias, SBOM, SCA, CVEs, licencias, EOL/EOS y procedencia. |
| `hardening_configuracion_infra_reglas.md` | Hardening de infraestructura aplicativa, middleware, DB, TLS, servicios, permisos y logs. |
| `cloud_contenedores_k8s_reglas.md` | Cloud, contenedores, Kubernetes, IAM, storage, secrets, ingress, policies y workloads. |
| `pentesting_autorizado_reporte_reglas.md` | Pentesting autorizado, reglas de compromiso, evidencia segura, reporte y validación. |
| `checklist_appsec.md` | Checklist transversal para análisis, revisiones, scripts, reportes y remediación AppSec. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `instrucciones_base_appsec.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea.
3. Incluir `checklist_appsec.md` cuando se pidan revisiones, reportes, scripts o planes de remediación.

El dominio fuente tiene 11 archivos activos. Para plataformas con límite de archivos, cargar solo los archivos pertinentes del dominio.

## Principios del dominio

- White-hat, autorizado y orientado a remediación.
- No entregar payloads, explotación real, evasión, persistencia, movimiento lateral, exfiltración ni abuso.
- Separar evidencia, hipótesis, impacto, probabilidad, severidad y riesgo residual.
- Priorizar controles verificables, criterios de aceptación y validación posterior.
- Proteger secretos, credenciales, datos personales y evidencia sensible.
- Integrar seguridad en diseño, código, pipeline, despliegue y operación del producto.
