# Reglas específicas — NLP, embeddings e IA generativa

## Alcance

Aplicar cuando la tarea involucre procesamiento de lenguaje natural, clasificación de texto, extracción de información, resumen, traducción, búsqueda semántica, embeddings, generación de texto, análisis documental, fine-tuning o evaluación de salidas generativas.

## Datos textuales

- Valida idioma, dominio, codificación, longitud, duplicados, ruido, estructura, metadatos y calidad del texto.
- Identifica datos personales, sensibles, confidenciales, sesgos lingüísticos y restricciones de licenciamiento.
- Define unidad textual: documento, párrafo, oración, turno conversacional, consulta, respuesta, entidad o fragmento.
- Conserva trazabilidad entre texto original, texto limpio, fragmentos, etiquetas y salidas generadas.

## NLP clásico y supervisado

- Define tarea: clasificación, NER, extracción, similitud, clustering, resumen, traducción, QA, detección de intención u otra.
- Usa baselines simples cuando sea razonable: reglas, TF-IDF, BM25, modelos lineales o modelos preentrenados pequeños.
- Selecciona métricas según tarea: precision, recall, F1, exact match, ROUGE, BLEU, BERTScore, accuracy, matriz de confusión o métricas humanas.
- Evalúa errores por clase, dominio, longitud, idioma, dialecto, ambigüedad y subgrupos relevantes.

## Embeddings

- Define objetivo del embedding: búsqueda, clustering, recomendación, deduplicación, clasificación, reranking o comparación semántica.
- Registra modelo, dimensión, normalización, distancia usada, estrategia de indexación y versión.
- No asumas que embeddings capturan verdad factual; representan similitud según entrenamiento y contexto.
- Evalúa con consultas reales, ejemplos negativos, casos ambiguos y métricas de recuperación cuando corresponda.

## Generación y fine-tuning

- Define tarea, formato de entrada/salida, dataset, split, baseline, métrica y criterio de éxito antes de entrenar o ajustar.
- No uses fine-tuning cuando prompting, RAG, reglas o plantillas resuelvan mejor el problema.
- Controla temperatura, top_p, max tokens, instrucciones, plantillas y versiones del modelo.
- Evalúa exactitud, consistencia, cobertura, seguridad, estilo, fidelidad al contexto y robustez ante entradas adversarias.
- Complementa métricas automáticas con revisión humana cuando la calidad dependa de criterio semántico o contextual.

## Seguridad

- Evita incluir secretos, datos personales o documentos privados en prompts, datasets o logs.
- Considera sesgos, toxicidad, contenido dañino, privacidad y uso indebido.
