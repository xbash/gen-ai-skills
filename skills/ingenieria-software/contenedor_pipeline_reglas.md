# Reglas específicas — Contenedor para pipeline reproducible

## Alcance

USAR CUANDO: se empaquete un pipeline de datos o análisis en un contenedor para garantizar que cualquier persona pueda reproducirlo sin configurar el entorno manualmente.

NO USAR CUANDO: el objetivo sea despliegue de un servicio web de producción o CI/CD de una aplicación; usar `devops_ci_cd_reglas.md` en ese caso.

## Estándar OCI y elección de runtime

Los contenedores para reproducibilidad se basan en el estándar OCI (Open Container Initiative), que define el formato de imagen y el protocolo de ejecución de forma independiente del runtime. Una imagen construida con cualquier herramienta OCI-compatible puede ejecutarse con cualquier runtime OCI-compatible.

Runtimes habituales (todos compatibles con imágenes OCI):

| Runtime | Notas |
|---|---|
| **Podman** | Daemonless, rootless por defecto, sin servidor central; CLI compatible con Docker; licencia Apache 2.0 |
| **Docker Engine** | Ampliamente documentado; CLI de referencia; Docker Engine (Linux) es gratuito; Docker Desktop requiere licencia comercial en organizaciones medianas y grandes |
| **nerdctl + containerd** | Alternativa ligera compatible con Docker CLI; ecosistema CNCF |
| **Buildah** | Herramienta especializada en construcción de imágenes; se integra con Podman |

La CLI de Podman es intencionalmente compatible con Docker: en la mayoría de los casos basta con reemplazar `docker` por `podman` en los comandos. Usar el runtime disponible en el entorno; el Containerfile/Dockerfile y los comandos son portables.

## Containerfile / Dockerfile

El archivo de definición de la imagen es el mismo independientemente del runtime. Podman usa el término `Containerfile` por convención, pero acepta `Dockerfile` sin diferencia funcional.

```dockerfile
FROM python:3.11-slim

# Dependencias del sistema (librerías geoespaciales)
RUN apt-get update && apt-get install -y --no-install-recommends \
    gdal-bin \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Dependencias Python (copiar primero para reutilizar cache de capas)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Código del pipeline
COPY src/ ./src/
COPY config/ ./config/

ENTRYPOINT ["python", "src/pipeline.py"]
CMD ["--help"]
```

Reglas de construcción:
- Usar imagen base con versión explícita (`python:3.11-slim`, no `python:latest`).
- Copiar `requirements.txt` antes del código fuente para reutilizar la capa de dependencias cuando solo cambie el código.
- No incluir datos en la imagen; montarlos como volumen en tiempo de ejecución.
- No incluir credenciales ni secretos; pasarlos como variables de entorno en tiempo de ejecución.
- Para dependencias geoespaciales complejas (GDAL, rasterio, fiona), considerar imágenes base del proyecto OSGeo: `ghcr.io/osgeo/gdal:ubuntu-small-3.x`.

## Construir la imagen

```bash
# Docker
docker build -t mi-pipeline:1.0 .

# Podman
podman build -t mi-pipeline:1.0 .
```

## Ejecutar con volúmenes para datos

Los datos crudos y artefactos de salida viven fuera de la imagen, montados como volúmenes:

```bash
# Docker
docker run --rm \
  -v $(pwd)/data:/app/data \
  -v $(pwd)/output:/app/output \
  mi-pipeline:1.0 --config config/config.yaml

# Podman (misma sintaxis)
podman run --rm \
  -v $(pwd)/data:/app/data:Z \
  -v $(pwd)/output:/app/output:Z \
  mi-pipeline:1.0 --config config/config.yaml
```

Nota: Podman en sistemas con SELinux requiere la opción `:Z` en los volúmenes para ajustar el contexto de seguridad. Si los volúmenes no son accesibles, agregar `:Z` resuelve el problema en la mayoría de los casos.

## Orquestación multi-etapa

Para pipelines con múltiples servicios o etapas, usar un archivo `compose.yaml` (nombre recomendado por la especificación Compose; compatible con Docker Compose v2 y Podman Compose):

```yaml
services:
  pipeline:
    build: .
    volumes:
      - ./data:/app/data:Z
      - ./output:/app/output:Z
    environment:
      - LOG_LEVEL=INFO
    command: ["--config", "config/config.yaml"]
```

```bash
# Docker Compose v2
docker compose up --build

# Podman Compose
podman compose up --build
```

## Archivo .containerignore / .dockerignore

Ambos runtimes respetan `.dockerignore`. Podman también acepta `.containerignore` (tiene precedencia si ambos existen):

```
.git/
data/
output/
__pycache__/
*.pyc
.env
*.ipynb_checkpoints
```

## Versionado de la imagen

- Etiquetar con versión semántica o fecha: `mi-pipeline:1.0.0`, no usar `latest` como etiqueta única.
- Publicar en un registry OCI-compatible accesible: Docker Hub, GitHub Container Registry (GHCR), Quay.io (gratuito, mantenido por Red Hat, compatible con Podman).

## Reproducibilidad del entorno

- Fijar versiones exactas en `requirements.txt` (`pip freeze > requirements.txt` sobre el entorno de desarrollo).
- Considerar `pip-compile` (pip-tools) para separar dependencias directas de transitivas.
- La imagen construida es el artefacto reproducible: quien la ejecute obtiene el mismo entorno.

## Validación mínima

- `podman build -t mi-pipeline:test .` (o `docker build`) completa sin errores.
- `podman run --rm mi-pipeline:test --help` muestra los parámetros disponibles.
- Ejecutar con datos de muestra produce el artefacto de salida esperado.
- La imagen no contiene credenciales, rutas absolutas del host ni datos crudos embebidos.
- El README documenta el comando exacto para ejecutar el pipeline, indicando el runtime usado en el proyecto.
