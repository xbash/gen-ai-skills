# Reglas específicas — VLM, modelos generativos visuales y datos sintéticos

## Alcance

Aplicar cuando la tarea involucre modelos visión-lenguaje, descripción de imágenes, visual question answering, grounding, OCR visual con VLM, generación de imágenes, autoencoders, VAE, GAN, CycleGAN, GauGAN, difusión, datos sintéticos o augmentación generativa.

## VLM y razonamiento multimodal

- Definir si el modelo debe describir, clasificar, localizar, extraer texto, responder preguntas, verificar, razonar o generar.
- No asumir que un VLM interpreta correctamente detalles pequeños, conteos, relaciones espaciales, texto en imagen o eventos ambiguos.
- Evaluar con casos reales, casos límite, variaciones visuales y revisión humana cuando corresponda.
- Considerar grounding, trazabilidad, alucinaciones visuales, errores de OCR, sesgos visuales y falta de contexto.
- No usar VLM para identificación biométrica o inferencias sensibles sin consentimiento, base legal y controles.

## Modelos generativos visuales

- Distinguir VAE, GAN, conditional GAN, CycleGAN, GauGAN, diffusion, inpainting, super-resolution y generación sintética.
- Definir objetivo: augmentación, simulación, diseño, restauración, anonimización, traducción de dominio o generación creativa.
- Validar que los datos sintéticos no introduzcan sesgos, artefactos, leakage o falsa diversidad.
- No presentar imágenes generadas como datos reales.
- Evaluar fidelidad, diversidad, utilidad para la tarea, privacidad y riesgos de memorizar datos sensibles.

## Datos sintéticos y augmentación

- Documentar fuente, prompt, seed, modelo, versión, parámetros y filtros aplicados.
- Separar datos sintéticos de datos reales en trazabilidad, evaluación y reporte.
- Evaluar impacto real en validación/test no sintéticos antes de afirmar mejora.
- Considerar dominio, iluminación, cámara, geometría, texturas y distribución real.

## Evaluación y seguridad

- Complementar métricas automáticas con revisión cualitativa y criterios humanos.
- Analizar errores por subgrupo, clase, dominio, estilo, calidad de imagen y ambigüedad.
- Proteger derechos, privacidad, consentimiento, licenciamiento y uso responsable de imágenes.
