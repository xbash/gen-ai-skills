# Reglas específicas — Detección de objetos

## Alcance

Aplicar cuando la tarea involucre localizar objetos mediante bounding boxes, detección one-stage/two-stage, datasets de detección, inferencia, fine-tuning, tracking asociado o exportación de detectores.

## Modelos y enfoques

- Distinguir detectores two-stage: R-CNN, Fast/Faster R-CNN, Mask R-CNN cuando aplique.
- Distinguir detectores one-stage: YOLO, SSD, RetinaNet, EfficientDet, CenterNet, CornerNet y variantes.
- Considerar modelos anchor-based y anchor-free como FCOS cuando corresponda.
- Considerar dilated/atrous convolution, feature pyramids y backbones según tamaño de objeto y resolución.
- No organizar la decisión solo por popularidad del modelo; considerar latencia, precisión, tamaño de objeto, hardware, datos y operación.
- Para one-shot/few-shot detection, declarar restricciones, clases nuevas, ejemplos disponibles y límites esperados.

## Datos y anotaciones

- Validar estructura del dataset: imágenes, anotaciones, clases, formato y archivo de configuración.
- Validar bounding boxes: coordenadas, normalización, ancho/alto cero o negativo, clases inexistentes, labels vacíos y cajas fuera de imagen.
- Detectar imágenes corruptas, duplicadas, ilegibles, con extensión inconsistente o metadatos problemáticos.
- Evitar leakage por cámara, ubicación, fecha, escena, persona, documento, predio, serie temporal o fuente de captura.
- Separar train/valid/test de forma reproducible y documentada.

## Entrenamiento e inferencia

- No asumir hiperparámetros por defecto sin verificar versión y documentación.
- Usar prueba de humo con pocas imágenes antes del entrenamiento completo.
- Registrar pesos iniciales, tamaño de imagen, batch size, epochs, seed, versión de librería, hardware, métricas y artefactos.
- En inferencia, documentar umbral de confianza, NMS/IoU, tamaño de entrada, formato de salida y postprocesamiento.

## Evaluación

- Reportar mAP indicando umbral o rango de IoU, precision, recall, curvas PR y errores por clase.
- Analizar falsos positivos, falsos negativos, clases minoritarias, objetos pequeños, oclusiones, objetos solapados y ejemplos visuales.
- No inventar métricas, resultados, tiempos ni comparativas.

## Implementación

- Separar configuración, dataset, augmentations, modelo, entrenamiento, evaluación, inferencia y exportación.
- Validar rutas, dependencias, GPU/CPU, archivos YAML/config, imágenes y labels.
- Incluir manejo de errores, logs útiles y prueba mínima.
