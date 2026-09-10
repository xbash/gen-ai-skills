# Desarrollo de IA

Dominio para construir, integrar, evaluar, desplegar y operar soluciones basadas en inteligencia artificial con rigor académico-técnico y orientación práctica.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `base/instrucciones_base_ia.md` | Instrucción personalizada base para desarrollo aplicado de IA. |
| `modelamiento/ml_supervisado_reglas.md` | Clasificación, regresión, ranking, scoring y modelos supervisados. |
| `modelamiento/deep_learning_reglas.md` | Redes neuronales, entrenamiento, GPU/CPU, checkpoints y frameworks. |
| `sistemas_generativos/llm_rag_agentes_reglas.md` | LLM, RAG, agentes, tool use, asistentes y APIs generativas. |
| `sistemas_generativos/nlp_embeddings_genai_reglas.md` | NLP, embeddings, generación de texto, búsqueda semántica y fine-tuning. |
| `ciclo_de_vida/datos_experimentos_reglas.md` | Datos, features, evaluación, reproducibilidad y trazabilidad. |
| `ciclo_de_vida/mlops_despliegue_ia.md` | MLOps, despliegue, inferencia, monitoreo y operación. |
| `validacion/checklist_codigo_ia.md` | Checklist transversal para código, pipelines y sistemas de IA. |
| `sistemas_generativos/vision_audio_multimodal_reglas.md` | Visión, audio, voz, OCR, video, VLM y multimodalidad. |
| `modelamiento/rl_control_decisiones_secuenciales_reglas.md` | Reinforcement learning, control, simulación y decisiones secuenciales. |
| `modelamiento/optimizacion_evolutivos_busqueda_reglas.md` | Optimización evolutiva y búsqueda heurística. |
| `seguridad/gobernanza_uso_responsable_ia_reglas.md` | Impacto, supervisión humana, explicabilidad, equidad y uso responsable. |
| `modelamiento/no_supervisado_anomalias_clustering_reglas.md` | Clustering, reducción de dimensionalidad, anomalías y exploración no supervisada. |
| `modelamiento/series_temporales_forecasting_reglas.md` | Forecasting, series temporales, validación temporal y backtesting. |
| `modelamiento/recomendadores_ranking_personalizacion_reglas.md` | Sistemas recomendadores, ranking, personalización y evaluación offline/online. |
| `modelamiento/graph_ml_grafos_kg_reglas.md` | Grafos, knowledge graphs, GNN, entidades y relaciones. |
| `ciclo_de_vida/optimizacion_inferencia_model_serving_reglas.md` | Optimización de inferencia, serving, quantization, distillation y runtimes. |
| `seguridad/seguridad_modelos_ia_reglas.md` | Seguridad de modelos, prompts, datos, endpoints y supply chain. |
| `ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md` | Testing, evaluación continua, golden datasets y regresión de modelos/prompts. |
| `base/reglas_transversales_ia.md` | Controles comunes de objetivo, datos, evaluación, reproducibilidad y seguridad. |

## Recomendación de uso

Carga siempre `base/instrucciones_base_ia.md`, normalmente también `base/reglas_transversales_ia.md`, y selecciona un solo módulo principal. Añade módulos complementarios únicamente cuando la tarea cruce responsabilidades. Usa `validacion/checklist_codigo_ia.md` al cierre o durante una revisión.

Los nombres descriptivos actuales son la convención canónica del dominio. Los subdirectorios `pack-chatgpt/` fueron eliminados intencionalmente y no deben recrearse.

### Selección rápida

| Tarea principal | Módulo principal |
| --- | --- |
| Clasificación, regresión o scoring | `modelamiento/ml_supervisado_reglas.md` |
| Redes neuronales o fine-tuning | `modelamiento/deep_learning_reglas.md` |
| LLM, RAG, agentes o herramientas | `sistemas_generativos/llm_rag_agentes_reglas.md` |
| NLP, embeddings o generación textual | `sistemas_generativos/nlp_embeddings_genai_reglas.md` |
| Datos, features o reproducibilidad | `ciclo_de_vida/datos_experimentos_reglas.md` |
| Despliegue y operación | `ciclo_de_vida/mlops_despliegue_ia.md` |
| Latencia, memoria o costos de inferencia | `ciclo_de_vida/optimizacion_inferencia_model_serving_reglas.md` |
| Testing o regresión de modelos/prompts | `ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md` |
| Visión, audio, OCR o VLM | `sistemas_generativos/vision_audio_multimodal_reglas.md` |
| Forecasting | `modelamiento/series_temporales_forecasting_reglas.md` |
| Recomendación o ranking | `modelamiento/recomendadores_ranking_personalizacion_reglas.md` |
| Grafos o knowledge graphs | `modelamiento/graph_ml_grafos_kg_reglas.md` |
| Clustering o anomalías | `modelamiento/no_supervisado_anomalias_clustering_reglas.md` |
| RL, control o decisiones secuenciales | `modelamiento/rl_control_decisiones_secuenciales_reglas.md` |
| Optimización evolutiva o búsqueda heurística | `modelamiento/optimizacion_evolutivos_busqueda_reglas.md` |
| Seguridad de modelos o agentes | `seguridad/seguridad_modelos_ia_reglas.md` |
| Impacto, supervisión o uso responsable | `seguridad/gobernanza_uso_responsable_ia_reglas.md` |
