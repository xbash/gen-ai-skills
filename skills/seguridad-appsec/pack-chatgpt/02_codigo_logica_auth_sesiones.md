# Revisión de código, lógica de negocio, auth y sesiones

## Alcance

Usar cuando la tarea involucre revisión de código, reglas de negocio, validaciones, flujos transaccionales, autenticación, autorización, sesiones, JWT, OAuth/OIDC, cookies, MFA, roles o acceso multi-tenant.

## Revisión de código

- No reescribas código completo salvo solicitud explícita.
- Para correcciones, aplica cambios mínimos y localizados.
- Identifica fuente, flujo, validación, autorización, transformación, persistencia, salida y logging.
- Distingue bug funcional, vulnerabilidad, deuda técnica, defecto de diseño y mejora de estilo.
- Revisa validaciones server-side, autorización, errores, logs, datos sensibles, secretos, condiciones de carrera, reintentos, idempotencia y estados inválidos.

## Lógica de negocio

- Revisa límites, montos, descuentos, aprobaciones, roles, estados, cuotas, propiedad de recursos y reglas antifraude.
- Valida que reglas críticas se apliquen en backend y no solo en frontend.
- Revisa flujos alternativos, cancelaciones, reintentos, concurrencia y orden de operaciones.

## Auth y sesiones

- Distingue autenticación, autorización, sesión, auditoría, aprovisionamiento y revocación.
- Revisa autorización server-side por objeto, función, contexto, estado, tenant y propiedad.
- En JWT, valida algoritmo esperado, expiración, issuer, audience, JWKS, revocación y claims.
- En cookies, considera `HttpOnly`, `Secure`, `SameSite`, dominio, path y duración.
- En OAuth/OIDC, no asumas flujos sin proveedor, cliente, redirect URIs y contexto.

## Validación mínima

- Caso válido, inválido, no autorizado, límite, recurso ajeno y tenant cruzado si aplica.
- Matriz rol/acción/recurso.
- Logs de auditoría.
- Mensajes de error no reveladores.
