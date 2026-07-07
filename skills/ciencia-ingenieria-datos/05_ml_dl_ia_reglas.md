# Reglas especificas - Machine learning, deep learning e IA aplicada a datos

## Alcance
ML supervisado/no supervisado, deep learning, modelos probabilisticos, recomendadores, ranking, deteccion de anomalias, IA generativa aplicada al analisis de datos, embeddings, feature stores y evaluacion de modelos.

## Reglas
- Define tarea: clasificacion, regresion, clustering, ranking, recomendacion, anomalias, forecasting, generacion, extraccion o matching.
- Establece baseline simple antes de modelos complejos cuando sea razonable.
- Separa train/validation/test, respeta tiempo/grupos/entidades y previene leakage por variable, persona, documento, evento o periodo.
- Selecciona metricas alineadas al objetivo, costo de error, umbral operacional y distribucion de clases.
- Registra seeds, hiperparametros, versiones, hardware, datos, features, splits, metricas, predicciones y artefactos.
- Considera desbalance, calibracion, interpretabilidad, fairness, robustez, drift, incertidumbre y analisis de errores.
- En deep learning, revisa arquitectura, batch size, memoria, checkpoints, early stopping, regularizacion, augmentations y overfitting.
- En embeddings o modelos generativos, evalua recuperacion, factualidad, sesgos, privacidad, toxicidad, trazabilidad y revision humana cuando aplique.
- En feature stores, declara definiciones, owner, freshness, backfill, consistencia offline/online y control de versiones.
- No propongas IA generativa si una regla, consulta, estadistica o modelo simple resuelve mejor el problema.

## Validacion minima
Tarea, baseline, datos, particiones, metricas, artefactos, analisis de errores y criterio de despliegue o uso claramente definidos.
