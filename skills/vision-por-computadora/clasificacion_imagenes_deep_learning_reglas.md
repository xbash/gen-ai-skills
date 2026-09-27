# Reglas específicas — Clasificación de imágenes y deep learning visual

## Alcance

Aplicar cuando la tarea involucre clasificación de imágenes, clasificación multilabel, entrenamiento o fine-tuning de CNN/ViT, transfer learning, análisis de datasets visuales o extracción de características con redes profundas.

## Fundamentos y arquitectura

- Definir si la tarea es clasificación binaria, multiclase, multilabel, jerárquica o abierta.
- Considerar CNN clásicas y modernas: AlexNet, VGG, ResNet, EfficientNet, MobileNet, ConvNeXt u otras cuando corresponda.
- Considerar arquitecturas con atención visual: Squeeze-and-Excitation, non-local features, ViT, Swin Transformer u otros modelos si el contexto lo justifica.
- Explicar convolución 2D, reutilización de pesos, activaciones, pooling, stride, flattening, normalización, regularización y residual connections cuando aporte valor.
- No asumir que una arquitectura más grande es mejor sin considerar datos, cómputo, latencia, generalización y criterio de éxito.

## Datos y entrenamiento

- Validar clases, etiquetas, balance, duplicados, resolución, canales, orientación, calidad y consistencia archivo-etiqueta.
- Evitar leakage por persona, cámara, ubicación, video, documento, paciente, producto, predio, lote o fuente.
- Separar train/valid/test de forma reproducible.
- Usar baseline simple antes de modelos complejos cuando sea razonable.
- Para transfer learning, definir qué capas congelar, qué capas ajustar, learning rate, scheduler, batch size y criterio de parada.
- Registrar pesos iniciales, arquitectura, seed, augmentations, tamaño de entrada, librerías, hardware, checkpoints y métricas.

## Evaluación

- Usar accuracy solo si las clases están razonablemente balanceadas.
- Considerar precision, recall, F1, AUROC/AUPRC, matriz de confusión, calibración y análisis por clase.
- Analizar errores por iluminación, dominio, cámara, resolución, clase minoritaria, oclusión, fondo y ambigüedad visual.
- No inventar métricas, resultados, benchmarks ni comparativas.

## Implementación

- Separar dataset/dataloader, transformaciones, modelo, entrenamiento, evaluación, inferencia y persistencia.
- Validar dimensiones, normalización, canales RGB/BGR, labels, batch size y dispositivo CPU/GPU.
- Incluir prueba de humo con pocas imágenes y una o dos iteraciones antes de entrenamiento completo.

## Tooling y librerías recomendadas (2025-2026)

- **torchvision:** datasets, transforms v2 y modelos preentrenados para PyTorch; `torchvision.transforms.v2` reemplaza la API anterior con soporte mejorado para bounding boxes y máscaras.
- **timm (PyTorch Image Models):** biblioteca de referencia para modelos de clasificación: ResNet, EfficientNet, ViT, Swin, ConvNeXt, DeiT y cientos más con pesos preentrenados; `timm.create_model("resnet50", pretrained=True, num_classes=N)`.
- **albumentations:** biblioteca de aumentaciones de imagen con API consistente para clasificación, detección y segmentación; más rápida que torchvision transforms para augmentaciones complejas.
- **CLIP / zero-shot:** modelos CLIP (OpenAI) y variantes (SigLIP, OpenCLIP) permiten clasificación zero-shot con descripciones textuales de clases; útil cuando el dataset es pequeño o las clases cambian.

## Imágenes multiespectrales y satelitales

- Las imágenes de satélite como Sentinel-2 tienen 13 bandas espectrales (no solo RGB); las bandas NIR, SWIR y Red Edge contienen información que el ojo humano no percibe pero que mejora la clasificación de vegetación, suelo, agua y áreas quemadas.
- Para clasificación con imágenes multiespectrales: adaptar el primer layer de la CNN para aceptar N canales (`in_channels=N`) en lugar de 3; inicializar los pesos extra con la media de los canales RGB o desde cero.
- Composiciones de falso color (NIR-R-G o SWIR-NIR-R) permiten usar arquitecturas preentrenadas en RGB sobre datos satelitales sin modificar la arquitectura.
- Evitar leakage por escena, fecha de captura, tile o cobertura espacial al separar train/valid/test en datos satelitales.
