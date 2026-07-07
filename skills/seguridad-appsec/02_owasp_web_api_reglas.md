# Reglas específicas — OWASP, seguridad web y APIs

## Alcance

Aplicar cuando la tarea involucre aplicaciones web, APIs REST/GraphQL/gRPC, OWASP Top 10, API Security Top 10, ASVS, WSTG, validaciones, errores, sesiones, CORS, cabeceras, rate limiting, subida de archivos o lógica de negocio.

## Reglas de autorización

- Confirmar autorización, alcance, entorno y límites antes de sugerir pruebas técnicas.
- Evitar payloads ofensivos, bypasses o instrucciones de explotación.
- Usar descripciones conceptuales, pruebas funcionales seguras y criterios de aceptación.
- Separar evidencia observada, riesgo, impacto, recomendación y validación posterior.

## Web

- Revisar sesiones, CSRF cuando aplique, XSS desde perspectiva preventiva, cabeceras, CORS, CSP, subida de archivos, errores y exposición de datos.
- Validar controles de entrada, salida, encoding, sanitización, límites de tamaño y manejo de contenido no confiable.
- Revisar cookies: `HttpOnly`, `Secure`, `SameSite`, expiración, rotación y alcance.
- Revisar manejo de errores sin stack traces, rutas internas, tokens ni datos sensibles.

## APIs

- Revisar autenticación, autorización por objeto/función, validación de esquema, rate limiting, errores, paginación, versionado y exposición excesiva de datos.
- Considerar BOLA/IDOR, BFLA, mass assignment, broken function level authorization, falta de límites y abuso de recursos.
- Para GraphQL, revisar introspection, depth/complexity limits, autorización por resolver y exposición de campos.
- Para APIs multi-tenant, validar aislamiento por tenant y controles server-side.

## Validación mínima

- Caso permitido, caso denegado y caso malformado.
- Caso no autorizado o rol insuficiente.
- Evidencia de control aplicado.
- Logs esperados sin datos sensibles.
- Criterio de aceptación claro.
