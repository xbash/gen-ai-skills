# Plan de enriquecimiento — Dominios para tesis Magíster TI

**Fecha:** 2026-09-26  
**Estado:** Pendiente de ejecución  
**Ejecutor esperado:** modelo económico (Ejecutor / razonamiento bajo-medio)  
**Contexto:** Estos 4 archivos pertenecen a dominios que Jorge Sepúlveda usará en su tesis "Metodología reproducible para construir datasets geoespaciales de ignición de incendios rurales a escala comunal". El enriquecimiento es moderado: agregar secciones nuevas al final de cada archivo sin reescribir lo existente.

---

## Reglas de ejecución

- Leer el archivo antes de modificar. Nunca reescribir ni eliminar contenido existente.
- Agregar únicamente las secciones indicadas en cada sub-plan. No agregar más.
- Respetar el estilo Markdown existente (encabezados ##, listas con guión, bloques de código con triple backtick).
- No hacer commit ni push; solo modificar los archivos.
- Verificar con `git diff --stat` al terminar.

---

## Sub-plan 1 — `skills/precheck-publica-repo/instrucciones_base_precheck.md`

**Objetivo:** Agregar verificaciones específicas para datasets geoespaciales y publicación académica de repositorios de tesis.

**Dónde insertar:** Al final del archivo, después de la sección `## Severidad sugerida`.

**Contenido a agregar:**

```markdown
## Datasets geoespaciales y publicación académica

Aplicar cuando el repositorio incluya datos raster, vectoriales o tabulares de origen geoespacial, o cuando la publicación sea un producto académico (tesis, artículo, dataset de investigación).

### Archivos grandes y datos externos

- Los archivos raster (GeoTIFF, COG, NetCDF) y tabulares grandes (GeoParquet, CSV con coordenadas) no deben estar en el repositorio Git. Verificar que `.gitignore` excluya extensiones como `.tif`, `.tiff`, `.nc`, `.parquet`, `.geojson` si superan el límite de GitHub (100 MB).
- Los datos deben estar alojados en un repositorio de datos externo (Zenodo, Figshare, OSF) o accesibles vía STAC/COG. El README debe documentar cómo obtenerlos.
- Verificar que no existan archivos `data/`, `raw/`, `output/` con datos crudos commiteados accidentalmente.

### Licencias de fuentes geoespaciales

Verificar que el README o un archivo `ATTRIBUTIONS.md` declare la licencia de cada fuente de datos utilizada:

| Fuente habitual | Licencia / restricción |
|---|---|
| ERA5 (Copernicus Climate Change Service) | Copernicus License v1.2 — requiere atribución; redistribución permitida con condiciones |
| Sentinel-2 (ESA/Copernicus) | Acceso libre; requiere atribución "Contains modified Copernicus Sentinel data [año]" |
| VIIRS (NASA FIRMS) | Dominio público (NASA); requiere atribución |
| CONAF (Chile) | Verificar términos vigentes; datos derivados pueden requerir autorización |
| OpenStreetMap | ODbL — requiere atribución y share-alike si se redistribuyen datos derivados |

No publicar datos de fuentes con restricciones sin verificar si el producto derivado cumple los términos.

### Datos sensibles geoespaciales

- Registros de ignición con coordenadas precisas pueden identificar predios privados. Evaluar si corresponde agregar desplazamiento espacial (spatial jitter) o publicar solo a nivel de celda/grilla.
- Nombres de propietarios, direcciones o RUT asociados a registros de campo nunca deben estar en el repositorio.

### Publicación académica del dataset

Antes de publicar el repositorio final de tesis, verificar:

- Existe un `datasheet.md` o sección equivalente que documente: origen de cada variable, método de recolección, limitaciones conocidas, sesgos, fecha de corte y versión.
- El README incluye cómo citar el dataset (formato BibTeX o APA con DOI si está en Zenodo/Figshare).
- El pipeline es reproducible desde cero siguiendo solo las instrucciones del README (sin archivos locales no documentados).
- Los notebooks están sin outputs si se publican como código fuente (usar `nbstripout` o equivalente antes del commit final).

### Severidad adicional para datasets geoespaciales

- **Crítico:** datos personales o prediales identificables commiteados en el repo.
- **Alto:** datos raster grandes (>50 MB) en el historial Git; fuentes con licencia restrictiva redistribuidas sin verificación.
- **Medio:** falta de datasheet o atribución de fuentes; notebooks con outputs de datos privados.
- **Bajo:** extensiones geoespaciales no cubiertas por `.gitignore`; README sin instrucciones de descarga de datos.
```

---

## Sub-plan 2 — `skills/academia/analisis_notebook_datos_estadistica.md`

**Objetivo:** Agregar verificaciones para datos geoespaciales y métricas de clase minoritaria, relevantes para notebooks de pipeline de tesis.

**Dónde insertar:** Al final del archivo, después de `## Salida esperada`.

**Contenido a agregar:**

```markdown
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
```

---

## Sub-plan 3 — `skills/operaciones-tecnologia/linux_rhel_oel_bash_reglas.md`

**Objetivo:** Agregar gestión de entornos Python (venv/conda-mamba) y consideraciones WSL2 para usuarios en Windows 11.

**Dónde insertar:** Al final del archivo, después de `## Riesgos habituales`.

**Contenido a agregar:**

```markdown
## Entornos Python para pipelines de datos

### Entorno virtual con venv

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

- Activar el entorno antes de ejecutar el pipeline; verificar con `which python`.
- No instalar dependencias globalmente con `sudo pip`; contamina el sistema base.
- Para fijar versiones exactas: `pip freeze > requirements.txt` sobre el entorno activo.

### Entorno conda/mamba (recomendado para dependencias geoespaciales)

```bash
mamba create -n geo311 python=3.11
mamba activate geo311
mamba install -c conda-forge gdal rasterio fiona geopandas
pip install -r requirements-extras.txt
```

- `mamba` es equivalente a `conda` pero más rápido para resolver dependencias.
- Para dependencias geoespaciales complejas (GDAL, rasterio, fiona), conda-forge resuelve compatibilidad de bibliotecas C nativa mejor que pip.
- Exportar entorno reproducible: `mamba env export --no-builds > environment.yml`.

### Consideraciones WSL2 (Windows 11)

- WSL2 corre como VM con kernel Linux real; los comandos Linux aplican sin modificación.
- La ruta del sistema de archivos Windows se monta en `/mnt/c/`; acceder a archivos Windows desde WSL2 es más lento que trabajar en el sistema de archivos Linux (`~/`). Para pipelines I/O-intensivos, copiar los datos a `~/data/` en WSL2.
- Podman en WSL2: instalar la versión Linux de Podman dentro de WSL2, no usar Podman Desktop de Windows para scripts de pipeline.
- Variables de entorno definidas en `.bashrc` o `.zshrc` dentro de WSL2 no son visibles desde PowerShell y viceversa.
- Para memoria: WSL2 por defecto usa hasta el 50% de la RAM del host. Si el pipeline requiere más, configurar en `%USERPROFILE%\.wslconfig`:

```ini
[wsl2]
memory=12GB
processors=4
```
```

---

## Sub-plan 4 — `skills/operaciones-tecnologia/virtualizacion_contenedores_reglas.md`

**Objetivo:** Agregar sección específica para Podman rootless en pipelines de datos con procesamiento geoespacial intensivo.

**Dónde insertar:** Al final del archivo, después de `## Riesgos habituales`.

**Contenido a agregar:**

```markdown
## Podman rootless para pipelines de datos

### Configuración básica rootless

```bash
# Verificar que subuid/subgid estén configurados
grep $(whoami) /etc/subuid /etc/subgid

# Ejecutar pipeline sin root
podman run --rm \
  -v $(pwd)/data:/app/data:Z \
  -v $(pwd)/output:/app/output:Z \
  mi-pipeline:1.0 --config config/config.yaml
```

- La opción `:Z` ajusta el contexto SELinux del volumen. Sin ella, el contenedor puede no tener acceso al directorio del host en sistemas con SELinux activo (RHEL, Fedora).
- Para volúmenes compartidos entre múltiples contenedores, usar `:z` (minúscula) en lugar de `:Z`.

### Datos grandes y memoria en procesamiento geoespacial

- GDAL y rasterio pueden consumir varios GB de RAM al procesar rasters de alta resolución. Limitar memoria del contenedor para evitar OOM del host:

```bash
podman run --rm \
  --memory=8g \
  --memory-swap=8g \
  -v $(pwd)/data:/app/data:Z \
  mi-pipeline:1.0
```

- Para rasters muy grandes, procesar por tiles o bloques; no cargar el array completo en memoria si la resolución de salida no lo requiere.
- Verificar espacio libre antes de ejecutar: `df -h $(pwd)/output` en el host; el procesamiento puede generar archivos de salida 2-5× más grandes que el input.

### Diagnóstico de problemas comunes

| Síntoma | Causa probable | Solución |
|---|---|---|
| `permission denied` en volumen | SELinux sin `:Z` | Agregar `:Z` al volumen |
| Contenedor OOM killed | Procesamiento raster sin límite | Usar `--memory` |
| `subuid range not found` | Rootless no configurado | `sudo usermod --add-subuids 100000-165535 $(whoami)` |
| Imagen no encontrada | Registry sin autenticación | `podman login registry.example.com` |
| Lento acceso a datos en WSL2 | Datos en `/mnt/c/` en lugar de filesystem Linux | Mover datos a `~/` dentro de WSL2 |
```

---

## Criterios de aceptación globales

Al terminar los 4 sub-planes:

1. `git diff --stat` muestra exactamente 4 archivos modificados.
2. Ningún archivo existente perdió contenido (verificar con `git diff` que solo hay líneas añadidas `+`, no eliminadas `-` en el contenido previo).
3. Los 4 archivos tienen newline final.
4. No hay commit, no hay push.
