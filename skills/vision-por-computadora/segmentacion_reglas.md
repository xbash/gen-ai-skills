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

## Tooling y librerías recomendadas (2025-2026)

- **segmentation-models-pytorch (SMP):** biblioteca con arquitecturas U-Net, FPN, DeepLab, LinkNet y backbones intercambiables (ResNet, EfficientNet, timm); `smp.Unet(encoder_name="resnet34", in_channels=3, classes=N)`.
- **mmsegmentation (OpenMMLab):** framework completo para segmentación semántica e instancias; mayor flexibilidad que SMP para investigación, mayor curva de aprendizaje.
- **supervision:** visualización y evaluación de máscaras de segmentación; compatible con SAM, Mask R-CNN y modelos Ultralytics seg.
- **SAM2 (Meta):** modelo fundacional promptable para segmentación de imágenes y video; útil para asistencia de anotación y segmentación interactiva sin fine-tuning.

## Segmentación en imágenes satelitales

- Las imágenes multiespectrales de satélite (Sentinel-2, Landsat) permiten segmentación temática usando índices espectrales como máscara inicial: NDVI (vegetación), NDWI (agua), NBR/dNBR (área quemada), seguida de refinamiento con U-Net o SAM.
- Para segmentación de área quemada: calcular dNBR pre/post evento como aproximación inicial; usar U-Net con bandas B8A, B11, B12 de Sentinel-2 para entrenamiento supervisado si se dispone de ground truth.
- Adaptar `in_channels` del encoder para imágenes multiespectrales (más de 3 bandas); SMP permite configurar esto directamente.
- Separar train/valid/test por tile espacial o por fecha para evitar leakage en datos satelitales con superposición espacial.
