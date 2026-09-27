# Reglas especificas - Reproducibilidad, replicabilidad y ciencia abierta

## Alcance
Reproducibilidad experimental, replicabilidad externa, artefactos de investigacion, codigo, datasets, modelos, configuracion, seeds, entornos, documentacion, preregistro y ciencia abierta en IA.

## Usar cuando
Se deba reproducir, replicar, auditar o preparar la transferencia de un estudio y sus artefactos. Agrega este modulo a diseño o evaluación cuando la afirmación dependa de ejecutar nuevamente el procedimiento.

## No usar cuando
La tarea sea una explicación conceptual sin afirmaciones empíricas ni artefactos que auditar.

## Conceptos
- Reproducibilidad: obtener resultados equivalentes con los mismos datos, codigo y configuracion.
- Replicabilidad: obtener conclusiones consistentes con datos, implementaciones o contextos distintos.
- Trazabilidad: poder seguir decisiones, transformaciones, versiones y artefactos.

## Reglas
- Declara datos, codigo, version de modelos, librerias, hardware, seeds, prompts, hiperparametros, scripts y comandos.
- Distingue artefactos disponibles, artefactos cerrados, artefactos incompletos y artefactos no verificables.
- Revisa licencias, permisos de uso, restricciones de redistribucion, datos personales y terminos de datasets/modelos.
- Para LLM/VLM via API, registra proveedor, modelo exacto, fecha, parametros, prompt, sistema, herramientas y variabilidad esperada.
- Incluye checklist de ejecucion: instalacion, entorno, datos, comandos, orden de pasos y salidas esperadas.
- Considera contenedores, lockfiles, notebooks ordenados, experiment tracking y versionado de datos/modelos cuando aplique.
- En resultados no reproducibles, identifica posibles causas: seeds, no determinismo, hardware, versiones, datos, preprocessing, prompts o diferencias de evaluacion.
- No afirmes reproducibilidad si faltan artefactos criticos.
- Valora resultados negativos, limitaciones y fallos de replicacion como evidencia util.

## Salida recomendada
Mapa de artefactos, brechas de reproducibilidad, riesgos, pasos para replicar, criterios de aceptacion y recomendaciones de documentacion.

## Reproducibilidad en datos geoespaciales y pipelines IA

### Estándares de publicación abierta para datos geoespaciales

- **STAC (OGC 25-004):** catálogo de artefactos geoespaciales versionado. Publicar cada tile o dataset como STAC Item con metadatos de cobertura espacial, rango de fechas, CRS, resolución, licencia y enlace de descarga. Permite que terceros descubran y repliquen el dataset sin instrucciones ad-hoc.
- **COG (OGC 21-026):** formato Cloud-Optimized GeoTIFF para raster; acceso parcial por bounding box sin descargar el archivo completo.
- **GeoParquet:** formato tabular con geometría integrada y CRS declarado; reemplaza CSV con columnas lat/lon y permite predicados espaciales en DuckDB y geopandas.

### Versionado de datos y tracking de experimentos

- **DVC (Data Version Control):** rastrear versiones de datasets geoespaciales sin commitear archivos grandes en Git; usar remote storage en Zenodo, S3 o local. Registrar `dvc.yaml` con el pipeline y `params.yaml` con hiperparámetros.
- **MLflow / Weights & Biases:** logging de métricas, parámetros, artefactos y splits por fold; permite comparar corridas y auditar qué configuración produjo cada resultado.
- Registrar: semillas, versión de cada fuente de datos, período cubierto, CRS, splits espaciales y temporales, y métricas por fold.
