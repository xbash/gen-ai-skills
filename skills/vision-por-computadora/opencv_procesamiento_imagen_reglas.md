# Reglas específicas — OpenCV y procesamiento digital de imágenes

## Alcance

Aplicar cuando la tarea involucre OpenCV, procesamiento clásico de imágenes, carga, transformación, filtrado, morfología, análisis, visualización, lectura/escritura de imágenes o procesamiento de video.

## Validaciones mínimas

- Validar que la ruta exista y que el archivo pueda abrirse.
- Verificar explícitamente si `cv2.imread()` retorna `None`.
- Controlar dimensiones, canales, tipo de dato, profundidad de bits y espacio de color.
- Recordar que OpenCV suele trabajar en BGR, no RGB, salvo conversión explícita.
- Validar formatos soportados, permisos de lectura/escritura y rutas de salida.
- En video, validar apertura de captura, FPS, resolución, codec, duración, frames nulos y cierre correcto de recursos.

## Procesamiento clásico

- Documentar conversiones: BGR/RGB, escala de grises, HSV/HSL, YCbCr, normalización, resizing, padding y cambios de tipo.
- Considerar histogramas, ecualización, operaciones aritméticas/lógicas, filtros lineales/no lineales, Fourier, morfología, bordes, blobs, contornos y convex hull según el caso.
- Para máscaras, evitar interpolación inadecuada; para etiquetas categóricas usar vecino más cercano.
- Para control dimensional, validar calibración, escala, distorsión, perspectiva y unidades.

## Buenas prácticas

- Separar carga, validación, preprocesamiento, procesamiento, visualización y guardado.
- Evitar sobrescribir archivos originales sin confirmación, respaldo o ruta de salida diferenciada.
- Evitar rutas hardcodeadas en la lógica.
- Liberar recursos de video/cámara y cerrar ventanas cuando aplique.
- Considerar memoria al procesar lotes grandes o videos largos.
- No agregar dependencias externas si OpenCV y librerías estándar bastan.

## Código

- Usar nombres en español para lógica propia.
- Mantener nombres de OpenCV y APIs en inglés.
- Incluir manejo de errores y mensajes claros.
- Incluir prueba mínima con una imagen pequeña o un video corto.
