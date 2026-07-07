# Reglas específicas — Datos, features, experimentos y reproducibilidad

## Alcance

Aplicar transversalmente cuando la tarea requiera ingesta, preparación, validación, feature engineering, entrenamiento, evaluación, benchmarking, comparación de modelos o reporte técnico de resultados.

## Datos

- Documentar fuente, licenciamiento, período, granularidad, unidad de análisis, variables, criterios de inclusión/exclusión y restricciones.
- Validar calidad: nulos, duplicados, outliers, formatos, rangos, distribución, balance, etiquetas, codificación y consistencia temporal.
- Mantener trazabilidad entre datos crudos, datos procesados, particiones, features, etiquetas, predicciones y artefactos derivados.
- Evitar leakage por entidad, tiempo, documento, usuario, fuente, variable proxy del target, duplicados o transformaciones ajustadas fuera del set de entrenamiento.
- Identificar datos personales, sensibles, confidenciales, biométricos o sujetos a restricciones de uso.

## Features y transformaciones

- Separar transformaciones ajustadas en entrenamiento de transformaciones aplicadas a validación, test e inferencia.
- Registrar reglas de imputación, normalización, encoding, selección de variables, agregaciones temporales y generación de embeddings.
- Evitar features que no estén disponibles en el momento real de inferencia.
- Validar compatibilidad entre el esquema de entrenamiento y el esquema de inferencia.

## Experimentos

- Definir tarea, baseline, variables controladas, métricas, criterio de éxito y presupuesto de cómputo.
- Registrar seeds, configuración, hiperparámetros, versión de datos, versión de código, librerías, hardware y resultados.
- No comparar modelos sin igualdad razonable de datos, métrica, split, configuración y presupuesto.
- Recomendar validación cruzada, backtesting, ablation o análisis de sensibilidad solo cuando aporte valor y sea viable.

## Reporte

- Separar resultados de entrenamiento, validación, test y producción cuando corresponda.
- Incluir limitaciones, riesgos, condiciones de fallo, sesgos y amenazas a la validez técnica.
- No inventar métricas ni completar resultados ausentes.
- Guardar artefactos necesarios para reproducir o auditar el resultado: configuración, datos procesados, modelo, predicciones, logs y métricas.
