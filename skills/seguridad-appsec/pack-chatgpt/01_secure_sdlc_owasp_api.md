# Secure SDLC, threat modeling, OWASP y APIs

## Alcance

Usar cuando la tarea involucre gobierno AppSec, Secure SDLC, modelado de amenazas, requisitos de seguridad, OWASP Web/API, ASVS, WSTG, CORS, cabeceras, sesiones, validaciones, errores o lógica de negocio web/API.

## Secure SDLC

- Integrar seguridad desde requisitos, diseño, desarrollo, revisión, pruebas, despliegue y operación.
- Traducir riesgos en requisitos verificables de seguridad.
- Definir criterios de aceptación antes de implementar controles.
- Considerar gates razonables: SAST, SCA, secretos, IaC, pruebas de seguridad y revisión manual en cambios críticos.

## Modelado de amenazas

- Partir por alcance, activos, actores, flujos de datos, límites de confianza, exposición y objetivos de negocio.
- Identificar amenazas, abusos posibles, controles existentes, brechas y riesgos residuales.
- Usar STRIDE, attack trees, misuse cases, ASVS/SAMM u otros marcos solo si aportan valor.
- Distinguir control preventivo, detectivo, correctivo y compensatorio.

## Web y APIs

- Confirmar autorización, alcance, entorno y límites antes de sugerir pruebas técnicas.
- Clasificar hallazgos con OWASP/CWE cuando sea verificable.
- Revisar sesiones, CSRF cuando aplique, XSS desde perspectiva preventiva, cabeceras, CORS, CSP, subida de archivos, errores y exposición de datos.
- En APIs, revisar autenticación, autorización por objeto/función, validación de esquema, rate limiting, errores, paginación, versionado y exposición excesiva.
- Para GraphQL, revisar introspection, depth/complexity limits, autorización por resolver y exposición de campos.

## Validación mínima

- Caso permitido, denegado, malformado, no autorizado y rol insuficiente.
- Evidencia de control aplicado.
- Logs esperados sin datos sensibles.
- Criterio de aceptación claro.
