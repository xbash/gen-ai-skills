# Reglas específicas — Video, tracking y análisis de movimiento

## Alcance

Aplicar cuando la tarea involucre video, seguimiento de objetos, optical flow, background subtraction, detección de cambios de escena, conteo, reidentificación, análisis temporal, streams o procesamiento de fotogramas.

## Datos de video

- Declarar FPS, resolución, codec, duración, cámara, iluminación, movimiento, compresión y sincronización.
- Validar apertura del video/stream, frames nulos, timestamps, drops, codec y cierre correcto de recursos.
- Evitar leakage por frames consecutivos o clips de la misma escena repartidos entre train/test.
- Considerar privacidad, retención y anonimización si aparecen personas, rostros, patentes o lugares sensibles.

## Tracking clásico y moderno

- Considerar background subtraction, Meanshift, Camshift, optical flow, Kalman, particle filters, SORT, DeepSORT, ByteTrack u otros según la tarea.
- Distinguir detección por frame, asociación temporal, reidentificación y suavizado de trayectoria.
- Documentar umbrales de detección, IoU, confianza, max age, min hits y criterios de asociación.
- Analizar oclusiones, cruces, cambios de escala, motion blur, cámara móvil y pérdida de identidad.

## Video analytics

- Para conteo, definir línea/región, dirección, criterio de cruce, duplicados y tasa de error aceptable.
- Para cambio de escena, definir sensibilidad, ventanas temporales y falsos positivos esperados.
- Para acciones o eventos, definir ventana temporal, etiquetas, duración, contexto y ambigüedad.

## Métricas y operación

- Usar IDF1, MOTA, HOTA, switches de identidad, FP/FN, continuidad temporal y métricas de evento según corresponda.
- Considerar latencia, throughput, procesamiento streaming/batch, GPU/CPU, buffer y resiliencia ante cortes.
- Incluir prueba con video corto antes de procesar streams o lotes grandes.
