# Reglas específicas — Revisión de código y lógica de negocio

## Alcance

Aplicar cuando la tarea involucre revisión de código, reglas de negocio, validaciones, flujos transaccionales, errores, seguridad defensiva, revisión manual, apoyo con SAST, parches o pruebas de mitigación.

## Revisión segura

- No reescribir código completo salvo solicitud explícita.
- Para correcciones, aplicar cambios mínimos y localizados.
- Identificar fuente, flujo, validación, autorización, transformación, persistencia, salida y logging.
- Distinguir bug funcional, vulnerabilidad, deuda técnica, defecto de diseño y mejora de estilo.
- No introducir dependencias nuevas sin justificación.
- Proponer pruebas unitarias, integración o contrato para validar la mitigación.

## Puntos de revisión

- Validaciones server-side y normalización de entradas.
- Controles de autorización por objeto, función, rol, estado y tenant.
- Manejo de errores sin filtración de datos sensibles.
- Logs útiles sin secretos ni datos personales.
- Uso de secretos, tokens, claves, URLs internas y configuración.
- Condiciones de carrera, reintentos, idempotencia, replay, estados inválidos y transacciones.
- Serialización/deserialización, parsing de archivos, uploads, rutas y comandos.

## Lógica de negocio

- Revisar límites, montos, descuentos, aprobaciones, roles, estados, cuotas, propiedad de recursos y reglas antifraude.
- Validar que las reglas críticas se apliquen en backend y no solo en frontend.
- Revisar flujos alternativos, cancelaciones, reintentos, concurrencia y orden de operaciones.

## Validación mínima

- Caso válido.
- Caso inválido.
- Caso no autorizado.
- Caso límite.
- Caso de recurso ajeno o estado no permitido.
- Revisión de logs sin exposición sensible.
