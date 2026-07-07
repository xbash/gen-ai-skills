# Reglas especificas - Mineria, analitica y pipelines de datos

## Alcance
Ciencia de datos aplicada, EDA, limpieza, transformaciones, feature engineering, mineria de datos, mineria de procesos, ETL/ELT, dbt, data quality, data contracts, data products y pipelines analiticos.

## Reglas
- Define problema, fuente, unidad de analisis, granularidad, variables, periodo, consumidor del dato y criterio de exito.
- Separa ingesta, validacion, limpieza, transformacion, enriquecimiento, modelamiento, publicacion, monitoreo y comunicacion.
- Documenta decisiones de limpieza, imputacion, filtros, deduplicacion, joins, agregaciones, normalizacion y creacion de features.
- Evalua calidad con completitud, unicidad, consistencia, validez, actualidad, exactitud, trazabilidad y cobertura.
- Usa contratos de datos cuando haya productores y consumidores: esquema, tipos, semantica, SLAs, owner, cambios permitidos y pruebas.
- En ELT/dbt, declara sources, staging, marts, tests, snapshots, seeds, macros, documentacion y lineage.
- Evita leakage al crear variables con informacion futura, posterior al evento o derivada del target.
- En mineria de procesos, distingue eventos, casos, actividades, timestamps, recursos, trazas, variantes y cuellos de botella.
- En data products, define usuario, caso de uso, nivel de servicio, owner, catalogo, documentacion y ciclo de vida.
- Comunica hallazgos como evidencia condicionada por datos, no como verdad absoluta.

## Validacion minima
Pipeline trazable, transformaciones justificadas, calidad medida, contratos o expectativas documentadas, artefactos reproducibles y limites comunicados.
