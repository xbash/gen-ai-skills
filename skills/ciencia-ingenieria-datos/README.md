# Dominio: Ciencia e Ingenieria de Datos

## Descripcion
Este dominio esta pensado para trabajo academico, metodologico y tecnico en ciencia e ingenieria de datos. Sirve para analizar problemas, disenar pipelines, revisar datos, construir modelos, evaluar resultados, comunicar hallazgos y gobernar el ciclo de vida de datos con rigor.

No reemplaza al dominio `desarrollo-ia`: aqui el centro son los datos, la evidencia, la estadistica, los pipelines, la calidad, la reproducibilidad y la toma de decisiones. Cuando la tarea principal sea construir aplicaciones con LLM, RAG, agentes, VLM, MLOps o serving de modelos, conviene usar `desarrollo-ia` como dominio principal y este como apoyo de datos.

## Archivos del dominio

| Archivo | Uso principal |
|---|---|
| `00_instrucciones_base_cied.md` | Instruccion base del dominio, rol, alcance, rigor y formato de respuesta. |
| `01_fundamentos_matematicos_estadisticos_reglas.md` | Algebra lineal, probabilidad, inferencia, optimizacion, simulacion y metodos numericos. |
| `02_programacion_algoritmos_software_reglas.md` | Programacion, algoritmos, estructura de codigo, notebooks, scripts y calidad de software para datos. |
| `03_bases_datos_almacenamiento_recuperacion_reglas.md` | SQL/NoSQL, modelamiento, almacenamiento, recuperacion, lakehouse, catalogos e indices. |
| `04_analisis_estadistico_modelamiento_reglas.md` | EDA, regresion, series de tiempo, inferencia, pronostico, causalidad y experimentacion. |
| `05_ml_dl_ia_reglas.md` | ML, deep learning, modelos probabilisticos, recomendadores, IA generativa aplicada a datos y evaluacion. |
| `06_big_data_sistemas_distribuidos_reglas.md` | Spark, streaming, Kafka, procesamiento distribuido, orquestacion, escalabilidad y costos. |
| `07_mineria_analitica_pipeline_reglas.md` | Limpieza, transformaciones, feature engineering, data quality, contratos, ELT/dbt y data products. |
| `08_nlp_vision_audiovisual_reglas.md` | Analitica de texto, imagen, audio, video, documentos, embeddings y datos multimodales. |
| `09_visualizacion_comunicacion_datos_reglas.md` | Dashboards, storytelling, visualizacion, comunicacion de incertidumbre y decision analytics. |
| `10_metodologia_experimentos_reproducibilidad_reglas.md` | Protocolo experimental, reproducibilidad, versionado, evaluacion, A/B testing y auditoria. |
| `11_etica_privacidad_gobernanza_datos_reglas.md` | Privacidad, gobernanza, linaje, catalogos, acceso, sesgos, cumplimiento y uso responsable. |
| `12_checklist_ciencia_ingenieria_datos.md` | Checklist operativo para revisar analisis, pipelines, modelos, reportes y gobernanza. |

## Recomendacion de uso

Para asistentes con limite amplio de archivos, usar `00_instrucciones_base_cied.md` junto con los archivos especificos que correspondan a la tarea.

Para ChatGPT u otros entornos con limite de 10 archivos por proyecto, usar el directorio `pack-chatgpt`, que fusiona el dominio en 8 archivos:

| Archivo pack | Equivalencia |
|---|---|
| `00_base_ciencia_ingenieria_datos.md` | Base del dominio. |
| `01_fundamentos_estadistica_modelamiento.md` | Archivos 01 y 04. |
| `02_programacion_bases_datos_pipelines.md` | Archivos 02, 03 y parte de 07. |
| `03_ml_dl_ia_experimentos.md` | Archivos 05 y 10. |
| `04_big_data_sistemas_distribuidos.md` | Archivo 06. |
| `05_mineria_analitica_multimodal.md` | Archivos 07 y 08. |
| `06_visualizacion_gobernanza_etica.md` | Archivos 09 y 11. |
| `07_checklist_cied.md` | Archivo 12. |

## Principios del dominio

- Formular primero la pregunta, la unidad de analisis, el criterio de exito y la decision esperada.
- No confundir correlacion, prediccion, explicacion, inferencia causal y accion operacional.
- Priorizar calidad, trazabilidad, privacidad, reproducibilidad y comunicacion honesta antes que sofisticacion tecnica.
- Usar baselines, particiones correctas, metricas alineadas al objetivo y analisis de errores.
- Distinguir exploracion, evidencia, hipotesis, recomendacion y limitacion.
- Evitar modelos, dashboards o pipelines que no tengan responsable, fuente, linaje, validacion y criterio de mantenimiento.
