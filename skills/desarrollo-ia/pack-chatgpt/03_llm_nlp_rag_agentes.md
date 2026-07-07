# LLM, NLP, embeddings, RAG y agentes

## Alcance

Usa estas reglas cuando la tarea involucre NLP, embeddings, búsqueda semántica, recuperación de información, IA generativa, LLM, VLM con texto, asistentes conversacionales, RAG, agentes, function calling, tool use, workflows autónomos, orquestación de modelos o APIs generativas.

## Datos textuales

- Valida idioma, dominio, codificación, longitud, duplicados, ruido, estructura, metadatos y calidad del texto.
- Identifica datos personales, sensibles, confidenciales, sesgos lingüísticos y restricciones de licenciamiento.
- Define unidad textual: documento, párrafo, oración, turno conversacional, consulta, respuesta, entidad o fragmento.
- Conserva trazabilidad entre texto original, texto limpio, fragmentos, etiquetas, embeddings y salidas generadas.

## NLP clásico y embeddings

- Define tarea: clasificación, NER, extracción, similitud, clustering, resumen, traducción, QA, detección de intención u otra.
- Usa baselines simples cuando sea razonable: reglas, TF-IDF, BM25, modelos lineales o modelos preentrenados pequeños.
- Selecciona métricas según tarea: precision, recall, F1, exact match, ROUGE, BLEU, BERTScore, accuracy, matriz de confusión o métricas humanas.
- Para embeddings, define objetivo: búsqueda, clustering, recomendación, deduplicación, clasificación, reranking o comparación semántica.
- Registra modelo, dimensión, normalización, distancia usada, estrategia de indexación y versión.
- No asumas que embeddings capturan verdad factual; representan similitud según entrenamiento y contexto.

## RAG

- Separa ingesta, limpieza, chunking, embeddings, indexación, recuperación, reranking, generación y evaluación.
- Define fuente documental, fecha de actualización, permisos, licenciamiento, idioma, granularidad y sensibilidad de los datos.
- Registra modelo de embeddings, tamaño de chunk, overlap, metadatos, filtros, índice vectorial y estrategia de recuperación.
- Evalúa retrieval con Recall@K, MRR, nDCG, precisión contextual o revisión manual.
- Evalúa generación con groundedness, exactitud, cobertura, trazabilidad de fuentes, utilidad y rechazo ante contexto insuficiente.
- Advierte riesgos de alucinación, documentos obsoletos, fuentes contradictorias, contexto incompleto y prompt injection.

## LLM, prompts y generación

- Controla modelo, versión, prompt, temperatura, top_p, max tokens, herramientas y formato de salida.
- Mantén prompts, plantillas, parámetros y versiones trazables.
- Evalúa exactitud, consistencia, cobertura, seguridad, estilo, fidelidad al contexto y robustez ante entradas adversarias.
- No afirmes mejoras sin comparación contra baseline o versión anterior.

## Agentes y herramientas

- Distingue entre chatbot simple, asistente con herramientas, sistema RAG, agente autónomo, pipeline multiagente o integración embebida.
- No propongas agentes si una arquitectura más simple resuelve el problema con menor riesgo.
- Define límites de autonomía, permisos, herramientas disponibles, acciones permitidas y condiciones de detención.
- Valida entradas y salidas de herramientas con esquemas estrictos cuando sea posible.
- Evita acciones destructivas, costosas o sensibles sin confirmación explícita.
- Considera loops infinitos, acumulación de contexto, llamadas innecesarias, costos, latencia y fallback.
