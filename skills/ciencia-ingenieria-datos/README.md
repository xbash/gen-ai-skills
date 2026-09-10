# Dominio: Ciencia e Ingenieria de Datos

## Descripcion
Este dominio esta pensado para trabajo academico, metodologico y tecnico en ciencia e ingenieria de datos. Sirve para analizar problemas, disenar pipelines, revisar datos, construir modelos, evaluar resultados, comunicar hallazgos y gobernar el ciclo de vida de datos con rigor.

No reemplaza al dominio `desarrollo-ia`: aqui el centro son los datos, la evidencia, la estadistica, los pipelines, la calidad, la reproducibilidad y la toma de decisiones. Cuando la tarea principal sea construir aplicaciones con LLM, RAG, agentes, VLM, MLOps o serving de modelos, conviene usar `desarrollo-ia` como dominio principal y este como apoyo de datos.

## Archivos del dominio

| Archivo | Uso principal |
|---|---|
| `instrucciones_base_cied.md` | Instruccion base del dominio, rol, alcance, rigor y formato de respuesta. |
| `fundamentos_matematicos_estadisticos_reglas.md` | Algebra lineal, probabilidad, inferencia, optimizacion, simulacion y metodos numericos. |
| `programacion_algoritmos_software_reglas.md` | Programacion, algoritmos, estructura de codigo, notebooks, scripts y calidad de software para datos. |
| `bases_datos_almacenamiento_recuperacion_reglas.md` | SQL/NoSQL, modelamiento, almacenamiento, recuperacion, lakehouse, catalogos e indices. |
| `analisis_estadistico_modelamiento_reglas.md` | EDA, regresion, series de tiempo, inferencia, pronostico, causalidad y experimentacion. |
| `ml_dl_ia_reglas.md` | ML, deep learning, modelos probabilisticos, recomendadores, IA generativa aplicada a datos y evaluacion. |
| `big_data_sistemas_distribuidos_reglas.md` | Spark, streaming, Kafka, procesamiento distribuido, orquestacion, escalabilidad y costos. |
| `mineria_analitica_pipeline_reglas.md` | Limpieza, transformaciones, feature engineering, data quality, contratos, ELT/dbt y data products. |
| `nlp_vision_audiovisual_reglas.md` | Analitica de texto, imagen, audio, video, documentos, embeddings y datos multimodales. |
| `visualizacion_comunicacion_datos_reglas.md` | Dashboards, storytelling, visualizacion, comunicacion de incertidumbre y decision analytics. |
| `metodologia_experimentos_reproducibilidad_reglas.md` | Protocolo experimental, reproducibilidad, versionado, evaluacion, A/B testing y auditoria. |
| `etica_privacidad_gobernanza_datos_reglas.md` | Privacidad, gobernanza, linaje, catalogos, acceso, sesgos, cumplimiento y uso responsable. |
| `checklist_ciencia_ingenieria_datos.md` | Checklist operativo para revisar analisis, pipelines, modelos, reportes y gobernanza. |
| `reglas_transversales_cied.md` | Controles comunes de problema, calidad, leakage, evaluacion, reproducibilidad y privacidad. |

## Recomendacion de uso

Carga siempre `instrucciones_base_cied.md`, normalmente tambien `reglas_transversales_cied.md`, y selecciona un solo modulo principal. Agrega un modulo complementario solo si la tarea lo necesita. Carga el checklist al cierre o durante una auditoria.

Los nombres descriptivos actuales son la convención canónica del dominio. Los subdirectorios `pack-chatgpt/` fueron eliminados intencionalmente y no deben recrearse.

### Seleccion rapida

| Tarea principal | Modulo principal |
|---|---|
| Analisis, inferencia, causalidad o series de tiempo | `analisis_estadistico_modelamiento_reglas.md` |
| Modelo predictivo, deep learning o embeddings | `ml_dl_ia_reglas.md` |
| Limpieza, transformaciones, dbt o producto de datos | `mineria_analitica_pipeline_reglas.md` |
| Experimento, benchmark o reproducibilidad | `metodologia_experimentos_reproducibilidad_reglas.md` |
| SQL, almacenamiento o recuperacion | `bases_datos_almacenamiento_recuperacion_reglas.md` |
| Streaming, Spark o sistemas distribuidos | `big_data_sistemas_distribuidos_reglas.md` |
| Texto, OCR, imagen, audio o video | `nlp_vision_audiovisual_reglas.md` |
| Codigo, notebook, algoritmo o pruebas | `programacion_algoritmos_software_reglas.md` |
| Dashboard, BI o comunicacion | `visualizacion_comunicacion_datos_reglas.md` |
| Privacidad, acceso, sesgo o gobernanza | `etica_privacidad_gobernanza_datos_reglas.md` |
| Supuestos matematicos, simulacion u optimizacion | `fundamentos_matematicos_estadisticos_reglas.md` |

## Principios del dominio

- Formular primero la pregunta, la unidad de analisis, el criterio de exito y la decision esperada.
- No confundir correlacion, prediccion, explicacion, inferencia causal y accion operacional.
- Priorizar calidad, trazabilidad, privacidad, reproducibilidad y comunicacion honesta antes que sofisticacion tecnica.
- Usar baselines, particiones correctas, metricas alineadas al objetivo y analisis de errores.
- Distinguir exploracion, evidencia, hipotesis, recomendacion y limitacion.
- Evitar modelos, dashboards o pipelines que no tengan responsable, fuente, linaje, validacion y criterio de mantenimiento.
