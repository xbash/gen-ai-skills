# Analisis de notebooks de datos y estadistica

## Alcance
Usar cuando el notebook trate sobre pandas, NumPy, visualizacion, analisis exploratorio, estadistica descriptiva, inferencia, regresion, series de tiempo, probabilidades o datos tabulares.

## Revision especifica
Ademas del analisis generico, revisar:

- fuente de datos;
- carga de archivos;
- columnas, tipos, nulos, duplicados y rangos;
- limpieza y transformaciones;
- agregaciones y filtros;
- visualizaciones;
- supuestos estadisticos;
- metodos de inferencia o modelamiento;
- interpretacion de resultados;
- coherencia entre codigo, graficos y conclusiones.

## Reglas
- No inventar nombres de columnas ni resultados.
- No interpretar correlacion como causalidad.
- Verificar unidades, fechas, escalas y filtros.
- En graficos, revisar titulo, ejes, leyenda, unidades y claridad.
- En inferencia, reportar supuestos, incertidumbre y limitaciones.

## Salida esperada
Propuestas de codigo reproducible, textos interpretativos y revision critica de datos, graficos y conclusiones.

## Datos geoespaciales y series espacio-temporales

Aplicar adicionalmente cuando el notebook procese GeoDataFrames, arrays raster, series temporales con dimensión espacial o datasets con variable objetivo binaria desbalanceada.

### GeoDataFrame y datos vectoriales

- Verificar que el CRS esté definido (`gdf.crs`) y sea el correcto para el área de estudio (para Chile central: EPSG:32719 UTM 19S o EPSG:4326 geográfico).
- Revisar que las geometrías sean válidas (`gdf.is_valid.all()`); geometrías inválidas silencian errores en joins y operaciones espaciales.
- En joins espaciales (`sjoin`, `merge`), verificar que ambas capas tengan el mismo CRS antes del join.
- Reportar cobertura espacial: bounding box, número de features y distribución por categoría si corresponde.

### Arrays raster

- Verificar metadatos básicos: dimensiones (filas × columnas), resolución (tamaño de celda), CRS, nodata value y dtype.
- Confirmar que los valores nodata estén enmascarados antes de cualquier operación estadística (`numpy.ma` o `rasterio` masked arrays).
- En operaciones multi-banda, verificar que las bandas correspondan a las esperadas (nombre, longitud de onda, resolución).

### Series espacio-temporales

- Verificar cobertura temporal: fechas mínima y máxima, frecuencia, huecos temporales.
- Para datos meteorológicos (ERA5), verificar que la zona horaria esté correctamente convertida a hora local antes de cualquier agregación diaria.
- Confirmar que no haya información futura usada como variable predictora (fuga temporal): las variables de la celda-día deben corresponder a información disponible antes del evento.

### Variables objetivo binarias desbalanceadas

- Reportar distribución de clases: `value_counts()` y porcentaje de la clase positiva.
- Si la clase positiva representa menos del 5% de las observaciones, considerar desbalance severo.
- Métricas adecuadas para clase minoritaria: precisión, recall, F1-score por clase, curva Precisión-Recall y Average Precision (AP). Evitar reportar solo accuracy o AUC-ROC como métrica única.
- Verificar que transformaciones como SMOTE u oversampling se apliquen únicamente sobre el conjunto de entrenamiento, nunca sobre validación ni test.
