# DECISIONS — Sesión 2026-09-26

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
