# Reglas específicas — Retrieval visual, metric learning y búsqueda por similitud

## Alcance

Aplicar cuando la tarea involucre búsqueda por similitud visual, image retrieval, deduplicación de imágenes, identificación de productos, reidentificación, embeddings visuales, metric learning, redes siamesas, triplet loss, contrastive learning o hashing visual.

## Representaciones visuales

- Definir si se busca similitud por objeto, escena, estilo, clase, identidad visual, marca, textura, documento o producto.
- Considerar ConvNet/ViT como extractores de características cuando aplique.
- Registrar modelo extractor, capa o embedding usado, dimensión, normalización y distancia.
- No asumir que similitud de embeddings equivale a igualdad factual o identidad.

## Metric learning

- Considerar redes siamesas, tripletas, quadruplets, contrastive loss, triplet loss y variantes cuando exista supervisión adecuada.
- Definir estrategia de pares positivos/negativos, hard negative mining y balance de clases.
- Validar leakage por instancias casi duplicadas, mismo objeto, misma persona, misma cámara o misma fuente entre train/test.
- Para DeepHashing o representaciones binarias, evaluar pérdida de información, colisiones, velocidad y memoria.

## Indexación y búsqueda

- Definir métrica: cosine similarity, Euclidean, dot product u otra.
- Considerar índices aproximados o exactos según volumen, latencia y precisión requerida.
- Registrar versión del índice, fecha de datos, filtros, metadatos y política de actualización.
- Para búsqueda visual en producción, considerar fallback, umbral mínimo, explicabilidad y revisión humana cuando el riesgo sea alto.

## Visualización y análisis

- Usar PCA, t-SNE o UMAP como herramientas exploratorias, no como prueba concluyente de separabilidad.
- Analizar errores por dominio, iluminación, resolución, fondo, clase minoritaria, duplicados y casos ambiguos.

## Métricas

- Usar Recall@K, Precision@K, mAP, MRR, curvas precision-recall o evaluación humana según el caso.
- Evaluar con consultas reales, negativos difíciles y casos límite.
