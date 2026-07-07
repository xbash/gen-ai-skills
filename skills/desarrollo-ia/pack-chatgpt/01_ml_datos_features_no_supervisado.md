# ML, datos, features y aprendizaje no supervisado

## Alcance

Usa estas reglas cuando la tarea involucre machine learning supervisado, no supervisado, clasificación, regresión, ranking básico, scoring, clustering, reducción de dimensionalidad, detección de anomalías, preparación de datos, feature engineering, evaluación o comparación de modelos.

## Datos y particiones

- Define unidad de análisis, variable objetivo, horizonte temporal, granularidad, fuente de datos y restricciones.
- Valida tipos, columnas obligatorias, nulos, duplicados, outliers, rangos, formatos, distribución, balance, etiquetas y consistencia temporal.
- Documenta fuente, licenciamiento, período, criterios de inclusión/exclusión y sensibilidad de datos.
- Separa train/valid/test evitando leakage por tiempo, entidad, cliente, paciente, usuario, predio, documento, transacción, fuente, duplicado o variable proxy del target.
- En problemas temporales, preferir particiones temporales; no mezclar futuro en entrenamiento.
- Mantén trazabilidad entre datos crudos, procesados, particiones, features, etiquetas, predicciones y artefactos.

## Features y transformaciones

- Separa transformaciones ajustadas en entrenamiento de transformaciones aplicadas a validación, test e inferencia.
- Registra imputación, normalización, encoding, selección de variables, agregaciones temporales y generación de embeddings.
- Evita features que no estén disponibles en el momento real de inferencia.
- Valida compatibilidad entre el esquema de entrenamiento y el esquema de inferencia.
- Para pipelines con scikit-learn u otros frameworks, evita leakage en escalado, imputación, selección de variables y encoding.

## Modelado supervisado

- Incluye baseline simple antes de modelos complejos cuando sea razonable.
- No asumas hiperparámetros por defecto sin verificar versión y documentación.
- Define pérdida, métrica objetivo, criterio de éxito y costo de error.
- Clasificación: accuracy, precision, recall, F1, AUROC, AUPRC, matriz de confusión y calibración cuando aplique.
- Regresión: MAE, RMSE, MAPE/sMAPE, R2, análisis de residuos y error por segmento.
- Ranking/scoring: NDCG, MAP, Recall@K, Precision@K o métricas de negocio cuando aplique.

## No supervisado, clustering y anomalías

- Define si el objetivo es explorar estructura, segmentar, reducir dimensionalidad, detectar anomalías o generar embeddings.
- No asumas que los clusters representan categorías reales sin validación externa o interpretación de dominio.
- Usa métricas internas con cautela: silhouette, Davies-Bouldin, Calinski-Harabasz u otras.
- Complementa con estabilidad, análisis visual, perfiles de cluster y validación por expertos cuando sea posible.
- En anomalías, define si la anomalía representa rareza estadística, error, fraude, evento crítico, cambio de distribución o caso no observado.
- No presentes anomalías como fraudes, fallas o eventos confirmados sin verificación adicional.

## Experimentos y reporte

- Registra seed, versión de datos, librerías, split, features, hiperparámetros, métricas, hardware y artefactos.
- No compares modelos sin igualdad razonable de datos, métrica, split, configuración y presupuesto.
- Recomienda validación cruzada, ablation o análisis de sensibilidad solo cuando aporte valor.
- Reporta resultados de train, valid, test y producción por separado cuando corresponda.
- Incluye limitaciones, riesgos, condiciones de fallo, sesgos y amenazas a la validez técnica.
