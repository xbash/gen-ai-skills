# Checklist — Código, datos y sistemas de visión por computadora

Usar antes de entregar, ejecutar o revisar código, notebooks, datasets, pipelines, modelos, inferencias o despliegues de visión por computadora.

## Alcance

- [ ] Tarea visual definida: clasificación, detección, segmentación, keypoints, OCR, tracking, 3D, retrieval u otra.
- [ ] Dataset, fuente, licenciamiento y restricciones identificados.
- [ ] Formato, resolución, canales, clases, anotaciones y criterios de etiquetado documentados.
- [ ] Métrica objetivo, baseline y criterio de éxito definidos.
- [ ] Ambiente, framework, versiones, CPU/GPU y dependencias declarados.

## Datos y privacidad

- [ ] Imágenes/videos/anotaciones corruptas, duplicadas o inconsistentes revisadas.
- [ ] Split train/valid/test sin leakage por persona, cámara, ubicación, video, documento, fuente o tiempo.
- [ ] Datos personales, biométricos o sensibles protegidos.
- [ ] Aumentaciones aplicadas solo donde corresponde.
- [ ] Trazabilidad entre dato original, anotación, transformación, predicción y artefacto.

## Código y entrenamiento

- [ ] Configuración separada de lógica.
- [ ] Rutas, formatos, dimensiones, canales, labels, máscaras, boxes o keypoints validados.
- [ ] Manejo de errores y logs útiles.
- [ ] Prueba de humo con pocas muestras incluida.
- [ ] Seeds, hiperparámetros, versiones, pesos, checkpoints y métricas registrados.
- [ ] No se inventan resultados, tiempos, costos ni comparativas.

## Evaluación

- [ ] Métricas alineadas con la tarea.
- [ ] Resultados separados para train/valid/test.
- [ ] Análisis de errores por clase, condición visual, cámara, iluminación, resolución y subgrupo.
- [ ] Ejemplos cualitativos revisados.
- [ ] Limitaciones, sesgos y condiciones de fallo documentados.

## Despliegue

- [ ] Requisitos de inferencia, latencia, throughput, memoria y hardware considerados.
- [ ] Preprocesamiento y postprocesamiento documentados.
- [ ] Exportación/optimización validada contra el modelo original si aplica.
- [ ] Monitoreo de drift visual, calidad de entrada, latencia, errores y degradación considerado.
- [ ] Rollback, fallback, privacidad y retención de imágenes definidos cuando aplique.
