# Reglas específicas — Supply chain, dependencias, SBOM y EOL/EOS

## Alcance

Aplicar cuando la tarea involucre dependencias, librerías, paquetes, imágenes, SBOM, SCA, CVEs, licencias, obsolescencia EOL/EOS, integridad de artefactos, seguridad de pipeline, procedencia o cadena de suministro de software.

## Dependencias y vulnerabilidades

- No inventar CVEs, versiones afectadas, severidades ni explotación activa.
- Verificar paquete, versión, ecosistema, fuente, fecha, advisory y contexto de uso.
- Diferenciar vulnerabilidad conocida, obsolescencia, licencia riesgosa, configuración insegura, dependencia transitiva y riesgo operacional.
- Priorizar por exposición, criticidad del activo, uso real de la librería, explotabilidad conocida, compensaciones y facilidad de actualización.
- Considerar actualización, parche, mitigación, sustitución, pinning o control compensatorio.

## SBOM y procedencia

- Generar SBOM cuando aplique usando SPDX o CycloneDX.
- Validar procedencia, firmas, checksums, repositorios confiables y política de descarga.
- Considerar SLSA, Sigstore, provenance, build reproducible y control de artefactos cuando el contexto lo justifique.
- Proteger tokens de repositorios, registries, paquetes privados y credenciales de CI/CD.

## Pipelines e imágenes

- Revisar lockfiles, dependabot/renovate, SCA, secret scanning, build reproducible, artefactos y permisos del pipeline.
- En imágenes de contenedor, revisar base image, tags, usuario, paquetes, secretos, tamaño, CVEs y actualización.
- Evitar imágenes `latest` en entornos controlados salvo justificación.
- Considerar impacto de actualización: breaking changes, compatibilidad, pruebas y rollback.

## Validación mínima

- Inventario de dependencias.
- Fuente de CVE/advisory verificable.
- Priorización por riesgo real.
- Prueba de build/test posterior.
- Plan de rollback o mitigación.
- Evidencia de SBOM o reporte SCA cuando aplique.

## Ecosistema Python: pip, conda-forge y escaneo de imágenes

- **conda-forge:** canal comunitario verificado por la comunidad; los paquetes pasan revisión de recetas pero no el proceso de seguridad de PyPI; validar que el canal origen sea `conda-forge` y no canales desconocidos o privados sin control.
- **Prioridad de canales:** definir `channel_priority: strict` en `.condarc` para evitar conflictos de versiones entre conda-forge y otros canales; instalar dependencias conda antes que pip para reducir incompatibilidades de bibliotecas nativas.
- **Escaneo de dependencias Python:**
  - `pip-audit`: escanea el entorno activo contra OSV/PyPA Advisory Database — `pip-audit` o `pip-audit -r requirements.txt`.
  - `osv-scanner --lockfile requirements.txt`: detecta vulnerabilidades transitivas; soporta pip, npm, cargo, go.mod.
  - Para entornos conda, exportar con `pip list --format=freeze > reqs-pip.txt` y escanear con pip-audit.
- **Dependencias geoespaciales:** GDAL, PROJ, rasterio, fiona y shapely tienen compilación nativa en C; una versión desactualizada puede tener CVEs en la biblioteca C subyacente (no visible solo desde Python); actualizar la imagen base o el paquete conda-forge resuelve la cadena completa.
- **Escaneo de imágenes de contenedor:**
  - `trivy image mi-pipeline:1.0` — detecta CVEs en paquetes OS (apt, rpm) y librerías Python dentro de la imagen.
  - Para Podman: `podman save mi-pipeline:1.0 -o /tmp/img.tar && trivy image --input /tmp/img.tar`.
  - `grype mi-pipeline:1.0` — alternativa a Trivy; exporta SBOM en SPDX/CycloneDX con `syft`.
