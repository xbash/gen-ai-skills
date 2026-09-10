# Visión por computadora

Dominio para diseñar, construir, evaluar, desplegar y operar soluciones de visión por computadora y visión artificial aplicada, cubriendo imágenes, video, OCR, visión industrial, aprendizaje profundo visual, visión 3D, VLM y modelos generativos.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_cv.md` | Instrucción personalizada base para visión por computadora y visión artificial. |
| `clasificacion_imagenes_deep_learning_reglas.md` | Clasificación de imágenes, CNN, ResNet, ViT, transfer learning y fine-tuning. |
| `deteccion_objetos_reglas.md` | Detección de objetos, YOLO, Faster R-CNN, RetinaNet, FCOS, CenterNet y evaluación de boxes. |
| `segmentacion_reglas.md` | Segmentación semántica, instancias, panóptica, U-Net, DeepLab, Mask R-CNN, SAM/SAM2. |
| `keypoints_pose_estimacion_reglas.md` | Keypoints, landmarks, pose humana, manos, rostros, object pose y pose 6D. |
| `retrieval_visual_metric_learning_reglas.md` | Búsqueda por similitud, embeddings visuales, redes siamesas, triplet loss y DeepHashing. |
| `opencv_procesamiento_imagen_reglas.md` | OpenCV, procesamiento clásico, filtros, morfología, histogramas, contornos y video básico. |
| `ocr_document_ai_reglas.md` | OCR, Document AI, formularios, tablas, campos estructurados y códigos 1D/2D. |
| `metricas_cv_reglas.md` | Métricas de clasificación, detección, segmentación, keypoints, OCR, retrieval, tracking y VLM. |
| `despliegue_operacion_cv_reglas.md` | Inferencia, APIs, edge, exportación, optimización, monitoreo y operación de modelos visuales. |
| `captacion_optica_iluminacion_reglas.md` | Cámaras, óptica, iluminación, color, calibración, sensores especiales e imagen industrial. |
| `vision_industrial_robotica_reglas.md` | Inspección industrial, control de calidad, robótica, bin picking, drones, medicina, satélite y AR. |
| `vision_3d_lidar_open3d_reglas.md` | Visión 3D, LiDAR, depth maps, point clouds, Open3D, ICP, RANSAC, meshing y metrología. |
| `video_tracking_movimiento_reglas.md` | Video, tracking, optical flow, background subtraction, SORT/DeepSORT/ByteTrack y análisis temporal. |
| `vlm_generativa_datos_sinteticos_reglas.md` | VLM, grounding, VQA, VAE, GAN, difusión, datos sintéticos y generación visual. |
| `checklist_codigo_cv.md` | Checklist transversal para código, datos, modelos, evaluación y despliegue de visión. |

## Uso recomendado

Para ChatGPT, Claude, Gemini, Qwen, GLM u otros LLMs:

1. Cargar `instrucciones_base_cv.md` como instrucción principal.
2. Agregar los archivos específicos según la tarea visual.
3. Incluir `checklist_codigo_cv.md` cuando se pidan scripts, notebooks, entrenamiento, inferencia o despliegue.


## Principios del dominio

- Organizar la solución por problema visual: clasificación, detección, segmentación o keypoints/pose.
- Cuidar captura, iluminación, óptica y calidad de datos antes de culpar al modelo.
- Evitar leakage visual por cámara, persona, ubicación, documento, escena, video o tiempo.
- Evaluar con métricas adecuadas y ejemplos cualitativos.
- Proteger privacidad visual, biometría, documentos y datos sensibles.
- Validar inferencia, latencia, drift visual y condiciones reales de operación.
