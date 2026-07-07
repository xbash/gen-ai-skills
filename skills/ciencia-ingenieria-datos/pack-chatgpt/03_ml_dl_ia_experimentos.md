# ML, deep learning, IA y experimentos

## Alcance
ML supervisado/no supervisado, deep learning, recomendadores, ranking, anomalias, embeddings, IA generativa aplicada a datos, feature stores, evaluacion, reproducibilidad y experimentos.

## Reglas
- Define tarea: clasificacion, regresion, clustering, ranking, recomendacion, anomalias, forecasting, generacion, extraccion o matching.
- Establece baseline simple antes de modelos complejos cuando sea razonable.
- Separa train/validation/test y respeta tiempo, grupos, entidades, documentos o usuarios para prevenir leakage.
- Selecciona metricas alineadas al objetivo, costo de error, umbral operacional y distribucion de clases.
- Registra seeds, hiperparametros, versiones, hardware, datos, features, splits, metricas, predicciones y artefactos.
- Considera desbalance, calibracion, interpretabilidad, fairness, robustez, drift, incertidumbre y analisis de errores.
- En deep learning, revisa arquitectura, batch size, memoria, checkpoints, early stopping, regularizacion y overfitting.
- En embeddings o modelos generativos, evalua retrieval, factualidad, sesgos, privacidad, toxicidad, trazabilidad y revision humana.
- En feature stores, declara definiciones, owner, freshness, backfill, consistencia offline/online y versionado.
- En comparaciones, usa el mismo split, metrica, preprocesamiento y protocolo para todos los metodos.

## Validacion minima
Tarea, baseline, datos, particiones, metricas, protocolo, artefactos, errores y criterio de uso claramente definidos.
