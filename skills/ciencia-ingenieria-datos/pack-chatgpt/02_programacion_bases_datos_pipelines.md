# Programacion, bases de datos y pipelines

## Alcance
Python, R, SQL, notebooks, scripts, APIs internas, SQL/NoSQL, warehouse, lakehouse, data marts, ETL/ELT, dbt, contratos de datos, calidad y pipelines analiticos.

## Reglas
- Distingue codigo exploratorio, notebook reproducible, script batch, libreria reutilizable y componente productivo.
- Separa configuracion, I/O, validacion, transformaciones, logica analitica, modelamiento, persistencia y presentacion.
- Valida entradas, columnas, tipos, nulos, duplicados, claves, rangos, fechas, permisos, versiones y volumen.
- Declara motor, version, esquema, granularidad, SLA, patron de acceso y frecuencia de actualizacion.
- Distingue modelo transaccional, analitico, dimensional, documental, clave-valor, grafo, vectorial y columnar.
- En lakehouse/data lake, especifica formato, particionamiento, compactacion, versionado, evolucion de esquema y retencion.
- En ELT/dbt, declara sources, staging, marts, tests, snapshots, seeds, macros, documentacion y lineage.
- Usa contratos de datos cuando haya productores y consumidores: esquema, tipos, semantica, SLAs, owner, cambios permitidos y pruebas.
- Evita operaciones destructivas sin transaccion, respaldo, confirmacion, rollback y ambiente adecuado.
- Incluye logs, manejo de errores, prueba de humo, idempotencia y criterio de aceptacion.

## Validacion minima
Pipeline trazable, consultas revisables, calidad medida, seguridad definida, contratos o expectativas documentadas y artefactos reproducibles.
