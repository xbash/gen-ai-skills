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
