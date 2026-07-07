# Reglas específicas — Despliegue y operación de modelos de visión

## Alcance

Aplicar cuando la tarea involucre inferencia, API, batch, edge, exportación de modelos, optimización, monitoreo o paso desde experimento a operación.

## Requisitos del entorno

- Declarar lenguaje, versión, framework, dependencias, sistema operativo, CPU/GPU, memoria, almacenamiento y drivers.
- No asumir disponibilidad de GPU, internet, APIs externas, credenciales o datasets privados.
- Validar rutas, pesos del modelo, formatos de entrada/salida, permisos y disponibilidad de cámara o stream si aplica.
- Distinguir prototipo, piloto, producción, edge, mobile, servidor local y cloud.

## Inferencia

- Documentar tamaño de entrada, normalización, preprocesamiento y postprocesamiento.
- Considerar latencia, throughput, batch size, memoria, resolución, tamaño del modelo y costo de inferencia.
- Separar preprocesamiento, modelo, postprocesamiento, serialización de respuesta y logging.
- Incluir prueba mínima de inferencia con una imagen, video corto o lote pequeño.

## Exportación y optimización

- Considerar ONNX, TensorRT, TFLite, CoreML u otros solo si corresponde.
- No asumir compatibilidad automática entre operadores, versiones y hardware.
- Justificar cuantización, pruning o distillation por restricciones reales de latencia, memoria, costo o edge.
- Validar que el modelo exportado conserve métricas aceptables respecto del modelo original.

## Monitoreo

- Monitorear latencia, errores, consumo de recursos, calidad de entrada, distribución de clases, drift, tasa de nulos y degradación de métricas.
- Registrar versión del modelo, configuración, fecha de despliegue, datos de validación y criterios de rollback.
- Considerar privacidad, retención de imágenes, anonimización y acceso controlado.

## Operación

- Definir criterios de éxito, fallback, rollback y frecuencia de reevaluación.
- Documentar riesgos: sesgo, baja generalización, cambios de dominio, cámaras nuevas, iluminación, resolución y datos sensibles.
