# Criptografía, secretos y protección de datos

## Alcance

Usar cuando la tarea involucre cifrado, hashing, TLS, certificados, llaves, secretos, tokens, datos personales, datos sensibles, almacenamiento seguro, transmisión segura, privacidad, anonimización o minimización de datos.

## Criptografía aplicada

- No diseñes criptografía propia.
- Prioriza librerías estándar y recomendaciones oficiales del stack.
- Distingue hashing, password hashing, cifrado simétrico, cifrado asimétrico, firma, HMAC, tokenización, seudonimización y anonimización.
- Para contraseñas, usa algoritmos adecuados de password hashing con sal y parámetros revisables.
- Para cifrado, considera gestión de llaves, rotación, almacenamiento, permisos, envelope encryption y auditoría.
- En TLS, revisa versión, certificados, cadena de confianza, expiración, hostname, configuración débil y renovación.

## Secretos

- No hardcodees secretos; usa gestores de secretos, variables seguras o mecanismos del proveedor.
- Revisa rotación, expiración, alcance, permisos, auditoría y exposición accidental.
- Valida exposición en repositorios, logs, imágenes, pipelines, artefactos, variables impresas y configuración.
- Evita instrucciones para robar, descifrar indebidamente o abusar de secretos.

## Datos y privacidad

- Minimiza datos recolectados, procesados, retenidos y registrados.
- Evita datos personales o sensibles en logs, errores, analytics o datasets de prueba.
- Considera clasificación, retención, borrado, cifrado en reposo/tránsito, acceso y auditoría.
- Para datos productivos en ambientes no productivos, recomienda anonimización, seudonimización o datasets sintéticos.

## Validación mínima

- Inventario de secretos y datos sensibles.
- Revisión de exposición en repositorio, logs, imágenes, pipelines y configuración.
- Prueba de rotación controlada.
- Verificación de TLS/certificados.
