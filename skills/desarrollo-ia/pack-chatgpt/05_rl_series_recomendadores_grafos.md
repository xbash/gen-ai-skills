# RL, series temporales, recomendadores y grafos

## Alcance

Usa estas reglas cuando la tarea involucre reinforcement learning, optimización evolutiva, series temporales, forecasting, sistemas recomendadores, ranking, personalización, grafos, knowledge graphs, GNN o razonamiento sobre relaciones.

## Aprendizaje reforzado y optimización

- Define entorno, observaciones, acciones, recompensas, episodios, condiciones de término y restricciones.
- Registra versión del entorno, wrappers, seeds, configuración de simulación y dependencias.
- Documenta función de recompensa, penalizaciones, normalización y riesgos de reward hacking.
- No generalices resultados desde una sola corrida; considera alta varianza y sensibilidad a semillas.
- Reporta retorno por episodio, estabilidad, tasa de éxito, longitud de episodio, fallos y métricas del dominio.
- Para algoritmos evolutivos, define población, representación, fitness, selección, cruza, mutación, elitismo, parada y presupuesto.
- Evita comparar métodos con presupuestos de evaluación distintos.

## Series temporales y forecasting

- Define frecuencia, horizonte de predicción, granularidad, unidad de análisis, zona horaria, calendario y disponibilidad real de variables.
- Valida orden temporal, duplicados, gaps, cambios de frecuencia, valores faltantes, outliers, estacionalidad y cambios de régimen.
- Evita leakage usando solo información disponible antes del momento de predicción.
- Preferir splits temporales, rolling windows, expanding windows o backtesting según el caso.
- Define baseline temporal: naive, seasonal naive, media móvil u otro baseline simple.
- Usa métricas pertinentes: MAE, RMSE, MAPE, sMAPE, MASE, pinball loss, cobertura de intervalos o métricas de negocio.
- Evita MAPE cuando existan ceros o valores cercanos a cero sin tratamiento explícito.

## Recomendadores, ranking y personalización

- Define usuarios, ítems, eventos, contexto, timestamps, feedback explícito/implícito y objetivo de recomendación.
- Valida sesgos de exposición, popularidad, posición, disponibilidad, catálogo, usuarios fríos e ítems fríos.
- Distingue recuperación de candidatos, ranking, reranking, filtros y explicación.
- Considera baselines: popularidad, reglas, contenido, coocurrencia o filtrado colaborativo simple.
- Evalúa con Recall@K, Precision@K, NDCG, MAP, MRR, coverage, diversity o hit rate.
- Analiza resultados por segmentos, usuarios nuevos, ítems nuevos, popularidad, contexto y subgrupos relevantes.
- Advierte diferencias entre métricas offline y efecto real en producción.

## Grafos y knowledge graphs

- Define nodos, aristas, tipos, direccionalidad, pesos, atributos, temporalidad y fuente de relaciones.
- Distingue grafo homogéneo, heterogéneo, temporal, bipartito, multigrafo o knowledge graph.
- Valida duplicados, entidades ambiguas, resolución de entidades, relaciones faltantes y sesgos de muestreo.
- Define tarea: clasificación de nodos, predicción de enlaces, ranking, detección de comunidades, recomendación, búsqueda o extracción de conocimiento.
- Evita leakage por particiones que filtren enlaces futuros o rompan la independencia entre train/test.
- Para knowledge graphs, documenta ontología, vocabulario, relaciones, reglas de validación y procedencia.
- No presentes relaciones inferidas como hechos confirmados sin validación.
