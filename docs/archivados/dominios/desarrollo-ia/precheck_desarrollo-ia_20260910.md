# Precheck — desarrollo-ia

Fecha: 20260910  
Ruta inspeccionada: `skills/desarrollo-ia/`

## Verificación de ruta

- La ruta existe y es accesible: PASS.
- La inspección se basó en el contenido actual del dominio.
- No se cargó documentación histórica para decidir la clasificación.

## Inventario Markdown

| Archivo | Tamaño (bytes) | No vacío | README/auxiliar | Skill operativa por contenido |
|---|---:|---|---|---|
| `base/instrucciones_base_ia.md` | 5327 | Sí | No | Sí, base |
| `base/reglas_transversales_ia.md` | 1973 | Sí | Sí, transversal | No, auxiliar de controles comunes |
| `ciclo_de_vida/datos_experimentos_reglas.md` | 2515 | Sí | No | Sí |
| `ciclo_de_vida/mlops_despliegue_ia.md` | 2106 | Sí | No | Sí |
| `ciclo_de_vida/optimizacion_inferencia_model_serving_reglas.md` | 2013 | Sí | No | Sí |
| `ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md` | 2453 | Sí | No | Sí |
| `modelamiento/deep_learning_reglas.md` | 1801 | Sí | No | Sí |
| `modelamiento/graph_ml_grafos_kg_reglas.md` | 1865 | Sí | No | Sí |
| `modelamiento/ml_supervisado_reglas.md` | 2171 | Sí | No | Sí |
| `modelamiento/no_supervisado_anomalias_clustering_reglas.md` | 2248 | Sí | No | Sí |
| `modelamiento/optimizacion_evolutivos_busqueda_reglas.md` | 1363 | Sí | No | Sí |
| `modelamiento/recomendadores_ranking_personalizacion_reglas.md` | 2102 | Sí | No | Sí |
| `modelamiento/rl_control_decisiones_secuenciales_reglas.md` | 1404 | Sí | No | Sí |
| `modelamiento/series_temporales_forecasting_reglas.md` | 2197 | Sí | No | Sí |
| `README.md` | 4813 | Sí | Sí, índice/router | No |
| `seguridad/gobernanza_uso_responsable_ia_reglas.md` | 1905 | Sí | No | Sí |
| `seguridad/seguridad_modelos_ia_reglas.md` | 2198 | Sí | No | Sí |
| `sistemas_generativos/llm_rag_agentes_reglas.md` | 2820 | Sí | No | Sí |
| `sistemas_generativos/nlp_embeddings_genai_reglas.md` | 2778 | Sí | No | Sí |
| `sistemas_generativos/vision_audio_multimodal_reglas.md` | 3113 | Sí | No | Sí |
| `validacion/checklist_codigo_ia.md` | 2629 | Sí | Sí, checklist | No |

## Directorios con SKILL.md

No se encontraron directorios que contengan `SKILL.md` (0). La estructura por subdirectorios y Markdown se registra tal como está, sin inferir una arquitectura alternativa.

## Evidencia mínima de funcionalidad

Los 18 componentes marcados como operativos contienen alcance o `Usar cuando`/`Aplicar cuando`, reglas específicas y criterios de validación o salida. `README.md` funciona como índice/router; `base/reglas_transversales_ia.md` como auxiliar de controles comunes; y `validacion/checklist_codigo_ia.md` como checklist auxiliar. No se detectaron archivos vacíos.

## Clasificación obligatoria

**FUNCTIONAL**

Existen instrucciones operativas reales en el contenido actual; la clasificación no depende solo de nombres ni de la presencia de `SKILL.md`.

## Routing resultante

- Ruta siguiente: FASE 2B — AUDITORÍA FUNCIONAL.
- Modelo: GPT-5.6 Terra / Medium.
- Esfuerzo: Medium.
- Prompt: `prompts/audita_skills_dominios_v2_terra.md`.

No se diseñó, auditó arquitectura, refactorizó ni modificó ningún archivo bajo `skills/desarrollo-ia/`. No se avanzó automáticamente a ninguna fase posterior.
