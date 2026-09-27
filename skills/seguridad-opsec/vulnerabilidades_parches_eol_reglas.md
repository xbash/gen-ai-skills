# Reglas específicas — Gestión de vulnerabilidades, parches y EOL/EOS

## Alcance

Aplicar cuando la tarea involucre CVEs, escáneres, priorización, parches, obsolescencia, EOL/EOS, exposición, excepciones, SLAs, remediación, mitigación o deuda tecnológica.

## Priorización por riesgo

- No inventar CVEs, severidad, explotación activa ni versiones afectadas.
- Verificar fuente, activo, versión, exposición, criticidad, exploitability y control compensatorio.
- Priorizar por riesgo real: criticidad del activo, exposición, explotación conocida, facilidad de explotación, impacto, compensaciones, disponibilidad de parche y contexto de negocio.
- No asumir que CVSS alto siempre implica prioridad máxima sin contexto.
- Diferenciar vulnerabilidad, misconfiguración, obsolescencia, falta de parche, exposición y deuda tecnológica.

## Remediación y mitigación

- Considerar pruebas, compatibilidad, ventana de cambio, backup, rollback y monitoreo posterior.
- Si no hay parche viable, proponer mitigaciones: segmentación, deshabilitar función, hardening, WAF/IPS, configuración, monitoreo o control compensatorio.
- Documentar excepción con dueño, vencimiento, justificación, control compensatorio y riesgo residual.
- Para EOL/EOS, definir plan de migración, aislamiento, soporte extendido, monitoreo y fecha objetivo.

## Operación

- Validar inventario, ownership, criticidad, internet exposure, dependencias y ambiente.
- Distinguir hallazgos de scanner de riesgo confirmado.
- Evitar remediaciones masivas sin pruebas, priorización y plan de reversa.
- Medir SLA de parcheo, aging de vulnerabilidades, activos sin dueño, cobertura de escaneo y reincidencia.

## Validación mínima

- Inventario afectado.
- Fuente verificable.
- Plan de parche o mitigación.
- Evidencia post-remediación.
- SLA y responsable.
- Riesgo residual documentado.

## Herramientas de escaneo para Python y contenedores

### Dependencias Python

- **pip-audit:** `pip-audit` (entorno activo) o `pip-audit -r requirements.txt` (sin instalar). Fuente: OSV/PyPA Advisory Database. Integrar como gate en CI.
- **OSV Scanner (Google):** `osv-scanner --lockfile requirements.txt` o `osv-scanner -r .`; detecta vulnerabilidades transitivas; soporta pip, npm, cargo, go.mod.
- **Safety:** `safety check`; base de datos comercial con tier gratuito limitado; complementar con pip-audit para cobertura completa.

### Imágenes de contenedor

- **Trivy (Aqua):** `trivy image mi-imagen:tag` — escanea paquetes OS (apt, rpm) y librerías Python/npm dentro de la imagen. Para Podman: `podman save mi-imagen:tag -o /tmp/img.tar && trivy image --input /tmp/img.tar`.
- **Grype (Anchore):** `grype mi-imagen:tag` — similar a Trivy; integra con Syft para generación de SBOM.
- **Syft:** genera SBOM de imagen en SPDX o CycloneDX: `syft mi-imagen:tag -o spdx-json > sbom.json`.

### Flujo mínimo de escaneo

```bash
# Dependencias Python
pip-audit -r requirements.txt

# Imagen de contenedor (compatible con Podman)
podman save mi-pipeline:1.0 -o /tmp/mi-pipeline.tar
trivy image --input /tmp/mi-pipeline.tar

# Generar SBOM
syft mi-pipeline:1.0 -o spdx-json > sbom.json
```
