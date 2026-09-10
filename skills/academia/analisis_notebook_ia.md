# Analisis de notebooks de IA, ML y modelos generativos

## Alcance
Usar cuando el notebook trate sobre inteligencia artificial, machine learning, deep learning, NLP, vision por computadora, audio, RAG, agentes, modelos generativos, embeddings, clustering, forecasting, recomendadores o evaluacion de modelos.

## Revision especifica
Ademas del analisis generico, revisar:

- tarea: clasificacion, regresion, clustering, deteccion, segmentacion, generacion, retrieval, ranking u otra;
- dataset, fuente, particiones y posible leakage;
- variables, features, etiquetas y preprocesamiento;
- baseline y modelos comparados;
- arquitectura o metodo usado;
- hiperparametros relevantes;
- entrenamiento, validacion y prueba;
- metricas alineadas al objetivo;
- analisis de errores;
- reproducibilidad: seeds, versiones, hardware, checkpoints y artefactos.

## Reglas
- No presentar un modelo como mejor sin dataset, metrica, baseline y protocolo.
- No inventar metricas ni resultados.
- Verificar que train/test no se mezclen.
- Cuidar desbalance, overfitting, data leakage, sesgos y generalizacion.
- En LLM/VLM/modelos generativos, revisar prompts, temperatura, variabilidad, alucinaciones, privacidad y evaluacion humana/automatica.

## Salida esperada
Identificar celdas faltantes, proponer codigo o texto, explicar decisiones tecnicas y cerrar con una revision metodologica del flujo de IA.
