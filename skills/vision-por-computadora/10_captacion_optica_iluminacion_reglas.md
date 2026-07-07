# Reglas específicas — Captación, óptica, iluminación y formación de imagen

## Alcance

Aplicar cuando la tarea involucre cámaras, sensores, óptica, iluminación, exposición, espacios de color, calibración, adquisición de imágenes, visión industrial, multiespectral, hiperespectral, IR, UV, rayos X u otras bandas.

## Formación de imagen

- Definir tipo de imagen: RGB, escala de grises, indexada, multispectral, hyperspectral, profundidad, térmica, rayos X u otra.
- Documentar resolución, formato, compresión, bit depth, canales, espacio de color y metadatos.
- Considerar RGB, HSV/HSL, CMYK, YCbCr u otros espacios según objetivo.
- Validar conversión de color y rango de valores antes de entrenar o medir.

## Cámara y óptica

- Declarar tipo de cámara, lente, distancia focal, apertura, exposición, profundidad de campo, enfoque, resolución y frame rate.
- Considerar distorsión óptica, perspectiva, calibración intrínseca/extrínseca y escala.
- En aplicaciones industriales, considerar lentes telecéntricos cuando se requiera medición dimensional robusta.
- Para cámaras de alta velocidad o alta resolución, considerar almacenamiento, iluminación, sincronización y ancho de banda.

## Iluminación

- La iluminación puede resolver problemas que no conviene delegar al modelo.
- Documentar tipo de iluminación: LED, anular, coaxial, backlight, dark field, dome, lineal, estructurada o exterior.
- Considerar respuesta espectral, sombras, reflejos, saturación, brillo, variaciones ambientales y estabilidad.
- Para visión industrial, validar iluminación con muestras reales y condiciones de producción.

## Espectro y sensores especiales

- Para IR/UV/multiespectral/hiperespectral, declarar bandas, calibración, normalización, iluminación y sensibilidad del sensor.
- Para rayos X u otras bandas, considerar seguridad, regulación, calibración y privacidad.
- No mezclar datos de bandas distintas sin documentar alineación, calibración y transformación.

## Validación

- Incluir imágenes de prueba con variaciones de iluminación, enfoque, ángulo, distancia, exposición y fondo.
- Documentar condiciones de captura y reproducibilidad del setup.
