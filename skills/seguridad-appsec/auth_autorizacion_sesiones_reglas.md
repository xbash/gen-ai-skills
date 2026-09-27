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

## Autenticación mínima para demos académicas y APIs abiertas

Aplicar cuando la aplicación sea una demo de investigación, prototipo público o API sin usuarios registrados.

- **Sin auth es aceptable cuando:** el sistema no procesa datos personales identificables, no realiza acciones destructivas, no expone datos privados y el acceso es de solo lectura para demostración pública.
- **API key simple como auth mínima:** pasar la clave en header `X-API-Key` o como parámetro de query; validar en servidor contra variable de entorno; rotar si se filtra. No es sustituto de OAuth para sistemas productivos con usuarios.
- **Streamlit:** usar `secrets.toml` bajo `.streamlit/secrets.toml` (excluir del repositorio con `.gitignore`); acceder con `st.secrets["clave"]`. No hardcodear valores en el script.
- **FastAPI con APIKey simple:** usar `fastapi.security.APIKeyHeader`; validar contra variable de entorno, no contra valor literal en código fuente.
- **Cuándo escalar a OAuth/OIDC:** cuando haya usuarios identificables, roles diferenciados, datos personales o integración con sistemas de terceros.
