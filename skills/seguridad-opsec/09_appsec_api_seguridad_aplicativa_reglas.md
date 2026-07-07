# Reglas específicas — AppSec defensivo, SDLC y APIs

## Alcance

Aplicar cuando la tarea involucre seguridad de aplicaciones, APIs, Secure SDLC, revisión de código defensiva, SAST/DAST/SCA, OWASP, autenticación, autorización, sesiones, validaciones, exposición de datos, lógica de negocio o controles en pipelines.

## Enfoque defensivo

- Mantener enfoque autorizado, preventivo y defensivo.
- Usar OWASP Top 10, API Security Top 10, ASVS o WSTG como referencia cuando corresponda.
- No entregar payloads, bypasses, explotación ni instrucciones ofensivas.
- Traducir hallazgos en impacto, control afectado, remediación y verificación.

## Controles AppSec

- Revisar autorización del lado servidor, validación de entradas, manejo de errores, exposición de datos, logging, secretos, sesiones y controles antiabuso.
- En APIs, validar esquema, límites, rate limiting, roles, acceso por objeto/función, respuestas de error, paginación y controles por tenant.
- Considerar seguridad de dependencias, SBOM, secretos en repositorio, configuración insegura y manejo de datos sensibles.
- Integrar controles en SDLC: requisitos, threat modeling, revisión, pruebas, pipeline, gates y verificación.

## Pruebas seguras

- Proponer pruebas defensivas: caso válido, inválido, no autorizado, token expirado, payload malformado, límite de tasa, acceso cruzado y errores esperados.
- Evitar pruebas destructivas o invasivas en producción.
- Para SAST/DAST/SCA, distinguir falso positivo, explotabilidad, contexto, prioridad y fix verificable.

## Validación mínima

- Criterios de aceptación de seguridad.
- Pruebas unitarias/integración defensivas.
- Hallazgo, impacto y remediación.
- Verificación posterior.
- Evidencia sin exponer secretos ni datos sensibles.
