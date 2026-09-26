# Catálogos STAC

## Propósito
Seleccionar assets geoespaciales desde un catálogo STAC de forma reproducible, y publicar datasets geoespaciales con metadatos STAC para facilitar su descubrimiento e interoperabilidad.

## USAR CUANDO
La adquisición o selección de datos se realiza mediante un catálogo STAC, o cuando se publique un dataset geoespacial que deba ser descubierto y consumido por terceros de forma interoperable.

## NO USAR CUANDO
Los datos ya fueron entregados con procedencia suficiente, la fuente no es STAC, o la publicación no requiere interoperabilidad.

## Entradas
Catálogo y colección identificados; AOI; intervalo temporal; filtros de búsqueda; criterios de cobertura y calidad; assets a publicar (si aplica).

## Conceptos clave

**STAC (SpatioTemporal Asset Catalog)**: estándar OGC para describir activos geoespaciales con metadatos espaciales y temporales. Permite buscar, filtrar y acceder a datos raster, vector y tabular de forma uniforme.

Componentes del modelo STAC:
- **Item**: unidad mínima; describe un activo (imagen, capa) con su extensión espacial, intervalo temporal, propiedades y links a los archivos (assets). Cada asset tiene un tipo MIME (image/tiff, application/geo+json, etc.).
- **Collection**: agrupa Items relacionados bajo una descripción común (ej. todas las escenas Sentinel-2 de un área).
- **Catalog**: contenedor raíz que organiza Collections e Items; puede ser estático (archivos JSON) o dinámico (API STAC).

**Relación con otros formatos**:
- COG (Cloud Optimized GeoTIFF): formato recomendado para assets raster en un Item STAC; permite acceso parcial por HTTP.
- GeoParquet: formato recomendado para assets tabulares con geometría.
- Un Item STAC describe el activo; COG o GeoParquet son el activo mismo.

## Workflow

### 1. Consultar un catálogo STAC existente
Identificar catálogo, colección y criterios de búsqueda sin inventar endpoints ni disponibilidad.

Con `pystac-client`:
```python
from pystac_client import Client
catalog = Client.open("https://url-del-catalogo")
results = catalog.search(
    collections=["nombre-coleccion"],
    bbox=[lon_min, lat_min, lon_max, lat_max],
    datetime="2020-01-01/2020-12-31",
    query={"eo:cloud_cover": {"lt": 20}}
)
items = list(results.get_items())
```

Registrar: URL del catálogo, colección, parámetros de búsqueda y número de Items devueltos.

### 2. Revisar y seleccionar assets
Para cada Item devuelto, verificar: cobertura espacial del AOI, fechas, metadatos de calidad (nubosidad, confianza) y tipos de assets disponibles. Separar descubrimiento de procesamiento: STAC resuelve qué datos existen; la descarga y el procesamiento son pasos posteriores.

### 3. Publicar un dataset como STAC (si aplica)
Para hacer un dataset reproducible e interoperable, publicar sus metadatos como Items STAC. Metadatos mínimos por Item:
- `id`: identificador único del activo.
- `geometry` y `bbox`: extensión espacial en WGS84 (EPSG:4326).
- `datetime` o `start_datetime` / `end_datetime`: período del activo.
- `properties`: descripción, resolución, CRS, versión del dataset, licencia.
- `assets`: links a los archivos con tipo MIME, roles (data, overview, metadata) y descripción.

Con `pystac`:
```python
import pystac
item = pystac.Item(
    id="mi-dataset-v1",
    geometry=geojson_geometry,
    bbox=[lon_min, lat_min, lon_max, lat_max],
    datetime=datetime(2024, 1, 1),
    properties={"description": "...", "version": "1.0"}
)
item.add_asset("data", pystac.Asset(href="ruta/dataset.parquet", media_type="application/x-parquet"))
```

### 4. Registrar la consulta o publicación
Documentar: URL del catálogo, filtros usados, Items seleccionados o publicados, fecha de consulta/publicación. Esto forma parte del linaje de datos.

## Salida
- Para consulta: lista de assets seleccionados con metadatos y criterios de selección registrados.
- Para publicación: Items STAC con metadatos completos que permitan descubrir y consumir el dataset sin transformaciones manuales.

## Validaciones
- No afirmar disponibilidad de catálogos, colecciones o endpoints sin verificar acceso.
- No procesar imágenes dentro de este workflow; STAC resuelve descubrimiento y selección.
- No confundir el Item STAC (metadatos) con el asset (el archivo de datos).
- Verificar que los metadatos STAC publicados son coherentes con el contenido real del archivo.

## Conocimiento incluido
STAC (OGC 25-004 v1.1), Item, Collection, Catalog, pystac, pystac-client, COG como asset raster recomendado, GeoParquet como asset tabular recomendado, metadatos mínimos de publicación.

## Checklist
- [ ] Catálogo, colección, AOI e intervalo temporal declarados.
- [ ] Filtros y criterios de selección registrados.
- [ ] Assets verificados: cobertura, metadatos de calidad y tipos de archivo.
- [ ] Descubrimiento separado del procesamiento.
- [ ] Si se publica: metadatos STAC completos (id, geometry, datetime, properties, assets).
- [ ] Consulta o publicación registrada en el linaje.
