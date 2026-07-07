# Reglas específicas — Gobernanza AppSec, Secure SDLC y modelado de amenazas

## Alcance

Aplicar cuando la tarea involucre gobierno AppSec, Secure SDLC, threat modeling, requisitos de seguridad, revisión de diseño, arquitectura segura, controles preventivos, definición de políticas, madurez AppSec o backlog de remediación.

## Secure SDLC

- Integrar seguridad desde requisitos, diseño, desarrollo, revisión, pruebas, despliegue y operación.
- Traducir riesgos en requisitos verificables de seguridad.
- Definir criterios de aceptación antes de implementar controles.
- Considerar gates razonables en pipeline: SAST, SCA, secretos, IaC, pruebas unitarias de seguridad y revisión manual en cambios críticos.
- Evitar fricción innecesaria: priorizar controles automatizables, medibles y alineados al riesgo.

## Modelado de amenazas

- Partir por alcance, activos, actores, flujos de datos, límites de confianza, exposición y objetivos de negocio.
- Identificar amenazas, abusos posibles, controles existentes, brechas y riesgos residuales.
- Usar STRIDE, attack trees, misuse cases, OWASP ASVS/SAMM u otros marcos solo si aportan valor.
- Distinguir control preventivo, detectivo, correctivo y compensatorio.
- Considerar privacidad, cumplimiento, auditabilidad, resiliencia, logging y operación.

## Gobernanza y madurez

- Definir responsables, evidencias, frecuencia, métricas, excepciones y criterios de cierre.
- Medir madurez por efectividad de controles y adopción, no solo por existencia documental.
- Separar quick wins, deuda estructural, riesgos aceptados y cambios de arquitectura.
- Para reporting ejecutivo, separar riesgo, impacto, tendencia, decisión requerida y costo de no actuar.

## Entregables sugeridos

- Diagrama conceptual de activos y flujos.
- Matriz amenaza/control/riesgo.
- Requisitos de seguridad verificables.
- Backlog priorizado de remediación.
- Criterios de aceptación y pruebas defensivas.

## Validación mínima

- Cobertura de activos críticos.
- Revisión de límites de confianza.
- Evidencia de controles existentes.
- Trazabilidad entre amenaza, riesgo, mitigación y prueba.
