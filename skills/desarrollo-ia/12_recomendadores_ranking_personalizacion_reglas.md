# Reglas específicas — Recomendadores, ranking y personalización

## Alcance

Aplicar cuando la tarea involucre sistemas recomendadores, ranking, búsqueda personalizada, next best action, matching, filtrado colaborativo, content-based filtering, learning to rank o personalización.

## Datos e interacciones

- Definir usuarios, ítems, eventos, contexto, timestamps, feedback explícito/implícito y objetivo de recomendación.
- Validar sesgos de exposición, popularidad, posición, disponibilidad, catálogo, usuarios fríos e ítems fríos.
- Evitar leakage temporal y separar entrenamiento/evaluación respetando el orden de interacciones.
- Documentar restricciones de negocio, diversidad, frescura, elegibilidad y reglas de exclusión.

## Modelado

- Considerar baselines: popularidad, reglas, contenido, coocurrencia o filtrado colaborativo simple.
- Distinguir recuperación de candidatos, ranking, reranking, filtros y explicación.
- Evaluar trade-offs entre precisión, diversidad, novedad, cobertura, fairness, latencia y costo.
- No optimizar solo clicks si el objetivo real incluye satisfacción, conversión, retención, seguridad o calidad.

## Evaluación

- Usar métricas offline según tarea: Recall@K, Precision@K, NDCG, MAP, MRR, coverage, diversity o hit rate.
- Considerar evaluación online, A/B testing o shadow testing cuando exista tráfico y sea seguro.
- Analizar resultados por segmentos, usuarios nuevos, ítems nuevos, popularidad, contexto y subgrupos relevantes.
- Advertir diferencias entre métricas offline y efecto real en producción.

## Implementación

- Separar generación de candidatos, scoring, ranking, filtros, explicación y logging.
- Registrar features, embeddings, modelo, catálogo, fecha de datos, versión de ranking y reglas aplicadas.
- Considerar caching, actualización incremental, latencia, fallback y monitoreo de drift del catálogo.
