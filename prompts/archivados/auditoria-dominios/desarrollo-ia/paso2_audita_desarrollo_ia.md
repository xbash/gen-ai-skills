Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
desarrollo-ia

Ruta:
skills/desarrollo-ia/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_desarrollo-ia_20260910.md

y:

docs/precheck_desarrollo-ia_20260910.md

Usa estos archivos únicamente para conocer:

- clasificación del PRECHECK;
- fase actual;
- inventario general;
- arquitectura física existente;
- siguiente acción.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/desarrollo-ia/

No asumas que la arquitectura existente es correcta por contener múltiples
subdirectorios o archivos operativos.

## Estado conocido

El dominio fue clasificado:

FUNCTIONAL

Existen 18 componentes operativos y 3 auxiliares:

- README.md
- base/reglas_transversales_ia.md
- validacion/checklist_codigo_ia.md

No existen placeholders vacíos.

No existen directorios con SKILL.md.

La estructura actual utiliza las capas:

- base/
- ciclo_de_vida/
- modelamiento/
- seguridad/
- sistemas_generativos/
- validacion/

Estas capas son arquitectura existente, no arquitectura aprobada.

## Objetivo principal

Audita si el dominio maximiza:

calidad operativa / costo de contexto

Evalúa especialmente:

- utilidad real;
- aplicabilidad;
- granularidad;
- redundancia;
- solapamiento semántico;
- claridad de triggers;
- densidad informativa;
- costo de contexto;
- reutilización;
- mantenibilidad;
- portabilidad;
- cobertura;
- carga selectiva;
- fronteras entre responsabilidades;
- coherencia entre capas.

No optimices por cantidad de archivos.

No reduzcas contenido especializado si la reducción degrada capacidad,
seguridad, evaluación, reproducibilidad o aplicabilidad.

## Evaluación arquitectónica

Determina primero si las seis capas actuales:

base
ciclo_de_vida
modelamiento
seguridad
sistemas_generativos
validacion

representan responsabilidades suficientemente claras.

Evalúa si alguna:

- mezcla capacidades distintas;
- duplica otra capa;
- debería dividirse;
- debería fusionarse;
- debería permanecer como está.

NO cambies la estructura solamente para uniformarla con otros dominios.

NO migres automáticamente a SKILL.md.

## Frontera 1 — base y reglas transversales

Evalúa:

base/instrucciones_base_ia.md
↔
base/reglas_transversales_ia.md

Determina:

- qué debe cargarse siempre;
- qué controles son realmente transversales;
- si existe duplicación;
- si la carga conjunta es necesaria;
- si reglas transversales deberían seguir separadas;
- si alguna regla especializada está indebidamente en la base.

Evalúa si la ruta habitual puede ser:

README
+ instrucciones_base_ia
+ reglas_transversales solo cuando correspondan

o si la arquitectura actual justifica otro patrón.

## Frontera 2 — datos, experimentos, testing y reproducibilidad

Evalúa conjuntamente:

ciclo_de_vida/datos_experimentos_reglas.md
ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md
base/reglas_transversales_ia.md

Comprueba posibles duplicaciones en:

- partición de datos;
- leakage;
- baseline;
- métricas;
- evaluación;
- semillas;
- reproducibilidad;
- trazabilidad;
- validación experimental.

Distingue cuidadosamente:

diseño experimental
vs
testing del sistema
vs
control transversal.

No centralices reglas si hacerlo obliga a cargar dependencias innecesarias.

## Frontera 3 — MLOps, despliegue e inferencia

Evalúa:

ciclo_de_vida/mlops_despliegue_ia.md
↔
ciclo_de_vida/optimizacion_inferencia_model_serving_reglas.md

Determina si existe una frontera clara entre:

- empaquetado/despliegue/operación;
- serving;
- latencia;
- throughput;
- optimización;
- cuantización;
- uso de recursos;
- observabilidad.

No fusiones solamente porque ambos traten producción.

## Frontera 4 — ML supervisado y deep learning

Evalúa:

modelamiento/ml_supervisado_reglas.md
↔
modelamiento/deep_learning_reglas.md

Comprueba especialmente:

- selección de modelos;
- baseline;
- evaluación;
- overfitting;
- particiones;
- tuning;
- recursos;
- criterios para justificar deep learning.

Determina cuál debe ser primaria cuando:

A. se evalúan modelos supervisados generales;
B. una red neuronal ya está justificada.

Evita duplicación innecesaria, pero conserva autonomía operativa.

## Frontera 5 — no supervisado, anomalías y clustering

Evalúa:

modelamiento/no_supervisado_anomalias_clustering_reglas.md

Determina si agrupar:

- clustering;
- detección de anomalías;
- representación no supervisada;

es una combinación funcionalmente válida o una agrupación excesiva.

No dividas salvo evidencia concreta de responsabilidades incompatibles.

## Frontera 6 — series temporales

Evalúa:

modelamiento/series_temporales_forecasting_reglas.md

contra:

- ml_supervisado_reglas.md;
- datos_experimentos_reglas.md;
- testing_evaluacion_sistemas_ia_reglas.md.

Busca especialmente:

- partición temporal;
- validación temporal;
- leakage futuro;
- forecasting;
- métricas;
- covariables;
- backtesting.

No absorbas series temporales en ML general si pierde criterios propios.

## Frontera 7 — sistemas generativos

Evalúa conjuntamente:

sistemas_generativos/llm_rag_agentes_reglas.md
sistemas_generativos/nlp_embeddings_genai_reglas.md
sistemas_generativos/vision_audio_multimodal_reglas.md

Determina:

- qué responsabilidad es realmente GenAI;
- qué pertenece a modalidad;
- qué pertenece a embeddings/NLP;
- qué pertenece a RAG/agentes;
- qué controles están duplicados;
- si las fronteras actuales permiten carga selectiva.

Presta especial atención a posibles solapamientos entre:

LLM
RAG
agentes
embeddings
NLP
visión
audio
multimodalidad

No fusiones estas unidades solamente porque todas puedan usar modelos fundacionales.

## Frontera 8 — seguridad y gobernanza

Evalúa:

seguridad/gobernanza_uso_responsable_ia_reglas.md
↔
seguridad/seguridad_modelos_ia_reglas.md

Determina si las fronteras distinguen adecuadamente:

- gobernanza;
- ética;
- riesgo;
- uso responsable;
- seguridad técnica del modelo;
- amenazas;
- abuso;
- robustez;
- privacidad.

No fusionar gobernanza con seguridad técnica salvo evidencia fuerte.

## Frontera 9 — módulos de modelamiento especializados

Evalúa individualmente:

modelamiento/graph_ml_grafos_kg_reglas.md
modelamiento/optimizacion_evolutivos_busqueda_reglas.md
modelamiento/recomendadores_ranking_personalizacion_reglas.md
modelamiento/rl_control_decisiones_secuenciales_reglas.md

Determina si cada módulo:

- representa una capacidad reutilizable real;
- tiene triggers propios;
- aporta criterios que no deberían quedar implícitos;
- justifica su costo de contexto;
- debería mantenerse especializado.

No elimines una skill por baja frecuencia de uso si su carga es bajo demanda.

## Validación/checklist

Evalúa:

validacion/checklist_codigo_ia.md

Determina si:

- sigue siendo un auxiliar de cierre;
- duplica reglas operativas;
- debería cargarse siempre o solo bajo demanda;
- mantiene utilidad separada del testing.

No confundas checklist de cierre con workflow de evaluación.

## Carga selectiva

Determina cuál debería ser el patrón normal.

Evalúa como hipótesis:

README
+
base/instrucciones_base_ia.md
+
un módulo principal
+
dependencias concretas

y solo cuando corresponda:

+ reglas_transversales
+ seguridad/gobernanza
+ checklist

No asumas que todas las capas deben cargarse siempre.

Identifica explícitamente situaciones donde más de un módulo sea necesario.

## Evaluación de sobrefragmentación

El dominio posee 18 componentes operativos.

Determina si esa cantidad representa:

- especialización útil;
- fragmentación excesiva;
- o una combinación de ambas.

No uses el número de archivos como evidencia suficiente.

Busca componentes cuya diferencia sea nominal y no operativa.

## Evaluación de densidad

Busca:

- definiciones generales de IA que el modelo ya conoce;
- tutoriales;
- explicaciones introductorias;
- listas extensas de algoritmos sin efecto sobre decisiones;
- defaults no justificados;
- contenido repetido entre módulos;
- instrucciones que realmente cambian decisiones.

Mantén conocimiento especializado y criterios operativos.

## Métricas

Aplica la escala 1–5 definida en:

prompts/audita_skills_dominios_v2_arq.md

para:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

No uses una media matemática como sustituto del juicio arquitectónico.

## Comparación de arquitectura

Incluye:

ARQUITECTURA ACTUAL
vs
ARQUITECTURA RECOMENDADA

y responde expresamente:

- ¿mantener seis capas?
- ¿reorganizar capas?
- ¿fusionar componentes?
- ¿dividir componentes?
- ¿mantener estructura física?
- ¿migrar a SKILL.md?

Toda recomendación estructural debe tener evidencia.

## Hallazgos

Clasifica:

P0
P1
P2
P3

conforme al auditor genérico.

## Terra High

Trabaja con razonamiento MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si:

- eliminar conocimiento especializado;
- fusionar tres o más responsabilidades distintas;
- afectar seguridad, gobernanza o reproducibilidad;
- evidencia contradictoria;
- impacto alto + baja confianza.

No reanalices todo el dominio con High.

## Plan Luna

Si existen cambios justificados genera:

docs/plan_refactor_desarrollo-ia_luna_20260910.md

Cada acción debe cumplir el contrato determinista del auditor.

Clasifica:

LUNA_LOW
LUNA_MEDIUM
TERRA_REQUIRED

No delegues decisiones arquitectónicas abiertas a Luna.

Si:

P0 = 0
P1 = 0
ambigüedad significativa = NO

y no existe cambio realmente justificado:

PLAN_EJECUCION_LUNA: NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_desarrollo-ia_terra_20260910.md

Si corresponde:

docs/plan_refactor_desarrollo-ia_luna_20260910.md

Actualiza:

docs/estado_desarrollo-ia_20260910.md

## Restricciones

NO modifiques:

skills/desarrollo-ia/

No crees archivos.
No elimines archivos.
No muevas archivos.
No renombres archivos.

Esta fase es exclusivamente:

ANALIZAR
COMPARAR
DECIDIR
PLANIFICAR

## Respuesta en chat

Responde únicamente:

DOMINIO: desarrollo-ia

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

COMPONENTES_OPERATIVOS_AUDITADOS:

ARQUITECTURA:
MANTENER | REORGANIZAR | REFACTORIZAR

P0:
P1:
P2:
P3:

SOBREFRAGMENTACION:
BAJA | MEDIA | ALTA

REDUNDANCIA:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

REVISION_TERRA_ALTA:

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_desarrollo-ia_terra_20260910.md

PLAN:
docs/plan_refactor_desarrollo-ia_luna_20260910.md
o NO_REQUERIDO