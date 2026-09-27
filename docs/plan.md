# Plan de enriquecimiento — vision-por-computadora

**Fecha:** 2026-09-26  
**Estado:** Pendiente de ejecución  
**Ejecutor esperado:** Haiku (razonamiento bajo — solo insertar, no razonar)

---

## Reglas de ejecución

- Leer el archivo antes de modificar. Confirmar que el ancla existe tal cual está escrita.
- Agregar el contenido AL FINAL del archivo, después de la última línea existente.
- No eliminar, reordenar ni modificar ninguna línea existente.
- Respetar el estilo Markdown del archivo (encabezados `##`, listas con `-`, bloques de código con triple backtick).
- No hacer commit, no hacer push.
- Al terminar, ejecutar `git diff --stat` y reportar resultado.

---

## Sub-plan 1 — `skills/vision-por-computadora/clasificacion_imagenes_deep_learning_reglas.md`

**Ancla a verificar:** `## Implementación`  
**Acción:** agregar al final del archivo.

```markdown

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
```

---

## Sub-plan 2 — `skills/vision-por-computadora/deteccion_objetos_reglas.md`

**Ancla a verificar:** `## Implementación`  
**Acción:** agregar al final del archivo.

```markdown

## Ecosistema moderno de detección (2025-2026)

### Ultralytics / YOLO

- **YOLOv8 / YOLOv11 (Ultralytics):** familia de modelos one-stage estándar en 2024-2025; API unificada para detección, segmentación, pose y clasificación: `model = YOLO("yolov8n.pt"); model.train(data="dataset.yaml")`.
- Formatos de exportación: ONNX, TensorRT, CoreML, TFLite desde `model.export(format="onnx")`.
- Para fine-tuning, definir `dataset.yaml` con rutas, número de clases y nombres; el formato de anotación es YOLO txt (xywh normalizado).

### Detectores transformer

- **DINO / Grounding DINO:** detectores basados en transformer con capacidad zero-shot; Grounding DINO detecta objetos descritos en lenguaje natural.
- **RT-DETR:** detector transformer en tiempo real; alternativa a YOLO cuando se necesita mayor precisión con latencia aceptable.

### Librería supervision

- `supervision` (Roboflow): herramienta de postprocesamiento y visualización para detección; manejo de anotaciones, NMS, tracking, métricas y visualización con una API simple.
- Compatible con Ultralytics, Hugging Face y cualquier modelo que retorne bounding boxes.
```

---

## Sub-plan 3 — `skills/vision-por-computadora/segmentacion_reglas.md`

**Ancla a verificar:** `## Implementación`  
**Acción:** agregar al final del archivo.

```markdown

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
```

---

## Sub-plan 4 — `skills/vision-por-computadora/vlm_generativa_datos_sinteticos_reglas.md`

**Ancla a verificar:** `## Evaluación y seguridad`  
**Acción:** agregar al final del archivo.

```markdown

## VLMs actuales y modelos de generación (2025-2026)

### Modelos visión-lenguaje (VLM) de referencia

| Modelo | Organización | Notas |
|---|---|---|
| GPT-4V / GPT-4o | OpenAI | Multimodal de propósito general; fuerte en razonamiento visual y OCR |
| Claude 3.5/3.7 Sonnet | Anthropic | Bueno en análisis de documentos, diagramas y código visual |
| Gemini 1.5/2.0 Pro | Google | Contexto largo; útil para video e imágenes múltiples |
| LLaVA / LLaVA-NeXT | Community | Open source; base para fine-tuning en dominios específicos |
| PaliGemma / PaliGemma 2 | Google | Eficiente; diseñado para fine-tuning en tareas visuales |
| InternVL2 | Shanghai AI Lab | Fuerte en benchmarks multilingües y científicos |
| Qwen-VL / Qwen2-VL | Alibaba | Multilingüe; buen desempeño en documentos y texto en imagen |

- Para tareas de descripción, VQA o extracción estructurada: evaluar con casos reales antes de elegir modelo.
- Para fine-tuning de VLMs open source: LLaVA y PaliGemma son los puntos de entrada más accesibles.

### Modelos de generación de imágenes de referencia

- **Stable Diffusion XL (SDXL) / SD3:** generación de alta calidad con control por prompt y ControlNet.
- **FLUX (Black Forest Labs):** arquitectura basada en flow matching; alta fidelidad a prompts de texto.
- **Imagen 3 / DALL-E 3:** modelos propietarios de alta calidad para generación creativa.

### Aplicaciones en imágenes satelitales y científicas

- Los VLMs actuales tienen desempeño limitado en imágenes satelitales (no son parte del pretraining principal); fine-tuning con imágenes etiquetadas mejora resultados en clasificación de cobertura, detección de cambios y descripción de escenas.
- Para generación de datos sintéticos satelitales: CycleGAN y difusión condicional son enfoques viables para traducción de dominio (ej. simulación de imágenes en diferentes condiciones atmosféricas o estaciones).
- Documentar siempre si una imagen fue generada sintéticamente; no mezclar con datos reales sin registro explícito.
```

---

## Criterios de aceptación globales

1. `git diff --stat` muestra exactamente 4 archivos modificados.
2. Ningún archivo perdió contenido (solo líneas `+`, ninguna `-` en contenido previo).
3. Los 4 archivos terminan con newline final.
4. No hay commit, no hay push.
