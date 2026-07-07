# Reglas específicas — Keypoints, landmarks y estimación de pose

## Alcance

Aplicar cuando la tarea involucre detección de puntos clave, pose humana, facial landmarks, hand pose, object pose, 6D pose, análisis de articulaciones, seguimiento de esqueletos o medición geométrica basada en puntos.

## Tareas y modelos

- Distinguir keypoints 2D, keypoints 3D, pose humana, landmarks faciales, manos, objetos rígidos y 6D pose.
- Considerar enfoques bottom-up y top-down para pose humana.
- Considerar modelos y herramientas como OpenPose, HRNet, MediaPipe, Detectron2 keypoints u otros cuando corresponda.
- Para object pose, declarar sistema de coordenadas, calibración de cámara, intrínsecos/extrínsecos y unidades.
- No inferir identidad, emociones o atributos sensibles desde rostros o cuerpos sin fundamento, consentimiento y límites claros.

## Datos y anotaciones

- Validar formato de keypoints, visibilidad, orden de puntos, sistema de coordenadas, normalización y puntos faltantes.
- Verificar correspondencia entre imagen, bounding boxes, keypoints, skeleton y clases.
- Evitar leakage por persona, cámara, video, sesión, ubicación, deporte, entorno o fuente.
- Documentar oclusiones, poses raras, puntos ambiguos, resolución y criterios de anotación.

## Evaluación

- Usar métricas adecuadas: PCK, OKS, AP keypoints, error medio por punto, distancia normalizada o métricas 3D cuando aplique.
- Analizar errores por articulación, oclusión, escala, ángulo, iluminación, ropa, fondo, movimiento y subgrupos relevantes.
- Para 6D pose, considerar errores de rotación, traslación, ADD/ADD-S u otras métricas de dominio.

## Implementación

- Separar detección, estimación de keypoints, postprocesamiento, tracking y visualización.
- Validar dimensiones, orden de puntos, skeleton, confianza por punto y thresholds.
- Incluir visualización de predicciones sobre ejemplos para inspección cualitativa.
