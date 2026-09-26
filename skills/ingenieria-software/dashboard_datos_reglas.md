# Reglas específicas — Dashboard de datos

## Alcance

USAR CUANDO: se construya una interfaz interactiva para explorar, visualizar o validar un dataset o los resultados de un pipeline de datos.

NO USAR CUANDO: el objetivo sea un sistema transaccional, una API de producción o un frontend de aplicación general; usar `backend_api_reglas.md` y `frontend_web_reglas.md` en esos casos.

## Cuándo usar cada framework

Para dashboards de datos en Python, los tres frameworks principales son:

| Framework | Mejor para | Limitación principal |
|---|---|---|
| **Streamlit** | Prototipos rápidos, demos académicos, scripts lineales; mínimo boilerplate | Se re-ejecuta todo el script en cada interacción; escala mal con lógica compleja |
| **Dash** (Plotly) | Dashboards más complejos, callbacks granulares, múltiples outputs | Mayor boilerplate; curva de aprendizaje más pronunciada |
| **Panel** | Integración con ecosistema PyData (HoloViews, hvPlot); notebooks → dashboard | Menos documentación que Streamlit/Dash |

Para un demo de validación metodológica, **Streamlit** es la opción más rápida de implementar y suficiente para el propósito.

## Diseño del dashboard

- Definir primero qué pregunta responde el dashboard: ¿muestra el dataset resultante? ¿permite explorar variables? ¿compara resultados entre configuraciones?
- Separar carga de datos, lógica de procesamiento e interfaz visual. No mezclar transformaciones pesadas con el código de widgets.
- Cachear carga de datos con `@st.cache_data` (Streamlit) para no recargar archivos en cada interacción.
- Diseñar para un único caso de uso claro; un dashboard que intenta mostrar todo termina siendo difícil de usar.

## Estructura recomendada (Streamlit)

```python
import streamlit as st
import geopandas as gpd
import pandas as pd

st.title("Validación del dataset — Las Cabras")

# Sidebar: parámetros de filtro
with st.sidebar:
    periodo = st.selectbox("Período", opciones_periodo)
    variable = st.selectbox("Variable", variables_disponibles)

# Carga cacheada
@st.cache_data
def cargar_dataset(ruta):
    return pd.read_parquet(ruta)

df = cargar_dataset("data/dataset_piloto.parquet")

# Filtros y visualización
df_filtrado = df[df["periodo"] == periodo]
st.metric("Celdas con dato completo", f"{df_filtrado['completitud'].mean():.1%}")
st.dataframe(df_filtrado[["celda_id", variable, "calidad"]].head(100))
```

## Visualización geoespacial en dashboard

Para mostrar capas geoespaciales en Streamlit, las opciones principales son:
- **Folium + `st.components.v1.html`**: mapas interactivos con capas Leaflet; soporta GeoJSON, marcadores y popups.
- **Pydeck**: visualizaciones 3D y 2D de alto rendimiento con `st.pydeck_chart`; buena integración con GeoParquet.
- **Plotly Express con `px.choropleth_mapbox`**: mapas coropléticos sobre Mapbox.

Limitar el número de features renderizadas en el cliente (ej. máximo 5.000-10.000 puntos); para datasets mayores, agregar antes de visualizar.

## Datos y rendimiento

- Leer solo las columnas y filas necesarias para el filtro activo; no cargar el dataset completo en memoria si es grande.
- Para archivos GeoParquet o Parquet, usar filtros en la lectura: `pd.read_parquet(..., filters=[("periodo", "==", valor)])`.
- No realizar transformaciones geoespaciales pesadas (reproyección, buffer, join espacial) dentro del callback del dashboard; hacerlas en el pipeline y guardar el resultado como artefacto.

## Despliegue y acceso

Para un demo académico, las opciones más simples son:
- **Local**: `streamlit run app.py`; compartir con el comité ejecutando localmente o via ngrok.
- **Streamlit Community Cloud**: despliegue gratuito desde un repositorio GitHub público o privado; adecuado para demos de tesis.
- **Contenedor Docker**: empaquetar con Dockerfile para garantizar reproducibilidad del entorno (ver `contenedor_pipeline_reglas.md`).

## Validación mínima

- El dashboard carga sin errores con el dataset de ejemplo.
- Los filtros producen resultados coherentes y no generan errores con valores extremos o vacíos.
- La carga de datos está cacheada; no se recarga en cada interacción.
- Las visualizaciones geoespaciales se renderizan sin exceder el límite de features del cliente.
- El README del proyecto describe cómo ejecutar el dashboard.
