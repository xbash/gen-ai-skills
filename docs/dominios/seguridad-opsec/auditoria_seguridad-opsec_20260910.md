# Auditoría funcional — seguridad-opsec — 20260910

## Alcance y evidencia

Modo: `AUDITORÍA_FUNCIONAL` (FASE 2B).

Se leyeron el precheck, el estado y los 13 Markdown actuales de `skills/seguridad-opsec/`. Para evaluar fronteras se contrastaron los README y bases actuales de `seguridad-appsec` y `operaciones-tecnologia`. No se modificó ningún archivo de esos dominios.

Evidencia estática actual:

- 11 módulos operativos, un checklist auxiliar y un README; no hay placeholders, enlaces Markdown internos ni subdirectorios con `SKILL.md`.
- Cada módulo especializado declara alcance y validación mínima.
- Los 13 Markdown no tienen BOM ni espacios finales y terminan con salto de línea. Usan CRLF mientras la política del repositorio declara LF.
- La base tiene 717 palabras; los módulos especializados tienen entre 225 y 306 palabras. Estas cifras describen tamaño estático, no uso de tokens ni calidad de respuesta.

## Resultado de auditoría

| Dimensión | Evaluación | Evidencia e interpretación |
|---|---|---|
| Cobertura funcional | Adecuada | Cubre GRC, amenazas/inteligencia, hardening, IAM, SOC, DFIR/continuidad, cloud, vulnerabilidades, AppSec defensivo y terceros/métricas. |
| Responsabilidades y límites internos | Adecuados | GRC gobierna riesgo; modelado convierte amenazas en controles; SOC opera detección; DFIR responde y recupera; hardening, IAM, cloud y vulnerabilidades aplican controles por superficie. |
| Granularidad | Mínima suficiente | Los módulos corresponden a workflows diferenciables. No se halló evidencia para fusionar o dividir por longitud o vocabulario. |
| Redundancia | Tolerable | Autorización, evidencia, validación, secreto y reducción de riesgo se repiten como guardrails. No hay duplicados literales extensos ni contradicciones operativas observadas. |
| Routing y carga selectiva | Funcional con mejora P2 | El README dice cargar base y archivos pertinentes, pero no fija el contrato explícito de una unidad primaria con complementos solo por dependencia concreta. |
| Sobrecarga de la base | No demostrada | La base concentra invariantes, límites y formatos; enumera cobertura sin sustituir reglas operativas especializadas. |
| Checklist | Bien ubicado | `checklist_secops.md` es auxiliar de cierre para análisis, scripts, playbooks, planes, reportes y recomendaciones; no corresponde en consultas simples por defecto. |
| Mantenibilidad y portabilidad | Adecuada con observación P3 | La estructura plana es navegable para 13 archivos. El CRLF contradice la política LF, sin impacto funcional demostrado. |

## Fronteras interdominio

| Objeto primario de la tarea | Dominio primario | Complemento solo si existe dependencia concreta |
|---|---|---|
| Aplicación, producto, API, sesión, autorización de aplicación o workload aplicativa | `seguridad-appsec` | `seguridad-opsec` para SOC, respuesta, GRC o controles corporativos. |
| Infraestructura corporativa, plataforma cloud, endpoint, servidor, red, IAM empresarial, SOC, DFIR, GRC o vulnerabilidades de activos | `seguridad-opsec` | `operaciones-tecnologia` si la tarea exige ejecutar o diagnosticar un cambio o runbook de plataforma. |
| Operación, automatización, despliegue, diagnóstico, cambio, observabilidad o continuidad de plataforma | `operaciones-tecnologia` | `seguridad-opsec` si la decisión primaria es control, riesgo, detección o respuesta de seguridad. |

El módulo `appsec_api_seguridad_aplicativa_reglas.md` se solapa temáticamente con `seguridad-appsec`, pero conserva una función de contexto defensivo para tareas SecOps. No hay evidencia actual de uso conjunto redundante, referencias rotas ni pérdida que justifique reubicarlo, deprecarlo o eliminarlo.

Cloud/Kubernetes, hardening, vulnerabilidades, incidentes y continuidad aparecen en los tres dominios con énfasis distinto: control de seguridad, seguridad de producto u operación. El límite debe seleccionar el objeto primario, no el vocabulario compartido.

## Escala cualitativa 1–5

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Base | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 |
| 10 módulos especializados | 4–5 | 4–5 | 4 | 4–5 | 4 | 4 | 4 | 3 |
| Checklist | 4 | 4 | 5 | 4 | 4 | 5 | 5 | 3 |
| README | 4 | 3 | 4 | 4 | 4 | 5 | 5 | 2 |

En la última columna, 1 significa baja repetición perjudicial y 5 alta repetición perjudicial.

## Decisiones explícitas

| Campo | Decisión |
|---|---|
| ESTADO_AUDITORIA | `APROBADO_CON_MEJORAS` |
| COBERTURA | Adecuada para el alcance declarado; no se justifican nuevas skills. |
| SOBRECARGA_BASE | No demostrada; mantener la base. |
| REDUNDANCIA | Transversal y principalmente necesaria; sin fusión requerida. |
| SKILLS_FALTANTES | Ninguna demostrada. |
| FUSIONES_REQUERIDAS | Ninguna. |
| SEPARACIONES_REQUERIDAS | Ninguna. |
| ARQUITECTURA | Mantener estructura plana: README + base + un módulo principal + secundarios por dependencia concreta + checklist al cierre. |
| SUBDIRECTORIOS | No requeridos. |
| SKILL_MD | No requerido. |

## Hallazgos priorizados

### P0

Ninguno.

### P1

Ninguno.

### P2

1. Validar con tareas representativas y, solo si la evidencia lo justifica, explicitar en el README un contrato de carga progresiva y una frontera de selección por objeto primario con `seguridad-appsec` y `operaciones-tecnologia`.
2. Antes de reubicar, deprecar o compactar `appsec_api_seguridad_aplicativa_reglas.md`, medir si aporta contexto propio a tareas SecOps o si duplica el dominio AppSec. No hay trazabilidad suficiente para alterar contenido especializado.

### P3

1. La normalización de CRLF a LF queda como mantenimiento de formato condicionado a autorización; no es una corrección funcional.

## Riesgos y límites

- Fusionar AppSec, cloud, hardening, vulnerabilidades o continuidad por vocabulario compartido podría perder activadores y contexto de control; no procede sin evidencia de uso conjunto redundante.
- Crear nuevas skills o una arquitectura compound para completar una taxonomía aumentaría mantenimiento sin una brecha demostrada.
- No se afirma ahorro de tokens ni preservación de calidad. Requiere pruebas con tareas representativas, módulos cargados, omisiones, correcciones y uso de contexto observado.

## Routing

`P0 = 0`, `P1 = 0` y no hay ambigüedad significativa. Por tanto:

- `PLAN_EJECUCION_LUNA: NO REQUERIDO`.
- `GATE_TERRA_HIGH: NO REQUERIDO`.
- No se genera `docs/plan_refactor_seguridad-opsec_luna_20260910.md`.
- Según el workflow, la ruta queda en FASE 10 — CIERRE; no se ejecuta automáticamente.
