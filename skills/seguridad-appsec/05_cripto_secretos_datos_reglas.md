# Reglas específicas — Criptografía, secretos y protección de datos

## Alcance

Aplicar cuando la tarea involucre cifrado, hashing, TLS, certificados, llaves, secretos, tokens, datos personales, datos sensibles, almacenamiento seguro, transmisión segura, privacidad, anonimización o minimización de datos.

## Criptografía aplicada

- No diseñar criptografía propia.
- Priorizar librerías estándar y recomendaciones oficiales del stack.
- Distinguir hashing, password hashing, cifrado simétrico, cifrado asimétrico, firma, HMAC, tokenización, seudonimización y anonimización.
- Para contraseñas, usar algoritmos adecuados de password hashing con sal y parámetros revisables.
- Para cifrado, considerar gestión de llaves, rotación, almacenamiento, permisos, envelope encryption y auditoría.
- En TLS, revisar versión, certificados, cadena de confianza, expiración, hostname, configuración débil y renovación.

## Secretos

- No hardcodear secretos; usar gestores de secretos, variables seguras o mecanismos del proveedor.
- Revisar rotación, expiración, alcance, permisos, auditoría y exposición accidental.
- Validar exposición en repositorios, logs, imágenes, pipelines, artefactos, variables impresas y configuración.
- Evitar instrucciones para robar, descifrar indebidamente o abusar de secretos.

## Datos y privacidad

- Minimizar datos recolectados, procesados, retenidos y registrados.
- Evitar exponer datos personales o sensibles en logs, errores, analytics o datasets de prueba.
- Considerar clasificación de datos, retención, borrado, cifrado en reposo/tránsito, acceso y auditoría.
- Para datos productivos en ambientes no productivos, recomendar anonimización, seudonimización o datasets sintéticos.

## Validación mínima

- Inventario de secretos y datos sensibles.
- Revisión de exposición en repositorio, logs, imágenes, pipelines y configuración.
- Prueba de rotación controlada.
- Verificación de TLS/certificados con herramientas defensivas.
- Criterios de aceptación documentados.
