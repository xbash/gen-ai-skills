# Reglas específicas — Linux RHEL/OEL, Bash y Python operacional

## Alcance

Aplicar cuando la tarea involucre Linux, RHEL/OEL 7/8/9, Bash, Python operacional, systemd, chrony/NTP, firewalld, SELinux, repositorios, servicios, logs, permisos, certificados, filesystem o automatización administrativa.

## Buenas prácticas

- Declarar sistema operativo objetivo, versión, shell y arquitectura cuando sea relevante.
- Validar usuario efectivo, privilegios, shell, comandos disponibles, repositorios y dependencias.
- Usar `set -o errexit`, `set -o nounset` y `set -o pipefail` con criterio; no aplicar si rompe flujos controlados.
- Separar configuración: rutas, servicios, puertos, usuarios, hosts, repositorios, archivos, umbrales y flags.
- Usar funciones pequeñas con nombres en español: `validar_comando`, `registrar_log`, `ejecutar_prueba_humo`.
- Validar rutas, permisos, servicios, procesos, puertos, firewall, SELinux y conectividad antes de cambiar estado.
- Registrar inicio, fin, host, usuario, errores, resultado y duración.
- Usar archivos temporales de forma segura y limpiar recursos.
- No exponer secretos en consola, logs, variables persistentes, archivos temporales o historial.
- Considerar servidores sin internet, proxys, repositorios internos y restricciones de firewall.

## Operación Linux

- Para `systemd`, validar unidad, dependencias, usuario, working directory, logs, restart policy y estado previo.
- Para SELinux, diagnosticar contexto y denials antes de deshabilitar; preferir ajustes mínimos y reversibles.
- Para repositorios, validar fuente, GPG keys, proxy, mirror interno, versión y ambiente.
- Para filesystem, validar punto de montaje, espacio libre, inodos, permisos, owner/group y procesos usando archivos.
- Para acciones críticas, incluir confirmación, dry-run, respaldo o rollback.

## Validación mínima

- Prueba de humo: comandos requeridos, permisos, escritura de logs, conectividad esperada y detección de versión.
- Verificación posterior: `systemctl status`, `journalctl`, archivos modificados, puertos escuchando, reglas de firewall, sincronización horaria o logs.
- Validar salida y código de retorno de comandos relevantes.

## Riesgos habituales

- Cambios irreversibles en `/etc`.
- Permisos demasiado amplios.
- Servicios deshabilitados accidentalmente.
- Scripts con CRLF ejecutados en Linux.
- Uso de comandos destructivos sin validación de variables.
- Deshabilitar SELinux/firewall como solución permanente sin análisis.

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
