# Reglas específicas — Machine Learning supervisado

## Alcance
Aplicar cuando la tarea involucre clasificación, regresión, ranking, scoring, predicción tabular, series temporales supervisadas o evaluación de modelos supervisados.

## Usar cuando

La tarea entrena o evalúa modelos supervisados. No usar como módulo principal para redes neuronales especializadas, forecasting con validación temporal central o recomendación como producto.

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

## Datos geoespaciales y leakage espacial

Aplicar cuando la unidad de análisis tenga coordenadas (celda-grilla, polígono, punto georeferenciado).

- **Leakage por contigüidad espacial:** separar train/valid/test por bloque espacial (tile, cuadrícula, comuna) además de por período cronológico. Celdas vecinas comparten autocorrelación espacial (mismo microclima, vegetación, pendiente), por lo que un random split o un split solo por predio introduce leakage aunque no haya identificadores comunes.
- **Blocked spatial cross-validation:** usar bloques espaciales no contiguos como folds. Para datos espacio-temporales: combinar bloque espacial + expanding window temporal. No usar k-fold aleatorio en datos con autocorrelación espacial.
- **Métricas para eventos raros geoespaciales:** cuando la clase positiva es < 2 % (p. ej., ignición en celda-día), preferir AUPRC y Average Precision sobre AUROC; AUROC puede ser engañosamente alto con clases muy desbalanceadas. Reportar PR-curve junto a ROC-curve.
