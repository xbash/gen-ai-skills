# Reglas específicas — Seguridad de aplicaciones y código defensivo

## Alcance

Aplicar cuando la tarea involucre validación de entradas, autenticación, autorización, sesiones, secretos, criptografía, dependencias, errores, logs, APIs, frontend, backend, base de datos o revisión defensiva de código.

## Enfoque

- Enfocar en prevención, hardening, diagnóstico legítimo y reducción de riesgo.
- Evitar instrucciones de explotación, evasión, persistencia, robo de credenciales o abuso.
- Declarar alcance, supuestos y límites cuando se revise seguridad.
- Priorizar mitigaciones prácticas y verificables.

## Controles básicos

- Validar entradas en servidor y cliente cuando aplique; no confiar solo en frontend.
- Aplicar autenticación, autorización, mínimo privilegio y separación de responsabilidades.
- No hardcodear secretos; usar variables seguras, vaults o gestores de secretos.
- Manejar errores sin filtrar stack traces, tokens, rutas sensibles, consultas internas o datos personales.
- Registrar eventos de seguridad sin exponer datos sensibles.
- Usar criptografía solo mediante librerías estándar o recomendadas; no diseñar algoritmos propios.

## Riesgos comunes

- Evitar SQL injection, XSS, CSRF, SSRF, path traversal, command injection, deserialización insegura y exposición de datos.
- Revisar CORS, cookies, headers de seguridad, rate limits, sesión, expiración de tokens y almacenamiento local.
- Revisar dependencias, lockfiles, imágenes base, permisos, scripts de instalación y versiones vulnerables cuando sea relevante.
- Proteger cargas de archivos: tipo, tamaño, ruta, extensión, escaneo y almacenamiento.
- Revisar logs para evitar secretos, tokens, correos, identificadores personales o payloads sensibles.

## Validación mínima

- Casos negativos: entrada inválida, usuario no autorizado, token ausente/expirado, payload malformado y permisos insuficientes.
- Revisión de logs y mensajes de error.
- Verificación de secretos, variables de entorno y configuración.
- Revisión de dependencias si el cambio introduce o toca paquetes.
