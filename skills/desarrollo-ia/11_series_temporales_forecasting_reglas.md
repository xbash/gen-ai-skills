# Reglas específicas — Series temporales y forecasting

## Alcance

Aplicar cuando la tarea involucre predicción temporal, forecasting, nowcasting, detección de cambios, anomalías temporales, modelos secuenciales, demanda, ventas, sensores, logs, finanzas, energía u otras series.

## Datos temporales

- Definir frecuencia, horizonte de predicción, granularidad, unidad de análisis, zona horaria, calendario y disponibilidad real de variables.
- Validar orden temporal, duplicados, gaps, cambios de frecuencia, valores faltantes, outliers, estacionalidad y cambios de régimen.
- Evitar leakage usando solo información disponible antes del momento de predicción.
- Documentar variables exógenas, rezagos, ventanas, agregaciones y supuestos de disponibilidad futura.

## Particiones y backtesting

- Preferir splits temporales, rolling windows, expanding windows o backtesting según el caso.
- No mezclar futuro en entrenamiento, validación o selección de hiperparámetros.
- Separar evaluación por horizonte, segmento, temporada, régimen y eventos especiales cuando aporte valor.
- Definir baseline temporal: naive, seasonal naive, media móvil u otro baseline simple.

## Modelos y métricas

- Elegir entre modelos estadísticos, ML tabular, deep learning o modelos híbridos según datos, horizonte, interpretabilidad y operación.
- Seleccionar métricas pertinentes: MAE, RMSE, MAPE, sMAPE, MASE, pinball loss, cobertura de intervalos o métricas de negocio.
- Evitar MAPE cuando existan ceros o valores cercanos a cero sin tratamiento explícito.
- Reportar incertidumbre o intervalos de predicción cuando sea relevante para la decisión.

## Implementación

- Separar generación de features temporales, entrenamiento, backtesting, inferencia y actualización.
- Registrar calendario, feriados, zona horaria, frecuencia, horizonte, features, modelo, versiones y métricas.
- Validar comportamiento ante datos tardíos, datos faltantes, cambios de frecuencia y nuevas entidades.
