# Reglas específicas — Métricas y evaluación en visión por computadora

## Regla general

Seleccionar métricas según tarea, objetivo y costo del error. Reportar resultados separados para entrenamiento, validación y prueba. No inventar resultados, comparativas ni benchmarks.

## Clasificación

- Accuracy: útil con clases balanceadas.
- Precision/recall/F1: preferibles con clases desbalanceadas o costos asimétricos.
- AUROC/AUPRC: útiles en clasificación binaria o multilabel, considerando distribución de clases.
- Matriz de confusión: necesaria para análisis de errores por clase.
- Calibración: relevante cuando la probabilidad será usada para decisión.

## Detección

- IoU: mide superposición entre predicción y ground truth.
- mAP: métrica estándar para detección; indicar umbral o rango de IoU.
- Precision/recall por clase: útil para falsos positivos y falsos negativos.
- Analizar errores por tamaño de objeto, oclusión, clase minoritaria, fondo y contexto.

## Segmentación

- IoU/mIoU: métrica principal para segmentación semántica.
- Dice/F1: útil en clases pequeñas o dominios médicos/satelitales.
- Pixel accuracy puede ser engañosa con fondo dominante.
- Considerar métricas de borde cuando los contornos sean relevantes.

## Keypoints y pose

- PCK, OKS, AP keypoints, error medio por punto o distancia normalizada según la tarea.
- Para 3D/6D pose, evaluar errores de rotación, traslación, ADD/ADD-S u otras métricas de dominio.
- Analizar errores por punto, oclusión, escala, ángulo, movimiento y subgrupo.

## OCR y Document AI

- CER: errores por carácter.
- WER: errores por palabra.
- Exact match: útil para campos estructurados.
- Precision/recall/F1 por campo: útil en extracción de documentos.

## Retrieval y tracking

- Retrieval: Recall@K, Precision@K, mAP, MRR y análisis de embeddings.
- Tracking: IDF1, MOTA, HOTA, switches de identidad y continuidad temporal.
- Analizar fallos por oclusiones, cruces, pérdida de detección y reidentificación.

## Modelos generativos y VLM

- Evaluar calidad, diversidad, fidelidad, grounding, sesgos, privacidad y uso responsable.
- No depender solo de métricas automáticas; incluir análisis cualitativo, revisión humana y riesgos.
