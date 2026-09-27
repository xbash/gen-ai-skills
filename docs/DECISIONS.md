# DECISIONS — Decisiones vigentes (corte 2026-09-26)

Solo se listan las decisiones relevantes para continuar el trabajo de tesis. Las decisiones pre-tesis (desarrollo-ia, AGENTS.md, README.md) están archivadas en `docs/sesiones/2026-09-26/DECISIONS.md`.

---

## Repositorio y metodología de trabajo

- **Roles de modelos:** Ejecutor (Haiku, tareas mecánicas), Analista (Sonnet acotado), Arquitecto (Sonnet, diseño y decisiones). Ver `AGENTS.md`.
- **Patrón plan.md:** Sonnet diseña sub-planes con ancla + contenido exacto → Haiku ejecuta verificando ancla antes de modificar → Sonnet revisa y hace commit/push.
- **Runtime de contenedores:** Podman (Apache 2.0, daemonless, rootless). Docker Desktop requiere licencia comercial. Usar `:Z` en volúmenes con SELinux.

---

## Dominio geoespacial

- **Skills enriquecidas (6/8):** reproducibilidad, preparacion-datos, analisis-espaciotemporal, teledeteccion-optica, modelamiento, catalogos-stac. No tocar `analisis-terreno-proximidad` ni `deep-learning-geoespacial`.
- **cr2.md:** vacío, sin propósito asignado. No eliminar ni asignar significado sin autorización del usuario.
- **Distinción clave:** ignición ≠ fuego activo ≠ área quemada. VIIRS mide anomalía térmica, no inicio de fuego.
- **ERA5:** resolución ~31 km; integrar a grilla 200 m requiere interpolación bilineal con cautela.
- **Fuga temporal:** variables de celda-día deben ser información disponible ANTES del evento. UTC → hora local antes de cualquier agregación diaria.

---

## Dominio ingenieria-software

- **4 skills nuevas:** `notebooks_reproducibles_reglas.md`, `cli_pipeline_reglas.md`, `dashboard_datos_reglas.md`, `contenedor_pipeline_reglas.md`.
- **Demo académico:** Streamlit es primera opción. Folium/Pydeck para capas geoespaciales. Límite ~5K–10K features para renderizado cliente.
- **Contenedor:** imagen base con versión explícita; datos montados como volumen, nunca embebidos; `Containerfile` = `Dockerfile` en Podman.

---

## Dominio precheck-publica-repo

- **Enriquecimiento aplicado:** sección de datasets geoespaciales + publicación académica. Licencias ERA5 (Copernicus), Sentinel-2 (ESA), VIIRS (NASA), CONAF (verificar). Registros de ignición con coordenadas pueden identificar predios privados → evaluar spatial jitter o publicar solo a nivel de celda.
- **Antes de publicar:** datasheet mínimo documentado, DOI en Zenodo/Figshare, rasters NO en el repo Git.

---

## Dominio academia

- **Enriquecimiento aplicado:** `analisis_notebook_datos_estadistica.md` con sección geoespacial: CRS, geometrías válidas, nodata enmascarado, fuga temporal, clase minoritaria (F1, AP, SMOTE solo en train).

---

## Dominio operaciones-tecnologia

- **linux enriquecido:** venv y conda-mamba (preferido para geoespacial por resolución de dependencias C); WSL2: usar filesystem Linux nativo para pipelines I/O-intensivos; configurar `.wslconfig` para memoria.
- **virtualizacion enriquecido:** Podman rootless con `:Z`/`:z`, límites de RAM (`--memory`) para rasterio/GDAL, tabla de diagnóstico de errores comunes.

---

## Distinción clave de la tesis (no perder)

El modelo predictivo basal es **secundario** — solo valida consumibilidad del dataset. La contribución es la metodología y el pipeline. No proponer modelos avanzados ni sistemas de alerta temprana al apoyar tareas de tesis.

---

## Dominios fuera del alcance de la tesis

`arte-musical`, `bienestar`, `derecho`, `desarrollo-humano`, `economia-finanzas`, `filosofia`, `fotografias`, `historia`, `medicina`, `seguridad-opsec`, `seguridad-appsec`. No revisar ni modificar en contexto de tesis.
