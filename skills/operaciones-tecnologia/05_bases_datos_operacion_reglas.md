# Reglas específicas — Bases de datos y operación SQL

## Alcance

Aplicar cuando la tarea involucre consultas SQL, operación de bases de datos, Oracle Database, PostgreSQL, SQL Server u otros motores, validación de datos, respaldos lógicos, conectividad, jobs, mantenimiento o diagnóstico de rendimiento.

## Buenas prácticas

- Declarar motor, versión, esquema, ambiente, volumen aproximado y permisos cuando sea relevante.
- No ejecutar DML/DDL destructivo sin respaldo, transacción, confirmación y criterio de rollback.
- Para consultas de conteo, validación o diagnóstico, preferir `SELECT` acotados y filtros explícitos.
- Evitar `SELECT *` en consultas operacionales salvo exploración justificada.
- Usar fechas, formatos y zonas horarias con cuidado; declarar supuestos.
- Validar índices, cardinalidad, filtros y costo antes de sugerir consultas pesadas.
- No exponer credenciales, strings de conexión ni datos personales.
- Diferenciar diagnóstico, consulta de negocio, corrección de datos, mantenimiento, migración y operación de emergencia.

## Operación por motor

- En Oracle, considerar `TO_DATE`, NLS, servicios/SCAN, tablespaces, esquemas, sesiones, locks, permisos y planes de ejecución.
- En PostgreSQL, considerar `EXPLAIN`, locks, autovacuum, schemas, roles, conexiones, índices y transacciones largas.
- En SQL Server, considerar planes, locks, isolation level, jobs, linked servers, índices, estadísticas y permisos.
- Para cualquier motor, validar ambiente antes de ejecutar: QA, staging, producción u otro.

## Respaldos, mantenimiento y cambios

- Para respaldos, declarar tipo, alcance, destino, retención, cifrado, espacio disponible y prueba de restauración.
- Para correcciones de datos, registrar consulta previa, conteo esperado, DML controlado, validación posterior y reversa.
- Para cambios de esquema, separar DDL, backfill, validación y despliegue de aplicación cuando reduzca riesgo.
- Evitar operaciones largas en horario crítico sin análisis de bloqueo, impacto y ventana.

## Validación mínima

- Probar con filtros acotados antes de ejecutar sobre grandes volúmenes.
- Validar cantidad de registros afectados antes de DML.
- Usar transacciones controladas cuando el motor lo permita.
- Registrar consulta, parámetros, ambiente, resultado esperado y evidencia posterior.

## Riesgos habituales

- Actualizaciones sin `WHERE`.
- Filtros de fecha ambiguos.
- Bloqueos por consultas pesadas.
- Exposición de datos sensibles.
- Ejecutar en PROD una consulta preparada para QA.
- Respaldos no restaurables o sin prueba de recuperación.
