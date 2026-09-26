# Reglas específicas — Contenedor para pipeline reproducible

## Alcance

USAR CUANDO: se empaquete un pipeline de datos o análisis en un contenedor Docker para garantizar que cualquier persona pueda reproducirlo sin configurar el entorno manualmente.

NO USAR CUANDO: el objetivo sea despliegue de un servicio web de producción o CI/CD de una aplicación; usar `devops_ci_cd_reglas.md` en ese caso.

## Por qué contenedores para reproducibilidad

Un contenedor empaqueta el código, las dependencias, la versión de Python y las herramientas del sistema en una imagen inmutable. Quien tenga Docker instalado puede ejecutar el pipeline con un solo comando, independientemente de su sistema operativo. Esto elimina el problema "en mi máquina funciona".

## Dockerfile para pipeline de datos

```dockerfile
FROM python:3.11-slim

# Dependencias del sistema (GDAL, librerías geoespaciales)
RUN apt-get update && apt-get install -y --no-install-recommends \
    gdal-bin \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*

# Directorio de trabajo
WORKDIR /app

# Dependencias Python (copiar primero para aprovechar cache de capas)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Código del pipeline
COPY src/ ./src/
COPY config/ ./config/

# Punto de entrada por defecto
ENTRYPOINT ["python", "src/pipeline.py"]
CMD ["--help"]
```

Reglas de construcción:
- Usar imagen base con versión explícita (`python:3.11-slim`, no `python:latest`).
- Copiar `requirements.txt` antes del código fuente para que Docker reutilice la capa de dependencias cuando solo cambie el código.
- Instalar dependencias del sistema en un solo `RUN` con `--no-install-recommends` para reducir tamaño.
- No incluir datos en la imagen; montarlos como volumen en tiempo de ejecución.
- No incluir credenciales ni secretos en la imagen; pasarlos como variables de entorno.

## Gestión de datos con volúmenes

Los datos crudos y los artefactos de salida deben vivir fuera de la imagen, en el sistema de archivos del host:

```bash
# Ejecutar el pipeline: montar datos de entrada y salida
docker run --rm \
  -v $(pwd)/data:/app/data \
  -v $(pwd)/output:/app/output \
  mi-pipeline:1.0 \
  --config config/config.yaml --salida /app/output
```

Estructura de directorios montados:
- `/app/data/raw/`: datos crudos de entrada (solo lectura desde el contenedor).
- `/app/output/`: artefactos generados por el pipeline.

## Docker Compose para pipeline multi-etapa

Si el pipeline tiene etapas separadas o servicios auxiliares (ej. base de datos, servidor de archivos), usar `docker-compose.yml`:

```yaml
version: "3.9"
services:
  pipeline:
    build: .
    volumes:
      - ./data:/app/data
      - ./output:/app/output
    environment:
      - LOG_LEVEL=INFO
    command: ["--config", "config/config.yaml"]
```

Ejecutar con: `docker compose up --build`

## Versionado de la imagen

- Etiquetar la imagen con versión semántica o fecha: `mi-pipeline:1.0.0` o `mi-pipeline:2024-01-15`.
- No usar `latest` como única etiqueta en artefactos que deban ser reproducibles; `latest` cambia con cada build.
- Publicar en un registry accesible (Docker Hub, GitHub Container Registry) si el pipeline debe ejecutarse por terceros sin acceso al código fuente.

## Archivo .dockerignore

Excluir del contexto de build lo que no debe ir en la imagen:

```
.git/
data/
output/
__pycache__/
*.pyc
.env
*.ipynb_checkpoints
```

## Reproducibilidad del entorno

- Fijar versiones exactas en `requirements.txt` (usar `pip freeze > requirements.txt` sobre el entorno de desarrollo).
- Considerar `pip-compile` (pip-tools) para separar dependencias directas de transitivas y mantener un lockfile.
- Para dependencias geoespaciales complejas (GDAL, rasterio, fiona), preferir imágenes base que ya las incluyan: `ghcr.io/osgeo/gdal:ubuntu-small-3.8.0` u otras del proyecto OSGeo.

## Validación mínima

- `docker build -t mi-pipeline:test .` completa sin errores.
- `docker run --rm mi-pipeline:test --help` muestra los parámetros disponibles.
- Ejecutar con datos de muestra mínimos produce el artefacto de salida esperado.
- La imagen no contiene credenciales, rutas absolutas del host ni datos crudos embebidos.
- El README documenta el comando exacto para ejecutar el pipeline con Docker.
