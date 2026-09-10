# Auditoría de dominio — desarrollo-ia

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Evidencia principal: contenido real y actual de `skills/desarrollo-ia/`.

## 1. Resumen ejecutivo

- Componentes operativos auditados: 18.
- Auxiliares auditados: 3.
- Estado: APROBADO_CON_MEJORAS.
- P0: 0; P1: 0; P2: 2; P3: 0.
- Sobrefagmentación: baja.
- Redundancia perjudicial: baja.
- Plan de ejecución Luna: no requerido.

Las seis capas actuales representan responsabilidades claras: base, ciclo de vida, modelamiento, seguridad, sistemas generativos y validación. Los módulos incluyen triggers y anti-triggers que permiten seleccionar capacidades bajo demanda. Los solapamientos observados se concentran en controles de datos, evaluación, reproducibilidad y seguridad, pero están delimitados por propósito: control común, experimento, testing del sistema, operación o especialización de modalidad/modelo.

No existe evidencia de que migrar a `SKILL.md`, fusionar módulos o reorganizar físicamente las capas mejore calidad por costo de contexto. No hay medición de tokens ni evaluación de tareas representativas; por tanto, no se cuantifican ahorros ni se justifica una reducción adicional.

## 2. Arquitectura actual y recomendada

```text
Actual
README
 ├─ base/
 ├─ ciclo_de_vida/
 ├─ modelamiento/
 ├─ seguridad/
 ├─ sistemas_generativos/
 └─ validacion/

Recomendada
Mantener las mismas seis capas y la estructura física actual.
```

| Pregunta | Decisión | Evidencia |
|---|---|---|
| ¿Mantener seis capas? | Sí. | Cada capa agrupa un momento o riesgo distinto del desarrollo de IA. |
| ¿Reorganizar capas? | No. | No hay archivo con frontera nominal o ubicación contradictoria. |
| ¿Fusionar componentes? | No. | Los solapamientos tienen objetivos, triggers y anti-triggers distintos. |
| ¿Dividir componentes? | No. | Los grupos internos son funcionalmente coherentes y el contenido es compacto. |
| ¿Mantener estructura física? | Sí. | Subdirectorios describen capas sin impedir la carga selectiva. |
| ¿Migrar a `SKILL.md`? | No. | No se demostró mejora de compatibilidad, routing o mantenibilidad. |

## 3. Inventario funcional

| Componente | Propósito | USAR CUANDO | NO USAR CUANDO | Costo | Estado |
|---|---|---|---|---|---|
| Base | Rol, rigor, límites y formato de desarrollo aplicado. | Siempre como entrada del dominio. | La tarea sea investigación de IA, no desarrollo aplicado. | Medio | MANTENER |
| Reglas transversales | Controles comunes de objetivo, datos, evaluación, reproducibilidad y seguridad. | Se requieran controles comunes además de la base. | Como sustituto de una regla especializada. | Bajo | MANTENER |
| Datos/experimentos | Datos, features, comparabilidad y reporte reproducible. | Se preparen datos, features, experimentos o resultados. | Consulta aislada de serving o seguridad. | Bajo | MANTENER |
| MLOps/despliegue | Empaquetado, integración, despliegue, observabilidad y operación. | El sistema se prepare para operación. | Se optimice solo rendimiento de inferencia. | Bajo | MANTENER |
| Optimización de serving | Latencia, costo, memoria y equivalencia de inferencia. | La meta principal sea rendimiento de serving. | Como sustituto del ciclo MLOps completo. | Bajo | MANTENER |
| Testing/evaluación | Pruebas, regresión, golden datasets y aceptación. | Se definan o ejecuten pruebas de sistema/modelo/prompt. | Como sustituto del contenido técnico evaluado. | Bajo | MANTENER |
| ML supervisado | Clasificación, regresión, ranking y scoring generales. | Se entrenen/evalúen modelos supervisados generales. | Deep learning especializado, forecasting central o recomendación. | Bajo | MANTENER |
| Deep learning | Redes neuronales, cómputo, entrenamiento y checkpoints. | Una red neuronal sea la técnica seleccionada. | Comparación tabular simple sin necesidad de DL. | Bajo | MANTENER |
| No supervisado | Clustering, anomalías y estructura latente sin etiqueta fiable. | Se explore estructura o anomalías. | Se afirmen categorías o fallas sin validación. | Bajo | MANTENER |
| Series temporales | Forecasting, disponibilidad temporal y backtesting. | El tiempo/horizonte determine diseño y evaluación. | El orden temporal no afecte la tarea. | Bajo | MANTENER |
| Recomendadores/ranking | Recuperación, ranking y personalización. | Se ordenen o personalicen ítems. | Clasificación sin ranking o recomendación. | Bajo | MANTENER |
| Graph ML | Entidades, relaciones, grafos y knowledge graphs. | El grafo sea estructura central del problema. | El grafo sea solo representación auxiliar. | Bajo | MANTENER |
| Evolutivos/búsqueda | Optimización poblacional y heurística. | Se usen algoritmos evolutivos o búsqueda heurística. | RL, control secuencial u optimización de serving. | Bajo | MANTENER |
| RL/control | Decisiones secuenciales, entorno y recompensa. | Haya estados, acciones y recompensas. | Búsqueda evolutiva o serving. | Bajo | MANTENER |
| LLM/RAG/agentes | Arquitectura, herramientas y autonomía de sistemas generativos. | Se diseñe LLM, RAG, agente o tool use. | NLP/embeddings sin orquestación de sistema. | Bajo | MANTENER |
| NLP/embeddings/GenAI | Texto, representación semántica y generación/fine-tuning lingüístico. | La tarea se centre en texto o embeddings. | Se diseñe autonomía o herramientas. | Bajo | MANTENER |
| Visión/audio/multimodal | Modalidades no textuales, VLM y riesgos de datos multimodales. | La modalidad cambie validación, métrica o riesgo. | Tarea puramente textual o tabular. | Bajo | MANTENER |
| Seguridad de IA | Amenazas, controles técnicos y operación segura. | Se identifiquen, prueben o mitiguen amenazas de IA. | Auditoría general sin componente IA relevante. | Bajo | MANTENER |
| Gobernanza responsable | Impacto, supervisión humana, equidad y límites de uso. | Haya impacto en personas/derechos o uso sensible. | Sustituto de asesoría legal o auditoría de seguridad. | Bajo | MANTENER |
| Checklist | Verificación final de código, datos, modelo y operación. | Cierre o revisión. | Contexto obligatorio de una consulta breve. | Bajo, bajo demanda | MANTENER |
| README | Router y selección inicial. | Inicio del dominio. | No aplica. | Medio | MANTENER |

## 4. Evaluación detallada

Las puntuaciones 1–5 son juicio cualitativo del contenido actual, no mediciones de calidad de modelos o tokens.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 4 | MANTENER |
| Transversal | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Datos/experimentos | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| MLOps/despliegue | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Optimización serving | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Testing/evaluación | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| ML supervisado | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Deep learning | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| No supervisado | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Series temporales | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Recomendadores | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Graph ML | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Evolutivos/búsqueda | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| RL/control | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| LLM/RAG/agentes | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| NLP/embeddings/GenAI | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Visión/audio/multimodal | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Seguridad técnica | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Gobernanza | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Checklist | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| README | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 5 | MANTENER |

## 5. Fronteras y relaciones críticas

| Frontera | Evidencia | Decisión |
|---|---|---|
| Base ↔ transversal | Base define rol, límites, estilo y formato; transversal concentra controles verificables. | Mantener separados. La carga conjunta es justificada cuando se requieran controles comunes. |
| Datos/experimentos ↔ testing | El primero diseña datos, comparabilidad y reproducibilidad; el segundo define pruebas, regresión y aceptación. | Mantener separados y complementarios. |
| MLOps ↔ serving | MLOps cubre contrato, despliegue, rollback y operación; serving optimiza latencia, memoria, costo y equivalencia. | Mantener separados. |
| ML supervisado ↔ deep learning | ML general es primario para familias supervisadas; DL es primario cuando la red neuronal ya fue seleccionada. | Mantener ambos; cargar DL solo por necesidad concreta. |
| No supervisado | Clustering, anomalías y representación comparten ausencia de etiqueta fiable y validación exploratoria. | Mantener agrupación. |
| Series ↔ ML/datos/testing | Series añade disponibilidad futura, splits temporales, backtesting y métricas temporales. | Mantener especializado. |
| LLM/RAG/agentes ↔ NLP/embeddings ↔ multimodal | Sistema/orquestación, texto/representación y modalidad no textual tienen triggers y controles distintos. | Mantener tres módulos selectivos. |
| Seguridad ↔ gobernanza | Seguridad cubre amenazas y controles técnicos; gobernanza cubre impacto, derechos y supervisión. | Mantener separados. |
| Graph/recomendadores/evolutivos/RL | Cada uno define formulación, métricas y riesgos operativos propios. | Mantener bajo demanda. |
| Checklist ↔ testing | Checklist verifica cierre; testing define protocolo de pruebas y aceptación. | Mantener separados. |

## 6. Carga selectiva y costo de contexto

Patrón recomendado, sustentado por los triggers actuales:

```text
README + instrucciones_base_ia + un módulo principal
  + reglas_transversales_ia cuando se requieran sus controles comunes
  + módulos complementarios solo cuando la tarea cruce responsabilidades
  + seguridad/gobernanza según riesgo
  + checklist al cierre o revisión
```

Situaciones válidas para más de un módulo: RAG con evaluación o seguridad (LLM/RAG + testing y/o seguridad); modelo a producción (módulo de modelamiento + MLOps); serving optimizado (MLOps + optimización de inferencia); experimento de ML (módulo de modelamiento + datos/experimentos); sistema sensible (módulo principal + gobernanza, y seguridad si hay amenazas técnicas).

No se inventan cifras de tokens. Cualitativamente, los módulos especializados son compactos y bajo demanda; la arquitectura evita cargar toda la cobertura en la base.

## 7. Hallazgos

| Prioridad | Cantidad | Hallazgo |
|---|---:|---|
| P0 | 0 | No se detectó pérdida funcional, referencia rota ni contradicción metodológica crítica. |
| P1 | 0 | No hay fusión, división, reubicación o eliminación justificada. |
| P2 | 2 | Alinear explícitamente en uso futuro el carácter condicional de reglas transversales entre base/README; validar el patrón de carga con tareas representativas antes de cualquier compactación. |
| P3 | 0 | Ninguno. |

Las oportunidades P2 no justifican un cambio sin evidencia adicional: la carga actual de controles comunes puede ser necesaria para tareas complejas y no se midió su efecto.

## 8. Decisiones de escalamiento

| ID | Decisión | Motivo | Impacto | Confianza | ¿REVISIÓN_TERRA_ALTA? |
|---|---|---|---|---|---|
| Ninguna | No existe decisión arquitectónica abierta. | Los módulos especializados mantienen fronteras claras. | — | Alta | No |

# PLAN_EJECUCION_LUNA

**NO REQUERIDO.** No existen P0, P1 ni ambigüedad significativa. Las oportunidades P2 requieren evidencia de uso o evaluación antes de introducir cambios.

```text
HANDOFF_TO_LUNA

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
skills/desarrollo-ia/

Arquitectura aprobada:
Seis capas actuales; base y controles transversales; módulo principal por trigger; complementos concretos; seguridad/gobernanza según riesgo; checklist de cierre.

Plan:
PLAN_EJECUCION_LUNA: NO REQUERIDO

Acciones READY:
0

Acciones BLOQUEADAS:
0

Regla:
No ejecutar refactorización. Mantener el dominio como candidato a STABLE; abordar P2 solo con evidencia nueva.
```
