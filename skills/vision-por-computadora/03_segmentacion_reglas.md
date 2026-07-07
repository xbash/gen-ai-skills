# Reglas específicas — Segmentación de imágenes

## Alcance

Aplicar cuando la tarea involucre segmentación semántica, segmentación de instancias, segmentación panóptica, máscaras binarias/multiclase, anotación de regiones, modelos fundacionales de segmentación o evaluación de máscaras.

## Modelos y enfoques

- Distinguir segmentación semántica, de instancias y panóptica.
- Considerar modelos clásicos y deep learning: umbralización, Otsu, GMM/EM, FCN, U-Net, DeepLab, Mask R-CNN y variantes.
- Considerar SAM/SAM2 u otros modelos promptable/fundacionales cuando el caso requiera segmentación interactiva, zero-shot o asistencia de anotación.
- Considerar segmentación débilmente supervisada cuando las etiquetas densas sean costosas.
- No presentar una máscara generada automáticamente como ground truth sin revisión o validación.

## Datos y anotaciones

- Validar correspondencia uno a uno entre imagen y máscara.
- Verificar dimensiones, orientación, resolución, canales y alineación espacial entre imagen y máscara.
- Revisar valores válidos de clase: fondo, clases, ignore index y etiquetas desconocidas.
- Validar máscaras vacías, corruptas, mal codificadas, desplazadas o con clases fuera del catálogo.
- Separar train/valid/test evitando leakage por persona, paciente, cámara, documento, escena, predio, serie temporal o fuente.
- Documentar si la tarea es binaria, multiclase, multilabel, instancias o panóptica.

## Preprocesamiento

- Aplicar transformaciones geométricas de manera consistente a imagen y máscara.
- Evitar interpolación inadecuada en máscaras de clase; para máscaras categóricas preferir vecino más cercano.
- Aplicar aumentaciones solo a entrenamiento, salvo justificación.
- Documentar resizing, padding, normalización y política de aspect ratio.

## Evaluación

- Usar métricas acordes: IoU/mIoU, Dice/F1, pixel accuracy, boundary metrics y errores por clase cuando corresponda.
- Pixel accuracy puede ser engañosa si domina el fondo.
- Analizar fallos cualitativos: bordes, clases pequeñas, objetos solapados, oclusiones, falsos positivos y falsos negativos.
- Reportar métricas separadas para train/valid/test.
- No inventar resultados ni comparativas.

## Implementación

- Separar configuración, dataset, transformaciones, modelo, pérdida, entrenamiento, evaluación e inferencia.
- Validar dimensiones de tensores, número de clases, formato de máscara y función de pérdida.
- Incluir prueba de humo con pocas imágenes y máscaras.
