# Reglas específicas — Graph ML, grafos y knowledge graphs

## Alcance

Aplicar cuando la tarea involucre grafos, redes, entidades y relaciones, knowledge graphs, graph embeddings, GNN, link prediction, node classification, community detection, extracción de relaciones o razonamiento sobre grafos.

## Modelado de grafo

- Definir nodos, aristas, tipos, direccionalidad, pesos, atributos, temporalidad y fuente de relaciones.
- Distinguir grafo homogéneo, heterogéneo, temporal, bipartito, multigrafo o knowledge graph.
- Validar duplicados, entidades ambiguas, resolución de entidades, relaciones faltantes y sesgos de muestreo.
- Documentar criterios de construcción del grafo y supuestos de dominio.

## Tareas y evaluación

- Definir tarea: clasificación de nodos, predicción de enlaces, ranking, detección de comunidades, recomendación, búsqueda o extracción de conocimiento.
- Evitar leakage por particiones que rompan la independencia entre train/test o filtren enlaces futuros.
- Seleccionar métricas según tarea: accuracy, F1, AUROC, AUPRC, Hits@K, MRR, NDCG, modularidad u otras.
- Evaluar por subgrafos, tipos de nodos, tipos de relaciones, grado y componentes desconectados cuando aporte valor.

## Implementación

- Registrar esquema del grafo, proceso de construcción, features, particiones, modelo, hiperparámetros y versiones.
- Considerar escalabilidad, memoria, sampling, mini-batching, almacenamiento y actualización incremental.
- Para knowledge graphs, documentar ontología, vocabulario, relaciones, reglas de validación y procedencia.
- No presentar relaciones inferidas como hechos confirmados sin validación.
