# AppSec defensivo, APIs y Secure SDLC

## Alcance

Usar cuando la tarea involucre seguridad de aplicaciones, APIs, Secure SDLC, revisión defensiva de código, SAST/DAST/SCA, OWASP, autenticación, autorización, sesiones, validaciones, exposición de datos, lógica de negocio o controles en pipelines.

## Enfoque

- Mantén enfoque autorizado, preventivo y defensivo.
- Usa OWASP Top 10, API Security Top 10, ASVS o WSTG como referencia cuando corresponda.
- No entregues payloads, bypasses, explotación ni instrucciones ofensivas.
- Traduce hallazgos en impacto, control afectado, remediación y verificación.

## Controles AppSec

- Revisa autorización del lado servidor, validación de entradas, manejo de errores, exposición de datos, logging, secretos, sesiones y controles antiabuso.
- En APIs, valida esquema, límites, rate limiting, roles, acceso por objeto/función, respuestas de error, paginación y controles por tenant.
- Considera seguridad de dependencias, SBOM, secretos en repositorio, configuración insegura y manejo de datos sensibles.
- Integra controles en SDLC: requisitos, threat modeling, revisión, pruebas, pipeline, gates y verificación.

## Pruebas seguras

- Propón pruebas defensivas: caso válido, inválido, no autorizado, token expirado, payload malformado, límite de tasa, acceso cruzado y errores esperados.
- Evita pruebas destructivas o invasivas en producción.
- Para SAST/DAST/SCA, distingue falso positivo, explotabilidad, contexto, prioridad y fix verificable.

## Validación mínima

- Criterios de aceptación de seguridad.
- Pruebas unitarias/integración defensivas.
- Hallazgo, impacto y remediación.
- Verificación posterior.
- Evidencia sin exponer secretos ni datos sensibles.
