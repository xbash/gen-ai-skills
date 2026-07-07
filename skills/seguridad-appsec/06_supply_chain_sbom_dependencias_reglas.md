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
