# Preparación de datos geoespaciales

## Propósito
Preparar y verificar datos raster y vector para un uso analítico explícito, garantizando coherencia de CRS, grilla, resolución, nodata y metadatos entre fuentes.

## USAR CUANDO
Se inspeccionen, conviertan, recorten, reproyecten, remuestreen o alineen datos, o deban comprobarse CRS, grilla, nodata o metadatos antes de integrar fuentes heterogéneas.

## NO USAR CUANDO
El dato ya está validado y la tarea solo requiere modelamiento, catálogo STAC o análisis temporal.

## Entradas
Archivos raster o vector; AOI; CRS y unidades conocidas o por determinar; resolución y grilla objetivo; propósito analítico; metadatos disponibles.

## Workflow

### 1. Inspeccionar antes de transformar
Para cada fuente registrar: formato, CRS (código EPSG), extensión espacial, resolución (raster) o tipo de geometría (vector), unidades, valor nodata declarado y metadatos disponibles.

Herramientas de inspección:
- Raster: `gdalinfo archivo.tif`, `rasterio.open()` (`.crs`, `.transform`, `.nodata`, `.bounds`)
- Vector: `ogrinfo archivo.gpkg`, `geopandas.read_file()` (`.crs`, `.geom_type`, `.total_bounds`)

No asumir CRS ni unidades; verificar siempre en los metadatos del archivo.

### 2. Definir el sistema de referencia de trabajo
Elegir un CRS métrico apropiado para el área de estudio. Para Chile: EPSG:32719 (UTM zona 19S) o EPSG:5361 (SIRGAS-Chile). Definir la grilla objetivo: extensión, resolución y origen. Todas las fuentes deben alinearse a esta grilla antes de integrar.

### 3. Transformaciones raster
**Reproyección**: usar `gdalwarp -t_srs EPSG:xxxxx` o `rasterio.warp.reproject`. Especificar siempre el CRS de destino.

**Remuestreo**: elegir el método según el tipo de variable:
- Variables continuas (temperatura, elevación, índices espectrales): bilinear o bicúbico.
- Variables categóricas (uso de suelo, tipo de cobertura): nearest neighbor.
- Sumas o conteos: agregar antes del remuestreo, no remuestrear directamente.

**Recorte (clip)**: recortar al AOI antes de procesar para reducir cómputo. Verificar que el recorte no elimine píxeles válidos en los bordes.

**Alineación de grilla (snap raster)**: asegurar que origen y tamaño de pixel coincidan exactamente entre todas las fuentes antes de apilar o integrar. Una desalineación de medio pixel entre fuentes genera errores sistemáticos silenciosos.

**Formato de salida**: preferir COG (Cloud Optimized GeoTIFF) para rasters de datos; reduce tiempo de acceso parcial y facilita publicación interoperable.

### 4. Transformaciones vector
**Reproyección**: `geopandas.GeoDataFrame.to_crs(epsg=xxxxx)`. Verificar que la geometría resultante es válida.

**Validación de geometría**: `gdf.is_valid` antes y después de operaciones. Corregir con `buffer(0)` solo cuando esté justificado y documentado.

**Conversión de formatos**:
- Datos intermedios: GeoPackage (.gpkg) — evitar Shapefile por sus limitaciones de nombre de campo y codificación.
- Datasets analíticos con geometría: GeoParquet (.parquet) — formato columnar apto para análisis con pandas/dask y lectura geoespacial.

### 5. Nodata y valores faltantes
Identificar el valor nodata en los metadatos y verificar que coincide con los valores reales en el raster (algunos archivos declaran nodata=0 pero los píxeles sin dato son -9999). Distinguir:
- Nodata de la fuente: sin observación en origen.
- Nodata por recorte: fuera del AOI.
- Nodata por nubosidad u otra máscara de calidad.

Documentar la decisión de manejo (excluir, propagar, interpolar o marcar) y registrarla en el linaje.

### 6. QA/QC básico
- Verificar cobertura espacial completa del AOI para el período requerido.
- Comprobar rango de valores esperado por variable (temperatura entre -50 y 60 °C, NDVI entre -1 y 1, elevación > -500 m).
- Detectar duplicados espaciales o temporales.
- Calcular y registrar el porcentaje de nodata por capa y período.
- Verificar que los metadatos (CRS, resolución, extensión) son coherentes con el contenido real del archivo.

### 7. Registrar cada transformación
Documentar: archivo de entrada, operación aplicada, parámetros usados y archivo de salida. Este registro forma parte del linaje de datos.

## Salida
Datos raster y vector con CRS, grilla y metadatos coherentes entre sí; contrato de CRS/grilla documentado; registro de QA/QC con cobertura y porcentaje de nodata.

## Validaciones
- No asumir CRS ni unidades sin verificar en los metadatos del archivo.
- Comprobar alineación de grilla antes de integrar fuentes (origen y tamaño de pixel).
- No confundir reproyección con remuestreo; son operaciones distintas.
- No usar nearest neighbor en variables continuas ni bilinear en variables categóricas.
- Verificar nodata tanto en metadatos como en los valores reales del archivo.

## Conocimiento incluido
Raster (GeoTIFF, COG), vector (GeoPackage, GeoParquet, Shapefile, GeoJSON), GDAL, rasterio, geopandas, pyproj, shapely, CRS (UTM, SIRGAS), proyecciones, reproyección, recorte, remuestreo (bilinear, nearest neighbor), alineación de grilla, nodata, QA/QC de datasets geoespaciales. `cr2.md` es ambiguo y no se interpreta.

## Checklist
- [ ] CRS, unidades, resolución y nodata verificados en cada fuente.
- [ ] Grilla objetivo definida: extensión, origen y tamaño de pixel.
- [ ] Método de remuestreo elegido según tipo de variable y documentado.
- [ ] Geometrías vectoriales validadas antes y después de transformar.
- [ ] Nodata identificado en metadatos y verificado en los datos reales.
- [ ] QA/QC: cobertura del AOI, rango de valores, duplicados y % nodata registrados.
- [ ] Cada transformación documentada en el linaje.
