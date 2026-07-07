# Reglas especificas - Econometria aplicada y analisis de datos

## Alcance
Regresiones, series de tiempo, paneles, clasificacion, modelos predictivos, inferencia causal, encuestas, experimentos, datos de negocio, scoring, forecasting y analisis estadistico aplicado.

## Reglas
- Define pregunta, variable dependiente, variables explicativas, unidad de analisis, poblacion, periodo, fuente y criterio de exito.
- Distingue prediccion, explicacion, inferencia causal, clasificacion, ranking y decision operacional.
- Valida calidad: nulos, duplicados, outliers, codificacion, fechas, unidades, cambios de definicion, sesgos de seleccion y representatividad.
- Separa entrenamiento, validacion y prueba cuando sea predictivo; respeta tiempo, grupo o entidad si corresponde.
- Evita leakage, variables post-tratamiento, target leakage y seleccion de muestra que anticipe informacion futura.
- Verifica supuestos cuando apliquen: linealidad, independencia, homocedasticidad, autocorrelacion, multicolinealidad, estacionariedad, exogeneidad e identificacion.
- Reporta incertidumbre: errores estandar, intervalos, p-valores, intervalos predictivos, metricas predictivas o bootstrap segun corresponda.
- Para causalidad, declara tratamiento, resultado, estimando, confusores, estrategia de identificacion y amenazas a la validez.
- Para modelos predictivos, revisa baseline, calibracion, estabilidad, drift, interpretabilidad, fairness y costo de error.
- No presentes correlacion como causalidad ni metricas predictivas como impacto economico sin puente analitico.

## Reproducibilidad
Fija semillas cuando aplique, registra version de datos/librerias, separa carga-limpieza-modelamiento-evaluacion-graficos e incluye prueba minima con subconjunto de datos.
