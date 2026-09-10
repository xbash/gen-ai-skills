
# Auditoría de `skills/desarrollo-ia`

Auditoría realizada sobre 20 skills y 1 README, con lectura completa de los 21 archivos Markdown del dominio. No se modificaron archivos.

## 1. Resumen ejecutivo

Estado general: bueno y funcional como biblioteca modular, con separación arquitectónica razonable entre base, especialidades, ciclo de vida, seguridad y validación.

Principales fortalezas:

- Existe una instrucción base y una regla transversal.
- Cada módulo tiene alcance y sección `Usar cuando`.
- Se distinguen experimentación, testing, MLOps, serving y seguridad.
- Se incluyen límites metodológicos: leakage, baseline, trazabilidad, reproducibilidad y no invención.
- La estructura favorece carga selectiva.

Principales problemas:

- Repetición entre base, reglas transversales y checklist.
- Solapamiento parcial entre `ml_supervisado`, `deep_learning`, `NLP`, `LLM`, `datos_experimentos` y `testing`.
- Algunas skills son amplias y reúnen demasiadas responsabilidades.
- Faltan reglas explícitas de prioridad cuando varias skills aplican simultáneamente.
- Hay terminología inconsistente: `validación`, `evaluación`, `seguridad`, `gobernanza`, `fine-tuning`, `serving`.

Oportunidad estimada: media-alta, principalmente por consolidación de reglas comunes y mejora del routing. No recomiendo una reestructuración radical.

## 2. Inventario funcional

| Skill | Propósito real | Usar cuando | Estado |
|---|---|---|---|
| `base/instrucciones_base_ia.md` | Define rol, alcance, estilo, rigor y formato | Toda tarea aplicada de IA | Base adecuada, algo extensa |
| `base/reglas_transversales_ia.md` | Define controles comunes de datos, evaluación, reproducibilidad y seguridad | Tareas técnicas u operativas complejas | Muy valiosa |
| `modelamiento/ml_supervisado_reglas.md` | Regula clasificación, regresión, ranking y scoring | Existe variable objetivo supervisada | Adecuada |
| `modelamiento/deep_learning_reglas.md` | Regula redes neuronales y entrenamiento profundo | CNN, RNN, Transformers, GPU o fine-tuning | Adecuada |
| `modelamiento/no_supervisado_anomalias_clustering_reglas.md` | Regula clustering, reducción dimensional y anomalías | No existe etiqueta objetivo confiable | Adecuada |
| `modelamiento/series_temporales_forecasting_reglas.md` | Regula forecasting y evaluación temporal | El tiempo afecta datos o evaluación | Adecuada |
| `modelamiento/recomendadores_ranking_personalizacion_reglas.md` | Regula recomendación, ranking y personalización | La salida ordena o personaliza ítems | Adecuada |
| `modelamiento/graph_ml_grafos_kg_reglas.md` | Regula grafos, GNN y knowledge graphs | Entidades y relaciones son centrales | Adecuada |
| `modelamiento/rl_control_decisiones_secuenciales_reglas.md` | Regula RL, control y decisiones secuenciales | Hay estados, acciones y recompensas | Adecuada |
| `modelamiento/optimizacion_evolutivos_busqueda_reglas.md` | Regula algoritmos evolutivos y búsqueda heurística | Se optimizan candidatos mediante fitness | Adecuada y compacta |
| `sistemas_generativos/llm_rag_agentes_reglas.md` | Regula LLM, RAG, agentes y herramientas | Se diseña una arquitectura generativa | Útil, pero amplia |
| `sistemas_generativos/nlp_embeddings_genai_reglas.md` | Regula NLP, embeddings, generación y fine-tuning | El problema está centrado en texto | Útil, con solapamiento parcial |
| `sistemas_generativos/vision_audio_multimodal_reglas.md` | Regula imagen, audio, video, OCR y VLM | La modalidad cambia el procedimiento | Adecuada, extensa |
| `ciclo_de_vida/datos_experimentos_reglas.md` | Regula datos, features, experimentos y reproducibilidad | Se preparan datos o comparan resultados | Muy valiosa |
| `ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md` | Regula pruebas, regresiones y aceptación | Se valida calidad o comportamiento | Muy valiosa |
| `ciclo_de_vida/mlops_despliegue_ia.md` | Regula despliegue, APIs, operación y monitoreo | El sistema se integra u opera | Adecuada |
| `ciclo_de_vida/optimizacion_inferencia_model_serving_reglas.md` | Regula latencia, memoria, costo y serving | La meta es optimizar inferencia | Adecuada |
| `seguridad/seguridad_modelos_ia_reglas.md` | Regula amenazas y controles técnicos | Hay modelos, datos, prompts, agentes o endpoints expuestos | Muy valiosa |
| `seguridad/gobernanza_uso_responsable_ia_reglas.md` | Regula impactos, supervisión, privacidad y equidad | El sistema afecta personas o derechos | Necesaria y diferenciada |
| `validacion/checklist_codigo_ia.md` | Verifica reglas al cierre | Se construye, corrige o revisa un sistema | Útil, redundante en algunos puntos |

El `README.md` no es una skill: funciona como índice y router del dominio.

## 3. Evaluación detallada

Escala 1–5. En `Redundancia`, 5 significa mínima redundancia.

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base IA | 5 | 5 | 4 | 5 | 3 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Transversales IA | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 4 | MANTENER |
| ML supervisado | 5 | 4 | 4 | 5 | 4 | 5 | 5 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Deep Learning | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| No supervisado | 4 | 4 | 4 | 5 | 4 | 5 | 5 | 5 | MANTENER |
| Series temporales | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 4 | MANTENER |
| Recomendadores | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Graph ML | 4 | 5 | 4 | 4 | 4 | 5 | 4 | 5 | MANTENER |
| RL y control | 4 | 4 | 4 | 5 | 4 | 5 | 5 | 5 | MANTENER |
| Optimización evolutiva | 4 | 4 | 4 | 5 | 4 | 5 | 5 | 5 | MANTENER |
| LLM, RAG y agentes | 5 | 4 | 4 | 5 | 3 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| NLP y embeddings | 5 | 4 | 4 | 5 | 3 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Visión, audio y multimodal | 5 | 4 | 4 | 5 | 3 | 5 | 4 | 4 | MANTENER |
| Datos y experimentos | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| MLOps y despliegue | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Optimización de inferencia | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| Testing y evaluación | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 3 | MANTENER_CON_CAMBIOS_MENORES |
| Seguridad de modelos | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| Gobernanza responsable | 5 | 4 | 4 | 4 | 4 | 5 | 4 | 5 | MANTENER |
| Checklist IA | 5 | 3 | 4 | 5 | 4 | 5 | 5 | 3 | MANTENER_CON_CAMBIOS_MENORES |

No identifico ninguna skill que deba eliminarse o fusionarse de inmediato.

## 4. Problemas detectados

### Redundancias

1. La base, las reglas transversales y el checklist repiten:

   - objetivo;
   - supuestos;
   - métricas;
   - validación;
   - reproducibilidad;
   - seguridad;
   - no invención.

2. Varias skills repiten registro de:

   - modelo;
   - versión;
   - seed;
   - hiperparámetros;
   - métricas;
   - artefactos.

3. Datos, testing y checklist contienen reglas similares sobre:

   - baseline;
   - particiones;
   - comparación;
   - criterios de aceptación;
   - análisis de errores.

La repetición es parcialmente necesaria porque mejora la autonomía de módulos aislados, pero debería ser más compacta y explícita.

### Solapamientos

- `ml_supervisado` ↔ `deep_learning`: el deep learning puede resolver tareas supervisadas.
- `ml_supervisado` ↔ `series_temporales`: forecasting supervisado, pero con reglas temporales específicas.
- `ml_supervisado` ↔ `recomendadores`: ranking y scoring aparecen en ambas.
- `LLM/RAG/agentes` ↔ `NLP/embeddings`: generación, fine-tuning y búsqueda semántica.
- `LLM/RAG/agentes` ↔ `seguridad_modelos`: prompt injection, herramientas y contexto.
- `MLOps` ↔ `optimización_inferencia`: serving, latencia, memoria y costos.
- `datos_experimentos` ↔ `testing`: evaluación y reproducibilidad.
- `seguridad_modelos` ↔ `gobernanza`: privacidad, abuso y controles.
- Todas las especialidades ↔ `checklist_codigo_ia`.

### Exceso de contexto

Las candidatas principales son:

- `base/instrucciones_base_ia.md`;
- `llm_rag_agentes_reglas.md`;
- `nlp_embeddings_genai_reglas.md`;
- `vision_audio_multimodal_reglas.md`;
- `checklist_codigo_ia.md`.

La causa no es solo su longitud: concentran reglas generales junto con reglas especializadas.

### Ambigüedad

- No se define qué módulo tiene prioridad cuando una tarea es simultáneamente, por ejemplo, RAG, multimodal, seguridad y MLOps.
- `fine-tuning` aparece en Deep Learning, NLP y LLM, sin una regla de selección.
- `ranking` aparece en supervisado y recomendadores.
- `evaluación` puede referirse a modelo, sistema, seguridad, producto o producción.
- No existe una distinción formal entre módulo principal, complementario obligatorio y complementario opcional.

### Fragmentación

La fragmentación actual es aceptable. RL y optimización evolutiva están correctamente separadas por formulación, evaluación y dinámica.

La separación entre MLOps y optimización de inferencia también es defendible.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base IA | Transversales IA | Complementarias con repetición | Media | Mantener; reducir duplicación |
| Transversales IA | Datos y experimentos | Dependiente | Baja | Mantener dueño explícito |
| Transversales IA | Testing | Dependiente | Baja | Mantener fronteras |
| Transversales IA | Seguridad | Dependiente | Baja | Mantener controles generales mínimos |
| ML supervisado | Deep Learning | Parcialmente redundantes | Media | Definir deep learning como elección arquitectónica |
| ML supervisado | Series temporales | Parcialmente redundantes | Media | Series temporales tiene prioridad si el tiempo gobierna el diseño |
| ML supervisado | Recomendadores | Parcialmente redundantes | Media | Recomendadores tiene prioridad si existe usuario/ítem/ranking |
| LLM/RAG/agentes | NLP/embeddings | Parcialmente redundantes | Alta | Separar sistema/orquestación de procesamiento textual |
| LLM/RAG/agentes | Visión/audio | Complementarias | Baja | Multimodalidad como complemento |
| LLM/RAG/agentes | Seguridad modelos | Dependientes | Alta | Seguridad obligatoria cuando hay herramientas o datos sensibles |
| Datos/experimentos | Testing | Complementarias | Media | Datos define trazabilidad; testing define aceptación |
| MLOps | Serving | Parcialmente redundantes | Media | MLOps define operación; serving define rendimiento |
| MLOps | Testing | Complementarias | Media | Testing debe ejecutarse antes y durante despliegue |
| Seguridad modelos | Gobernanza | Complementarias | Media | Seguridad técnica versus impactos y derechos |
| Todas las especialidades | Checklist | Dependientes | Baja | Checklist solo al cierre, no como contexto inicial |
| RL | Optimización evolutiva | Independientes | Baja | Mantener separadas |
| Graph ML | Recomendadores | Complementarias | Baja | Activar ambas solo si el grafo sostiene recomendación |
| No supervisado | Series temporales | Complementarias | Baja | Activar conjuntamente para anomalías temporales |

## 6. Propuesta de arquitectura objetivo

### Estructura actual

```text
desarrollo-ia/
├── base/
├── modelamiento/
├── sistemas_generativos/
├── ciclo_de_vida/
├── seguridad/
└── validacion/
```

La estructura física es adecuada. El problema principal está en el protocolo de carga, no en los directorios.

### Estructura propuesta

```text
desarrollo-ia/
├── base/
│   ├── instrucciones_base_ia.md
│   └── reglas_transversales_ia.md
├── modelamiento/
├── sistemas_generativos/
├── ciclo_de_vida/
├── seguridad/
├── validacion/
└── README.md
```

La estructura física puede mantenerse sin cambios. Recomiendo mejorar el README con una matriz de decisión:

```text
tarea
  ├── ¿afecta personas o derechos? → gobernanza
  ├── ¿hay riesgo técnico de abuso? → seguridad
  ├── ¿hay datos o comparación experimental? → datos_experimentos
  ├── ¿hay despliegue? → mlops
  ├── ¿hay optimización de serving? → optimización_inferencia
  ├── ¿hay evaluación o regresión? → testing
  └── elegir un módulo principal de modelamiento o sistemas_generativos
```

### Regla de carga recomendada

```text
Siempre:
  base/instrucciones_base_ia.md

Si la tarea es técnica:
  base/reglas_transversales_ia.md

Luego:
  un módulo principal

Agregar solo si aplica:
  datos_experimentos
  testing
  seguridad
  gobernanza
  mlops
  checklist al cierre
```

## 7. Acciones recomendadas

### P0 — Críticas

No hay defectos críticos que impidan el uso.

Sí debe resolverse antes de una futura ampliación:

- definir prioridad entre módulos;
- formalizar la diferencia entre principal, complementario y checklist;
- fijar términos canónicos para evaluación, validación, seguridad y gobernanza.

### P1 — Alto impacto

1. Mejorar `README.md` con una matriz de selección y reglas de prioridad.
2. Reducir duplicación entre:

   - `base/instrucciones_base_ia.md`;
   - `base/reglas_transversales_ia.md`;
   - `validacion/checklist_codigo_ia.md`.

3. Agregar a cada skill una sección breve:

   ```text
   MÓDULO PRINCIPAL
   COMPLEMENTOS FRECUENTES
   NO COMBINAR POR DEFECTO CON
   ```

4. Clarificar:

   - `LLM/RAG/agentes` como arquitectura/orquestación;
   - `NLP/embeddings` como procesamiento textual;
   - `MLOps` como ciclo operativo;
   - `serving` como optimización de rendimiento.

5. Separar en el checklist las verificaciones obligatorias de las condicionales.

### P2 — Optimización

- Convertir párrafos generales en reglas compactas.
- Mantener una sola definición de conceptos transversales.
- Eliminar repeticiones de “registrar modelo, versión, métricas y artefactos” cuando ya exista una referencia válida.
- Homogeneizar encabezados: `Alcance`, `Usar cuando`, `No usar cuando`, `Reglas`, `Evaluación`, `Implementación`.
- Revisar reglas con formulación demasiado general, por ejemplo “cuando aporte valor” sin criterio operativo.

### P3 — Opcional

- Crear ejemplos mínimos de composición de contexto.
- Añadir una tabla de casos de uso reales.
- Añadir metadatos de versión por skill.
- Crear validación automática de enlaces relativos y encabezados.

## 8. Estimación de impacto

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Mejorar matriz de routing del README | ↓ baja | ↑ | ↑↑ | Bajo |
| Centralizar reglas transversales | ↓↓ media | =/↑ | ↑↑ | Medio |
| Reducir duplicación del checklist | ↓ media | = | ↑ | Medio |
| Añadir prioridad entre módulos | = | ↑↑ | ↑ | Bajo |
| Separar LLM de NLP mediante límites explícitos | ↓ baja | ↑↑ | ↑↑ | Bajo |
| Separar MLOps de serving | = | ↑ | ↑ | Bajo |
| Compactar prosa general de la base | ↓↓ media | =/↑ | ↑ | Medio |
| Dividir `vision_audio_multimodal` | ↓ contextual | = | ↓ | Medio-alto |
| Fusionar módulos de modelamiento | ↓↓ | Riesgo de ↓ | ↓ | Alto |

No recomiendo fusionar módulos especializados solo para reducir archivos.

## 9. Skills candidatas a modificación

### Mantener intactas

- `reglas_transversales_ia.md`
- `deep_learning_reglas.md`
- `no_supervisado_anomalias_clustering_reglas.md`
- `series_temporales_forecasting_reglas.md`
- `graph_ml_grafos_kg_reglas.md`
- `rl_control_decisiones_secuenciales_reglas.md`
- `optimizacion_evolutivos_busqueda_reglas.md`
- `vision_audio_multimodal_reglas.md`
- `seguridad_modelos_ia_reglas.md`
- `gobernanza_uso_responsable_ia_reglas.md`

### Compactar o ajustar

- `instrucciones_base_ia.md`
- `ml_supervisado_reglas.md`
- `llm_rag_agentes_reglas.md`
- `nlp_embeddings_genai_reglas.md`
- `datos_experimentos_reglas.md`
- `mlops_despliegue_ia.md`
- `testing_evaluacion_sistemas_ia_reglas.md`
- `checklist_codigo_ia.md`
- `recomendadores_ranking_personalizacion_reglas.md`

### Fusionar

No recomiendo fusionar ninguna skill actualmente.

### Dividir

No recomiendo dividir ninguna skill en la primera iteración.

### Reubicar

No recomiendo reubicar archivos. La estructura actual representa bien las responsabilidades.

### Eliminar o deprecar

No se justifica eliminar ni deprecar skills con la evidencia disponible.

## 10. Plan de refactorización

### Fase 1 — Routing

1. Actualizar el README con prioridad de módulos.
2. Definir formalmente módulo principal y complementarios.
3. Agregar casos de “no usar cuando”.
4. Documentar combinaciones frecuentes.

### Fase 2 — Consolidación

1. Auditar reglas repetidas entre base, transversales y checklist.
2. Mover solo reglas verdaderamente comunes a `reglas_transversales_ia.md`.
3. Mantener excepciones en las skills especializadas.
4. Convertir el checklist en verificación, no en una segunda política general.

### Fase 3 — Límites semánticos

1. Clarificar LLM versus NLP.
2. Clarificar supervisado versus recomendadores.
3. Clarificar MLOps versus serving.
4. Clarificar datos/experimentos versus testing.
5. Clarificar seguridad técnica versus gobernanza.

### Fase 4 — Validación funcional

Probar con tareas representativas:

- clasificación tabular;
- fine-tuning;
- RAG;
- agente con herramientas;
- API de inferencia;
- forecasting;
- recomendadores;
- OCR/VLM;
- regresión de modelos o prompts.

Registrar:

- archivos cargados;
- skill seleccionada;
- respuesta producida;
- errores de activación;
- tokens o palabras;
- necesidad de módulos complementarios.

### Fase 5 — Medición

Comparar:

```text
base
base + transversales
base + transversales + módulo principal
base + transversales + módulo principal + complementarios
```

No asumir que menos tokens implica mejor resultado. La métrica de éxito debe combinar calidad, activación correcta y costo de contexto.

## Conclusión

El dominio está bien estructurado y es utilizable.
La mayor ineficiencia es la repetición entre base, transversales, checklist y módulos especializados.
La mayor oportunidad es mejorar el routing y definir prioridades de composición.
Sí recomiendo refactorizar ahora, pero de forma localizada y conservadora.
La mejor relación calidad/tokens provendría de centralizar reglas comunes y cargar un solo módulo principal por tarea.
No recomiendo fusionar ni eliminar skills especializadas sin validación funcional previa.
