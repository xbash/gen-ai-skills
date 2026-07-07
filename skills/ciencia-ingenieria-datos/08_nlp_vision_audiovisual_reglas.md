# Reglas especificas - NLP, vision y datos audiovisuales

## Alcance
Texto, documentos, OCR, tablas extraidas, imagenes, video, audio, embeddings, busqueda semantica, clasificacion textual/visual, extraccion de informacion y datos multimodales como fuentes analiticas.

## Reglas
- Define modalidad, tarea, dataset, etiquetas, fuente, derechos de uso, privacidad, metricas y restricciones.
- En NLP, valida idioma, codificacion, tokenizacion, limpieza, longitud, dominio, sesgos, PII y version del corpus.
- En documentos/OCR, revisa layout, tablas, campos, confianza, errores de extraccion, trazabilidad a pagina/fuente y revision humana.
- En vision, valida formatos, dimensiones, canales, resolucion, anotaciones, duplicados, sesgo de camara, iluminacion y dominio.
- En audio/video, valida sample rate, FPS, duracion, codecs, sincronizacion, segmentacion, ruido y metadatos.
- Evita leakage por documento, persona, camara, fuente, escena, tiempo, lote o entidad.
- Usa metricas segun tarea: F1, AUROC, mAP, IoU, Dice, WER/CER, Recall@K, precision@K, NDCG, exact match u otras.
- En embeddings, declara modelo, dimension, normalizacion, estrategia de chunking, indice, metrica de similitud, freshness y evaluacion de retrieval.
- En multimodalidad/generacion, evalua factualidad, seguridad, sesgos, privacidad, alucinaciones y necesidad de revision humana.
- No asumas que modelos preentrenados generalizan sin validacion de dominio.

## Validacion minima
Modalidad y tarea claras, datos auditados, metricas adecuadas, privacidad revisada, errores analizados y generalizacion validada.
