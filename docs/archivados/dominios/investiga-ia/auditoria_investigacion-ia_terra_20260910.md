# Auditoría funcional — investigacion-ia

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Ruta auditada: `skills/investigacion-ia/`

## Alcance y evidencia

Los documentos de continuidad se usaron únicamente para clasificación, inventario y routing previos. La evidencia principal es el contenido actual de los 12 Markdown en `skills/investigacion-ia/`. La ruta auditada no presenta cambios en Git.

Las cifras de palabras son recuentos estáticos orientativos, no estimaciones de tokens ni evidencia de desempeño de modelos. No se observaron duplicaciones literales no triviales en el contenido inspeccionado.

## Resultado ejecutivo

**ESTADO: APROBADO_CON_MEJORAS**

El dominio contiene nueve componentes operativos con responsabilidades metodológicas distinguibles y tres auxiliares coherentes con la carga progresiva. `instrucciones_base_ia_investiga.md` define invariantes y routing; los módulos especializados aportan criterios accionables; el checklist verifica el cierre; y la matriz de propiedad respalda el mantenimiento sin ser contexto cotidiano.

No hay evidencia estática suficiente para fusionar, dividir, mover o migrar a `SKILL.md`. La estructura plana es mantenible para este tamaño y el README ya permite seleccionar un módulo principal. Las mejoras P2 identificadas son preguntas para validación funcional de routing, no acciones de edición suficientemente justificadas.

## Inventario evaluado

| Tipo | Componentes |
|---|---:|
| Operativos | 9 |
| Auxiliares | 3 |
| Placeholders | 0 |
| Directorios con `SKILL.md` | 0 |

Operativos: `instrucciones_base_ia_investiga.md`, `diseno_metodologico_experimentos_ia_reglas.md`, `etica_seguridad_gobernanza_investigacion_reglas.md`, `evaluacion_benchmarks_metricas_reglas.md`, `lectura_critica_papers_reglas.md`, `redaccion_academica_comunicacion_reglas.md`, `reproducibilidad_open_science_reglas.md`, `revision_estado_arte_reglas.md` y `vigilancia_tendencias_agenda_reglas.md`.

Auxiliares: `README.md` como router, `checklist_investigacion_ia.md` como control de cierre y `matriz_propiedad_reglas.md` como contexto de mantenimiento.

## Métricas cualitativas

Escala 1–5; en **Redundancia**, 5 representa baja redundancia perjudicial. Son juicios sobre el contenido actual, no resultados de uso o validación experimental.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Dictamen |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| `instrucciones_base_ia_investiga.md` | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| `diseno_metodologico_experimentos_ia_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | MANTENER |
| `etica_seguridad_gobernanza_investigacion_reglas.md` | 5 | 5 | 4 | 4 | 5 | 4 | 4 | 4 | MANTENER |
| `evaluacion_benchmarks_metricas_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | MANTENER |
| `lectura_critica_papers_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 4 | MANTENER |
| `redaccion_academica_comunicacion_reglas.md` | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| `reproducibilidad_open_science_reglas.md` | 5 | 5 | 5 | 4 | 5 | 4 | 4 | 4 | MANTENER |
| `revision_estado_arte_reglas.md` | 5 | 5 | 5 | 5 | 5 | 4 | 4 | 5 | MANTENER |
| `vigilancia_tendencias_agenda_reglas.md` | 5 | 5 | 5 | 4 | 5 | 4 | 4 | 5 | MANTENER |

## Fronteras y carga selectiva

### Base y módulos especializados

La base contiene el rol, el límite frente a `desarrollo-ia`, el contrato de carga, la no invención de evidencia, la proporcionalidad de conclusiones y la política de fuentes. Son invariantes transversales adecuados. Los módulos no los redefinen de forma literal; los aplican como criterios específicos de método, evaluación, lectura, reproducibilidad o ética. Base + un módulo principal cubre las tareas unitarias descritas en el README; se agregan complementos solo por dependencia concreta.

### Diseño metodológico y evaluación

`diseno_metodologico_experimentos_ia_reglas.md` es primario antes de ejecutar o modificar un estudio: pregunta, hipótesis, datos, particiones, baseline, protocolo, criterios de éxito y amenazas a la validez. `evaluacion_benchmarks_metricas_reglas.md` es primario cuando ya existen resultados, tablas o rankings: comparabilidad, métricas, magnitud, robustez, incertidumbre y validez externa. La frontera está explícita en sus triggers; no procede fusionarlos.

### Diseño, evaluación y reproducibilidad

Diseño define un experimento válido; evaluación define cómo interpretar mediciones y comparaciones; reproducibilidad define el registro, disponibilidad, repetición y auditabilidad de artefactos. Seeds, splits, configuración, leakage, modelos, software, hardware, prompts y artefactos aparecen en sus contextos propios. Reproducibilidad se carga junto a diseño o evaluación solo si una afirmación depende de volver a ejecutar, auditar o transferir el procedimiento.

### Literatura, lectura crítica y tendencias

`revision_estado_arte_reglas.md` trabaja sobre un conjunto de fuentes con estrategia, selección y síntesis; `lectura_critica_papers_reglas.md` evalúa un documento focal; `vigilancia_tendencias_agenda_reglas.md` añade la dimensión temporal, señales emergentes y priorización futura. Son capacidades separadas. El solapamiento en fuentes, evidencia y limitaciones es necesario para conservar rigor en cada unidad de trabajo, no una razón de fusión.

### Lectura crítica y evaluación de benchmarks

Lectura crítica examina si un paper respalda sus claims, incluido su método y evidencia. Evaluación de benchmarks analiza comparabilidad de resultados, métricas, rankings y configuraciones como objeto principal. La primera puede añadir la segunda cuando el encargo compara resultados entre estudios; no hay duplicación perjudicial suficiente para modificar la separación.

### Ética, seguridad y gobernanza

La base exige controles mínimos ante temas sensibles. El módulo especializado activa análisis de actores afectados, privacidad, sesgos, uso dual, seguridad de modelos, gobernanza y límites de uso cuando existan datos sensibles, alto impacto o riesgo plausible. No invade AppSec, SecOps ni cumplimiento jurídico general. Su `No usar cuando` no elimina el deber de cargarlo si las condiciones del caso cambian.

### Redacción académica

`redaccion_academica_comunicacion_reglas.md` no es solo estilo: transforma contenido metodológico y evidencia disponible en argumento, estructura, resultados, discusión, limitaciones y respuesta a revisores. Se activa por el entregable comunicacional y mantiene la separación entre producir evidencia y comunicarla.

### Checklist y matriz de propiedad

El checklist es auxiliar de cierre: verifica alcance, evidencia, integración, límites y salida, sin sustituir reglas de diseño, evaluación o reproducibilidad. La matriz reduce ambigüedad al fijar un propietario normativo por regla; debe cargarse para mantenimiento o auditoría, no para tareas académicas habituales. Ambos cumplen su función y se mantienen separados.

## Cobertura metodológica y veracidad

El contenido cubre explícitamente splits, prevención de leakage, seeds, configuración, versiones, datos, código, modelos, hardware/software, artefactos, registro y trazabilidad cuando aplican. También cubre baseline, métricas, validación, análisis de error, incertidumbre, comparación justa, significancia condicional, ablations, criterios de éxito y validez. No exige estas técnicas en todas las tareas: sus triggers limitan la carga a un caso que las necesita.

Las reglas de revisión, lectura, evaluación, tendencias y base prohíben inventar papers, autores, resultados, rankings o claims de actualidad sin fuentes y contexto. Esto apoya veracidad metodológica, sin demostrar por sí mismo el comportamiento de un modelo en tareas reales.

## Arquitectura física

**MANTENER** la estructura plana. Los nueve módulos están identificados por capacidad, el README contiene un router de carga progresiva y la matriz respalda la propiedad de reglas. Subdirectorios o `SKILL.md` no presentan un beneficio demostrado para routing, carga selectiva, mantenibilidad o portabilidad en el estado actual.

## Hallazgos

| Prioridad | Hallazgo | Evidencia actual | Decisión |
|---|---|---|---|
| P2 | Validar con tareas representativas la precedencia entre lectura crítica y evaluación, y entre diseño, evaluación y reproducibilidad cuando concurren varios objetivos. | El contrato de carga exige declarar principal y secundarios; los módulos definen dependencias, pero la eficacia de esa selección es una hipótesis de uso. | No editar sin trazas de tareas, omisiones o confusión observada. |
| P2 | Validar en casos fronterizos si la activación negativa del módulo ético se interpreta consistentemente cuando una tarea bibliográfica descubre un riesgo plausible. | El módulo define exclusión para tareas sin actores, datos sensibles ni riesgos plausibles y ordena cargarlo si la condición cambia. | No editar sin evidencia de interpretación errónea. |
| P3 | La mezcla actual de LF y CRLF es una cuestión de normalización, no un defecto metodológico ni de arquitectura. | Inspección estática de los Markdown actuales. | Fuera del plan; no normalizar sin autorización específica. |

P0: 0. P1: 0. P2: 2. P3: 1.

## Cierre de auditoría

- Sobrefagmentación: BAJA.
- Redundancia perjudicial: BAJA.
- Ambigüedad significativa: NO.
- Riesgo metodológico: MEDIO; las reglas reducen riesgos, pero su eficacia requiere validación funcional con tareas y evidencia reales.
- REVISIÓN_TERRA_ALTA: NO.
- PLAN_EJECUCION_LUNA: NO REQUERIDO.
- ACCIONES_READY: 0.
- ACCIONES_BLOCKED: 0.

No se generó plan de refactorización: no existe un cambio de contenido suficientemente justificado por la evidencia estática actual. No se avanzó a ejecución.
