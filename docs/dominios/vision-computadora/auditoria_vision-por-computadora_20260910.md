# Auditoría funcional — vision-por-computadora — 20260910

## Alcance y evidencia

Modo: `AUDITORÍA_FUNCIONAL` (FASE 2B).

Se leyeron `docs/precheck_vision-por-computadora_20260910.md`, `docs/estado_vision-por-computadora_20260910.md` y los 17 Markdown actuales de `skills/vision-por-computadora/`. No se modificó ningún archivo del dominio.

Evidencia estática actual:

- 15 módulos operativos, un checklist auxiliar y un README; no hay placeholders, enlaces Markdown internos ni subdirectorios con `SKILL.md`.
- Los módulos delimitan tareas y contienen validaciones de datos, modelos, métricas u operación según corresponda.
- Los 17 Markdown no tienen BOM ni espacios finales y terminan con salto de línea; usan CRLF mientras la política del repositorio declara LF.
- La base tiene 819 palabras; los módulos especializados tienen entre 255 y 327 palabras. Estas cifras describen tamaño estático, no uso de tokens ni calidad de respuestas.

## Resultado de auditoría

| Dimensión | Evaluación | Evidencia e interpretación |
|---|---|---|
| Cobertura funcional | Adecuada | Cubre captura, procesamiento clásico, tareas visuales 2D, video, OCR, retrieval, 3D, industrial, VLM/generativa, métricas y operación. |
| Responsabilidades y límites | Adecuados | Los módulos se organizan por workflow o familia técnica; `metricas_cv` es transversal y `despliegue_operacion_cv` cierra el ciclo de vida. |
| Granularidad | Mínima suficiente | Los módulos corresponden a decisiones, datos, validaciones y entregables distintos. No hay evidencia para fusionar o dividir por longitud o vocabulario. |
| Redundancia | Tolerable | Reproducibilidad, privacidad, validación, leakage y prueba de humo se repiten como invariantes; no se observan contradicciones operativas ni duplicados literales extensos. |
| Routing y carga selectiva | Funcional con mejora P2 | El README indica base y archivos pertinentes, pero no formaliza la selección de un módulo principal, los complementos concretos ni los anti-triggers entre familias solapadas. |
| Sobrecarga de la base | No demostrada | La base concentra invariantes y un mapa de problemas; repite parte del inventario de módulos, pero no sustituye sus reglas especializadas. |
| Checklist | Bien ubicado | `checklist_codigo_cv.md` es auxiliar de cierre para código, notebooks, datasets, entrenamiento, inferencia o despliegue; no corresponde por defecto en consultas conceptuales. |
| Mantenibilidad y portabilidad | Adecuada con observación P3 | La estructura plana es navegable para 17 archivos. El CRLF contradice la política LF, sin impacto funcional demostrado. |

## Solapamientos evaluados

| Relación | Resultado | Regla de carga |
|---|---|---|
| Clasificación / detección / segmentación | Complementarias | Seleccionar por salida requerida: clase, caja o máscara. Cargar otra solo si la solución la necesita. |
| Video/tracking / detección / pose | Dependencia condicional | Tracking puede requerir detección; pose se carga si los puntos o articulaciones son el objetivo. |
| OpenCV / captura / visión industrial | Complementarias | Captura define señal; OpenCV procesa; industrial define aceptación, operación y contexto sectorial. |
| OCR / VLM | Frontera válida | OCR es extracción documental específica; VLM se usa solo cuando la tarea realmente requiere comprensión multimodal o generación. |
| Retrieval / clasificación / embeddings | Frontera válida | Clasificación asigna clases; retrieval recupera similitud y exige indexación, consultas y métricas propias. |
| Visión 3D / robótica | Dependencia condicional | 3D aporta sensor, geometría y metrología; robótica agrega operación, calibración y seguridad del sistema. |
| Despliegue / reglas transversales de IA o software | Complementaria | Despliegue CV conserva la especificidad de pre/postprocesamiento, drift visual y hardware; otros dominios solo se añaden por dependencia concreta. |

## Escala cualitativa 1–5

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Base | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 |
| 14 módulos especializados | 4–5 | 4–5 | 4 | 4–5 | 4 | 4 | 4 | 3 |
| Métricas y despliegue | 5 | 5 | 4 | 5 | 4 | 5 | 5 | 3 |
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

1. Validar con tareas representativas y, solo si la evidencia lo justifica, explicitar en el README el contrato de carga progresiva: base + un módulo principal; secundarios solo ante una dependencia concreta; métricas al evaluar; checklist al cierre.
2. Antes de compactar la base o agregar anti-triggers, medir las combinaciones frecuentes de detección/tracking/pose, captura/OpenCV/industrial, OCR/VLM, retrieval/clasificación y 3D/robótica. La evidencia actual no demuestra redundancia perjudicial ni sobrecarga contextual.

### P3

1. La normalización de CRLF a LF queda como mantenimiento de formato condicionado a autorización; no es una corrección funcional.

## Riesgos y límites

- Fusionar módulos por términos compartidos podría perder criterios de anotación, métricas o validaciones de una familia visual concreta.
- Crear módulos para completar una taxonomía o migrar a `SKILL.md` no aporta beneficio demostrado.
- No se afirma ahorro de tokens ni preservación de calidad: ambos requieren evaluación funcional con tareas representativas, módulos cargados, omisiones, correcciones y uso de contexto observado.

## Routing

`P0 = 0`, `P1 = 0` y no hay ambigüedad significativa. Por tanto:

- `PLAN_EJECUCION_LUNA: NO REQUERIDO`.
- `GATE_TERRA_HIGH: NO REQUERIDO`.
- No se genera `docs/plan_refactor_vision-por-computadora_luna_20260910.md`.
- Según el workflow, la ruta queda en FASE 10 — CIERRE; no se ejecuta automáticamente.
