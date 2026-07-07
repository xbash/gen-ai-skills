# Reglas específicas — Autenticación, autorización y sesiones

## Alcance

Aplicar cuando la tarea involucre login, MFA, roles, permisos, control de acceso, sesiones, tokens, JWT, OAuth/OIDC, cookies, recuperación de contraseña, gestión de identidad o acceso multi-tenant.

## Conceptos y frontera

- Distinguir autenticación, autorización, gestión de sesión, auditoría, aprovisionamiento y revocación.
- Evitar guías para bypass, abuso de tokens, toma de cuentas o evasión de controles.
- Recomendar pruebas defensivas: usuario autorizado, usuario no autorizado, token expirado, token ausente, rol insuficiente, recurso ajeno y tenant cruzado.

## Autenticación y sesiones

- Revisar MFA, fuerza de contraseña, bloqueo/limitación, recuperación de cuenta, rotación y revocación.
- En tokens/cookies, revisar expiración, alcance, audiencia, issuer, firma, rotación, almacenamiento seguro y flags de seguridad.
- En JWT, validar algoritmo esperado, expiración, issuer, audience, `kid`/JWKS, revocación y no confiar en claims sin validación server-side.
- En cookies, considerar `HttpOnly`, `Secure`, `SameSite`, dominio, path y duración.
- En OAuth/OIDC, no asumir flujos ni configuraciones sin proveedor, cliente, redirect URIs y contexto.

## Autorización

- Revisar autorización del lado servidor para objeto, función, contexto, estado, tenant y propiedad del recurso.
- Evaluar mínimo privilegio, separación de roles, caducidad, revocación y trazabilidad.
- Evitar confiar en controles de UI, claims no verificados o parámetros manipulables por cliente.
- Documentar matriz rol/acción/recurso y casos permitidos/denegados.

## Validación mínima

- Matriz rol/acción/recurso.
- Casos permitidos y denegados.
- Casos de recurso ajeno y tenant cruzado cuando aplique.
- Logs de auditoría.
- Mensajes de error no reveladores.
- Gestión de sesión y cierre correcto.
