# Reglas específicas — OCR, lectura de códigos y Document AI

## Alcance

Aplicar cuando la tarea involucre OCR, extracción de texto, documentos escaneados, formularios, boletas, contratos, tablas, campos estructurados, lectura de códigos 1D/2D, QR/barcodes o Document AI.

## Datos y privacidad

- Considerar que documentos pueden contener datos personales o sensibles; aplicar minimización, anonimización y control de acceso.
- No exponer documentos, rutas sensibles, credenciales, imágenes o texto sensible en logs/salidas.
- Validar licenciamiento, consentimiento y finalidad de uso del dataset.
- Separar train/valid/test evitando leakage por documento, emisor, persona, plantilla, fecha, lote o fuente.

## Calidad documental

- Validar resolución, orientación, idioma, codificación, contraste, ruido, blur, skew, recorte, páginas faltantes y rotación.
- Documentar preprocesamiento: binarización, deskew, denoise, crop, resize, normalización, segmentación de regiones y orden de lectura.
- En documentos multipágina, conservar trazabilidad por archivo, página, región y campo.
- Para códigos 1D/2D, validar tamaño, contraste, quiet zone, distorsión, daño, rotación y formato esperado.

## Evaluación

- Para texto libre: CER, WER y exact match cuando corresponda.
- Para extracción estructurada: precision/recall/F1 por campo, exact match por campo, tasa de campos vacíos y errores críticos.
- Para tablas: evaluar estructura, celdas, filas/columnas y contenido.
- Para códigos, evaluar tasa de lectura, falsos positivos, tiempo de lectura y robustez ante rotación/ruido.
- Analizar errores por caracteres, idioma, orientación, baja resolución, campos ambiguos, sellos, firmas, tablas o escritura manual.

## Código

- Separar carga, preprocesamiento, OCR/lectura, postprocesamiento, validación y exportación.
- Validar rutas, formatos, páginas, encoding, idioma y dependencias.
- Incluir logs útiles sin filtrar datos sensibles.
- Incluir prueba mínima con documentos sintéticos o no sensibles.
