# Reglas especificas - Bases de datos, almacenamiento y recuperacion

## Alcance
SQL/NoSQL, modelamiento conceptual/logico/fisico, data warehouse, data lake, lakehouse, data marts, indices, recuperacion de informacion, busqueda, catalogos, metadatos, particiones y formatos analiticos.

## Reglas
- Declara motor, version, volumen, esquema, granularidad, restricciones, SLA, patron de acceso y frecuencia de actualizacion cuando sea relevante.
- Distingue modelo transaccional, analitico, dimensional, documental, clave-valor, grafo, vectorial y columnar.
- Valida claves, tipos, nulos, duplicados, integridad, cardinalidad, indices, constraints, particiones, ordenamiento y permisos.
- Evita consultas destructivas sin transaccion, respaldo, confirmacion, criterio de rollback y ambiente adecuado.
- Evita `SELECT *` en consultas productivas salvo exploracion justificada.
- En lakehouse/data lake, especifica formato, particionamiento, compactacion, versionado, esquema, evolucion y politica de retencion.
- En recuperacion de informacion, distingue busqueda booleana, ranking, embeddings, similitud, recall, precision, relevancia y freshness.
- Considera seguridad: control de acceso, cifrado, mascaramiento, auditoria, secretos, segregacion de ambientes y minimo privilegio.
- Evalua rendimiento con planes de ejecucion, indices, particionamiento, caching, materializaciones, costos y limites de concurrencia.

## Validacion minima
Modelo y motor claros, consultas revisables, calidad e integridad verificadas, costos considerados, seguridad definida y linaje documentado.
