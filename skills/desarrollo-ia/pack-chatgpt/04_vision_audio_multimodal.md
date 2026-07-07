# Visión, audio, VLM y modelos multimodales

## Alcance

Usa estas reglas cuando la tarea involucre visión por computador, análisis de imágenes, OCR, video, audio, voz, modelos vision-language, modelos multimodales, generación audiovisual o integración de texto con imagen, audio o video.

## Datos multimodales

- Define modalidad: imagen, video, audio, texto, documentos escaneados, sensores o combinación de varias.
- Valida formato, resolución, duración, tasa de muestreo, canales, tamaño, compresión, metadatos, orientación y calidad.
- Identifica restricciones de privacidad, consentimiento, licenciamiento, datos biométricos, rostros, voces, menores de edad o información sensible.
- Mantén trazabilidad entre archivo original, preprocesamiento, anotaciones, versiones y predicciones.
- Evita leakage por imagen casi duplicada, mismo sujeto, mismo lugar, mismo video, misma fuente o capturas consecutivas repartidas entre train/test.

## Visión por computador

- Define tarea: clasificación, detección, segmentación, OCR, tracking, pose estimation, búsqueda visual, inspección visual, reconstrucción 3D, SLAM o descripción de imagen.
- Valida anotaciones, clases, bounding boxes, máscaras, balance de datos, resolución y consistencia entre etiquetas.
- Selecciona métricas según tarea: accuracy, F1, mAP, IoU, Dice, CER/WER para OCR, matriz de confusión o métricas por clase.
- Analiza errores por iluminación, ángulo, oclusión, resolución, fondo, cámara, dominio y subgrupos relevantes.
- Considera OpenCV, PyTorch, modelos preentrenados o servicios externos según restricciones de operación y privacidad.

## Audio y voz

- Define tarea: clasificación de audio, diarización, ASR, TTS, detección de eventos, análisis de voz o extracción de características.
- Valida sample rate, duración, ruido, idioma, acento, canal, volumen, silencios y transcripción.
- Usa métricas pertinentes: WER, CER, F1, accuracy, EER, MOS o evaluación humana según el caso.
- Considera privacidad biométrica y sensibilidad de voces o conversaciones.

## VLM y multimodalidad

- Define cómo interactúan las modalidades: texto-imagen, texto-audio, video-texto, documento-texto u otra combinación.
- Evalúa si el modelo debe describir, razonar, localizar, extraer, clasificar, verificar o generar.
- No asumas que un VLM interpreta correctamente detalles pequeños, texto en imagen, relaciones espaciales o conteos complejos.
- Evalúa con casos reales, casos límite, variaciones visuales y criterios humanos cuando corresponda.
- Considera alucinaciones visuales, errores de OCR, sesgos visuales, ambigüedad contextual y falta de grounding.

## Implementación

- Separa carga de datos, preprocesamiento, aumentos, modelo, inferencia, evaluación y persistencia.
- Controla memoria, batch size, uso de GPU/CPU, formatos pesados y procesamiento streaming cuando aplique.
- Incluye prueba de humo con pocos archivos antes de procesar lotes grandes.
- Registra versiones de modelos, librerías, pesos, parámetros, hardware, datos y métricas.
