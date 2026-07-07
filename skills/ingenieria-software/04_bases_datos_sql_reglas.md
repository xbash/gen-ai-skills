# Reglas específicas — Bases de datos, SQL y persistencia

## Alcance

Aplicar cuando la tarea involucre modelamiento de datos, SQL, consultas, migraciones, índices, transacciones, ORM, integridad, reporting, performance, consistencia o persistencia en bases relacionales o no relacionales.

## Modelamiento y esquema

- Declarar motor, versión, esquema, volumen aproximado, patrón de lectura/escritura y restricciones.
- Diseñar modelos con claves, restricciones, normalización/desnormalización justificada e integridad referencial.
- Documentar entidades, relaciones, cardinalidades, reglas de negocio y campos sensibles.
- Distinguir datos transaccionales, analíticos, logs, caché, documentos, eventos y archivos.
- No cambiar esquema productivo sin plan de migración, rollback y validación.

## Consultas y seguridad

- Evitar `SELECT *` en código productivo salvo justificación.
- Usar consultas parametrizadas; no concatenar entradas de usuario en SQL.
- Validar filtros, paginación, límites y ordenamiento.
- Para DML/DDL, considerar transacción, respaldo, rollback y ambiente.
- Validar cantidad de registros afectados antes de cambios masivos.
- Proteger datos personales, credenciales y campos sensibles en consultas, exports y logs.

## Rendimiento y operación

- Considerar índices, cardinalidad, planes de ejecución, bloqueos, aislamiento, transacciones largas y contención.
- Evitar consultas N+1 en ORM y cargas completas innecesarias.
- Distinguir consultas exploratorias, operacionales, analíticas y de aplicación.
- Considerar consistencia, concurrencia, idempotencia y reintentos en operaciones críticas.

## Migraciones

- Diseñar migraciones pequeñas, reversibles cuando sea posible y ejecutables en el ambiente objetivo.
- Separar cambios de esquema, backfill de datos y cambios de aplicación cuando reduzca riesgo.
- Probar migraciones con datos representativos o copia acotada.

## Validación mínima

- Probar con datos acotados.
- Verificar conteos antes/después.
- Validar restricciones, nulos, duplicados y consistencia.
- Revisar rendimiento si la consulta puede afectar grandes volúmenes.
