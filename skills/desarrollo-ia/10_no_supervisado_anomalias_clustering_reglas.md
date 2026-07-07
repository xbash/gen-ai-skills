# Reglas específicas — Aprendizaje no supervisado, clustering y anomalías

## Alcance

Aplicar cuando la tarea involucre clustering, reducción de dimensionalidad, detección de anomalías, segmentación exploratoria, análisis de estructura latente, embeddings no supervisados o descubrimiento de patrones.

## Datos y preparación

- Definir unidad de análisis, variables disponibles, escala, distribución, valores faltantes, outliers y restricciones.
- Separar variables usadas para modelar de variables usadas solo para interpretación o validación externa.
- Estandarizar, normalizar o transformar variables cuando el método sea sensible a escala o distancia.
- Evitar incluir identificadores, fechas codificadas o proxies triviales que distorsionen la estructura.

## Clustering y reducción de dimensionalidad

- Elegir método según forma esperada de grupos, tamaño de datos, métrica de distancia, interpretabilidad y costo.
- No asumir que los clusters representan categorías reales sin validación externa o interpretación de dominio.
- Usar métricas internas con cautela: silhouette, Davies-Bouldin, Calinski-Harabasz u otras.
- Complementar con estabilidad, análisis visual, perfiles de cluster y validación por expertos cuando sea posible.

## Detección de anomalías

- Definir qué significa anomalía: rareza estadística, error, fraude, evento crítico, cambio de distribución o caso no observado.
- Considerar contaminación del dataset, tasa esperada de anomalías, costo de falso positivo y costo de falso negativo.
- Evaluar con etiquetas si existen; si no, usar revisión manual, ranking de casos y análisis de sensibilidad.
- No presentar anomalías como fraudes, fallas o eventos confirmados sin verificación adicional.

## Implementación

- Registrar preprocesamiento, variables, distancia, hiperparámetros, semillas, versión de datos y artefactos.
- Incluir visualizaciones o tablas de perfil cuando ayuden a interpretar resultados.
- Validar estabilidad ante cambios razonables de parámetros, muestra o variables.
