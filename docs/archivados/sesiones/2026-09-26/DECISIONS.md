# DECISIONS — Sesión 2026-09-26 (completa)

Decisiones técnicas y de diseño tomadas en esta sesión. No repetir sin razón explícita.

---

## D1 — Dominio geoespacial: skills enriquecidas (no reescritas)

Se enriquecieron 6 de 8 skills existentes. Las 2 restantes (`analisis-terreno-proximidad`, `deep-learning-geoespacial`) se dejaron sin cambios — alcance adecuado para su scope.

**Skills enriquecidas:**
- `reproducibilidad-geoespacial`: separación crudo/intermedio/analítico, linaje por variable, datasheet (Gebru et al.), incertidumbre en etiquetas
- `preparacion-datos-geoespaciales`: GDAL/rasterio/geopandas, remuestreo por tipo de variable, alineación de grilla, QA/QC
- `analisis-espaciotemporal`: unidad celda-día, ERA5 limitaciones escala 31 km→200 m, ventanas 24-72 h, fuga temporal
- `teledeteccion-optica`: NBR/dNBR, distinción ignición/fuego activo/área quemada, VIIRS limitaciones, bandas Sentinel-2 para fuego
- `modelamiento-geoespacial`: baseline obligatorio, partición espacial/temporal, desbalance de clases, métricas clase minoritaria
- `catalogos-stac`: Item/Collection/Catalog, pystac/pystac-client, publicación de dataset propio

**Commits:** `33335cf` (geoespacial) + `1aa6a54` (ingenieria-software) + `24a85b3` (contenedor OCI) + `4c73f26` (lenguaje-castellano)

---

## D2 — Nuevas skills en ingenieria-software

Se crearon 4 skills nuevas para cubrir necesidades de demo/validación de la tesis:
- `notebooks_reproducibles_reglas.md` — Jupyter/Quarto, Papermill, kernel limpio
- `cli_pipeline_reglas.md` — Click/Typer, idempotencia, Makefile orquestador
- `dashboard_datos_reglas.md` — Streamlit (primera opción para demo académico), Folium/Pydeck para mapas
- `contenedor_pipeline_reglas.md` — Agnóstico al runtime OCI; Podman es la herramienta del proyecto

---

## D3 — Contenedor: OCI-agnóstico, Podman como runtime del proyecto

Docker Desktop requiere licencia comercial. La skill de contenedores usa terminología OCI estándar con ejemplos paralelos Docker/Podman. El usuario usa Podman. Agregar `:Z` en volúmenes para SELinux.

---

## D4 — lenguaje-castellano README completado

El README solo tenía descripción y principios. Se agregó mapa de activación completo con USAR CUANDO / NO USAR CUANDO por módulo y routing rápido por caso de uso.

---

## D5 — Dominios para la tesis: no tocar los otros 11

Los dominios `arte-musical`, `bienestar`, `derecho`, `desarrollo-humano`, `economia-finanzas`, `filosofia`, `fotografias`, `historia`, `medicina`, `seguridad-opsec`, `seguridad-appsec` (este último marginal) no tienen relevancia para la tesis. No revisarlos ni modificarlos en este contexto.

---

## D6 — Distinción clave de la tesis (no perder)

El modelo predictivo basal es secundario — solo valida consumibilidad del dataset. La contribución es la metodología y el pipeline, no el modelo. Al apoyar tareas de la tesis, no proponer modelos avanzados ni sistemas de alerta temprana.

---

## D7 — cr2.md en geoespacial

El archivo `skills/geoespacial/cr2.md` está vacío y sin propósito asignado. El README del dominio lo declara ambiguo explícitamente. No eliminar sin autorización; no asignarle significado.

---

## D8 — Enriquecimiento moderado de precheck-publica-repo

`instrucciones_base_precheck.md` enriquecido con sección de datasets geoespaciales y publicación académica: archivos grandes (no commitear rasters/GeoParquet), licencias de fuentes (ERA5/Sentinel/VIIRS/CONAF), datos prediales sensibles, datasheet mínimo, cómo citar el dataset generado.

**Commit:** `da53c48`

---

## D9 — Enriquecimiento de academia/analisis_notebook_datos_estadistica

Archivo enriquecido con sección geoespacial: GeoDataFrame (CRS, geometrías válidas), arrays raster (nodata, bandas), series espacio-temporales (fuga temporal, zona horaria), clase minoritaria (F1, AP, SMOTE solo en train). No modificar flujo base ni instrucciones_base_academia.

**Commit:** `da53c48`

---

## D10 — Entornos Python y WSL2 en operaciones-tecnologia/linux

`linux_rhel_oel_bash_reglas.md` enriquecido con: `venv`, `conda-mamba` (preferido para geoespacial), configuración de memoria WSL2 (`.wslconfig`), advertencia sobre filesystem `/mnt/c/` vs filesystem Linux nativo.

**Commit:** `da53c48`

---

## D11 — Podman rootless para datos en operaciones-tecnologia/virtualizacion

`virtualizacion_contenedores_reglas.md` enriquecido con: Podman rootless (`:Z`, `:z`), límites de RAM para rasterio (`--memory`), tabla de diagnóstico de errores comunes (permission denied, OOM, subuid, registry, WSL2 lento).

**Commit:** `da53c48`

---

## D12 — Patrón de trabajo Sonnet → plan.md → Haiku validado

Para tareas de escritura mecánica bien delimitada: Sonnet diseña el plan con anclas específicas y contenido exacto; Haiku lee el archivo, verifica el ancla y aplica el contenido. Haiku usó ~47K tokens en 104 s para 4 archivos. El plan.md debe ser autocontenido: archivo, ancla y contenido listo para copiar. Anclas frágiles si el encabezado difiere un carácter — Haiku debe verificar antes de modificar.
