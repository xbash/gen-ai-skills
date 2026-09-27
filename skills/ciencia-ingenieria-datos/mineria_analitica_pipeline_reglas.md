# Reglas especificas - Mineria, analitica y pipelines de datos

## Alcance
Ciencia de datos aplicada, EDA, limpieza, transformaciones, feature engineering, mineria de datos, mineria de procesos, ETL/ELT, dbt, data quality, data contracts, data products y pipelines analiticos.

## Usar cuando

La tarea transforma, valida, publica u opera datos para analisis o consumo recurrente. No usar como modulo principal para inferencia estadistica o evaluacion de modelos sin un pipeline.

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

## Pipeline geoespacial

Aplicar cuando el pipeline procese datos raster, vectoriales o tabulares con coordenadas geográficas.

### Etapas adicionales respecto a pipeline tabular

1. **Ingesta:** verificar CRS, resolución, período, extensión y licencia de cada fuente raster o vectorial.
2. **Reproyección:** definir CRS común del proyecto (p. ej., EPSG:32719 para Chile zona 19S); reproyectar todas las fuentes antes de cualquier join espacial.
3. **Recorte y remuestreo:** clip por bounding box o polígono del área de estudio; reproject_match para igualar resolución y grilla entre fuentes.
4. **Enmascaramiento nodata:** aplicar máscara de nodata antes de calcular estadísticas; propagar la máscara a los features derivados.
5. **Validación de geometrías:** `is_valid()` en datos vectoriales; registrar y reparar geometrías inválidas antes de joins espaciales.

### Validaciones específicas del pipeline geoespacial

- CRS declarado y consistente entre todas las fuentes unidas.
- Solapamiento temporal entre fuentes verificado: confirmar que el período cubierto por cada fuente cubre el rango de fechas del dataset.
- Resolución espacial documentada y consistente tras el remuestreo.
- Nodata enmascarado y no tratado como cero ni como valor válido.

### Formatos y contratos de datos geoespaciales

- **GeoParquet:** formato de pipeline para tabular con geometría; preserva CRS, soporta predicados espaciales con DuckDB y geopandas; reemplaza CSV con lat/lon.
- **STAC como contrato de datos:** usar `pystac-client` para descubrir y filtrar colecciones externas (Sentinel-2, ERA5); documentar colección, período, AOI y resolución en el contrato de ingesta.
- Documentar linaje: para cada feature derivado, registrar fuente, período, transformación aplicada y CRS resultante.
