# Reglas específicas — Machine Learning supervisado

## Alcance
Aplicar cuando la tarea involucre clasificación, regresión, ranking, scoring, predicción tabular, series temporales supervisadas o evaluación de modelos supervisados.

## Datos y particiones
- Definir unidad de análisis, variable objetivo, horizonte temporal, granularidad, fuente de datos y restricciones.
- Validar tipos de datos, columnas obligatorias, valores nulos, duplicados, outliers, codificación de categorías y consistencia temporal.
- Separar train/valid/test evitando leakage por tiempo, entidad, cliente, paciente, usuario, predio, documento, transacción o fuente.
- En problemas temporales, preferir particiones temporales cuando corresponda; no mezclar futuro en entrenamiento.
- Documentar desbalance de clases y sesgos de muestreo.

## Modelado
- Incluir baseline simple antes de modelos complejos cuando sea razonable.
- No asumir hiperparámetros por defecto sin verificar versión y documentación.
- Separar preprocesamiento ajustado en entrenamiento de transformaciones aplicadas a validación/test.
- Para pipelines con scikit-learn u otros frameworks, evitar leakage en escalado, imputación, selección de variables y encoding.

## Métricas
- Clasificación: accuracy, precision, recall, F1, AUROC, AUPRC, matriz de confusión y calibración cuando aplique.
- Regresión: MAE, RMSE, MAPE/sMAPE, R², análisis de residuos y error por segmento.
- Ranking/scoring: NDCG, MAP, Recall@K, Precision@K o métricas de negocio cuando aplique.
- Elegir métricas según costo de falsos positivos/falsos negativos y objetivo del sistema.

## Código
- Validar dataset, columnas, tipos, nulos, duplicados y dimensión antes de entrenar.
- Registrar seed, versión de librerías, split, features, hiperparámetros, métricas y artefactos.
- Incluir prueba de humo con muestra pequeña antes de entrenamiento completo.
- No inventar resultados, comparativas ni tiempos.
