# Diseño metodológico, datos y medición

## Propósito

Aplicar criterios transversales para formular una investigación, elegir un diseño coherente y revisar datos, muestreo, variables, medición y amenazas a la validez.

## Usar cuando

La tarea requiera convertir un problema en pregunta, objetivos, hipótesis cuando corresponda, unidades de análisis, datos, variables, muestra, protocolo y criterios de éxito.

## No usar cuando

El objetivo principal sea interpretar resultados ya obtenidos, revisar fuentes sin diseñar el estudio o comunicar un resultado sin tomar decisiones metodológicas.

## Entradas mínimas

- Problema, justificación, pregunta y objetivos.
- Unidad de análisis, población, contexto y alcance temporal, geográfico o institucional cuando corresponda.
- Tipo de estudio, uso previsto, restricciones y recursos.
- Datos o fuente de datos, comparadores, baseline o contrafactual cuando sean necesarios.

## Diseño y datos

- Elige el diseño por su capacidad para responder la pregunta, no por familiaridad con una técnica.
- Distingue investigación cuantitativa, cualitativa, mixta, documental, experimental, observacional, evaluativa y aplicada según el caso.
- No fuerces hipótesis en estudios exploratorios ni causalidad en diseños que solo permiten describir asociaciones.
- En métodos mixtos, justifica la combinación, su secuencia, el punto de integración y el tratamiento de resultados divergentes.
- En investigación aplicada, separa validez analítica, viabilidad operativa, adopción e impacto real.

## Variables, medición y muestreo

- Define constructos, variables, categorías, indicadores, escalas e instrumentos de forma comprensible.
- Declara la operacionalización, unidad de medida, procedimiento de recolección y posibles errores de medición.
- Revisa confiabilidad y validez de medición cuando la pregunta y el instrumento lo requieran; no las trates como equivalentes.
- Justifica población, muestra, selección de casos o participantes, sesgos de selección y representatividad cuando corresponda.
- Considera tamaño muestral, potencia, precisión o suficiencia según el diseño y la evidencia disponible.

## Calidad, cobertura y faltantes

- Revisa procedencia, permisos, cobertura, granularidad, unidades, tipos, rangos, duplicados, claves y consistencia temporal.
- Distingue no aplica, no medido, no respuesta, pérdida, censura, invalidez y ausencia estructural cuando la evidencia lo permita.
- No afirmes MCAR, MAR o MNAR por intuición; decláralos como hipótesis hasta evaluarlos.
- Justifica exclusiones, imputaciones y transformaciones; evita leakage entre entrenamiento, particiones, periodos o unidades relacionadas.
- Analiza quiénes quedan incluidos o excluidos y realiza sensibilidad cuando una decisión pueda alterar los resultados.

## Validez

Considera validez interna, externa y de constructo, confiabilidad, credibilidad, transferibilidad, robustez, confundentes, sesgos de selección, errores de medición y amenazas específicas del diseño.

## Salida recomendada

Entrega problema y pregunta, objetivos, diseño, datos y muestra, variables o categorías, protocolo, riesgos de validez, criterios de éxito y decisiones pendientes. No conviertas el módulo en un manual disciplinar o estadístico exhaustivo.

## Datos geoespaciales y series de tiempo espaciales

Aplicar cuando la unidad de análisis tenga coordenadas (celda-grilla, punto, polígono) o cuando los datos provengan de fuentes raster, vectoriales o satelitales.

### CRS y granularidad

- Declarar el sistema de referencia de coordenadas (CRS) de cada fuente: EPSG, unidad, datum y proyección. Las fuentes con CRS distintos deben reproyectarse a un CRS común antes de cualquier join o análisis conjunto.
- Documentar granularidad espacial (resolución de celda o escala del polígono) y temporal (diaria, mensual) como parte de la definición de la unidad de análisis.

### Leakage espaciotemporal

- En datos con autocorrelación espacial, el random split invalida la evaluación: celdas vecinas comparten contexto, por lo que el modelo aprende del entorno del punto de prueba.
- Separar train/valid/test simultáneamente por bloque espacial (tile, comuna, región) **y** por período cronológico. Nunca asignar celdas contiguas a conjuntos distintos sin separación espacial explícita.
- Spatial cross-validation: usar bloques espaciales no contiguos como folds (blocked spatial CV). Para series de tiempo: expanding window o blocked time series split.

### Eventos raros y desbalance extremo

- Declarar la tasa de la clase positiva (p. ej., 1 ignición en 1000 celdas-día). Justificar métricas de evaluación proporcionales al desbalance: F1, PR-AUC, Average Precision. Evitar accuracy como métrica primaria en clases muy desbalanceadas.
- Aplicar sobremuestreo (SMOTE, RandomOverSampler) solo en el conjunto de entrenamiento, nunca en validación ni test.
