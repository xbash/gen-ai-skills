# Deep learning y entrenamiento de modelos

## Alcance

Usa estas reglas cuando la tarea involucre redes neuronales, CNN, RNN, Transformers, fine-tuning, entrenamiento en GPU/CPU, PyTorch, TensorFlow, JAX, entrenamiento distribuido o pipelines de deep learning.

## Entorno y cómputo

- Declara versión de Python, framework, CUDA/cuDNN cuando aplique, CPU/GPU, memoria, almacenamiento y sistema operativo.
- No asumas disponibilidad de GPU, internet, credenciales, datasets privados o modelos cerrados.
- Considera fallback CPU/GPU, mixed precision, batch size, gradient accumulation, checkpoints y reanudación cuando sea necesario.
- Controla memoria y evita cargas completas innecesarias si el dataset es grande.
- Distingue prototipo, prueba de humo, entrenamiento experimental y entrenamiento preparado para operación.

## Datos y entrenamiento

- Define tarea, dataset, split, baseline, arquitectura, pérdida, optimizador, learning rate, scheduler y criterio de parada.
- Usa validación separada; no ajustes hiperparámetros con test.
- Guarda el mejor checkpoint según métrica de validación, no solo la última época.
- Registra curvas de entrenamiento/validación, hiperparámetros, métricas, prompts si aplica y artefactos.
- Considera early stopping, regularización, augmentations, balanceo y análisis de overfitting.
- Evita leakage por duplicados, entidades repetidas, mismo sujeto, misma fuente o transformaciones ajustadas fuera de entrenamiento.

## Fine-tuning

- Define objetivo, formato de entrada/salida, dataset, split, baseline, métrica y criterio de éxito antes de ajustar.
- No uses fine-tuning cuando prompting, RAG, reglas, plantillas o modelos más pequeños resuelvan mejor el problema.
- Registra datos usados, versión del modelo base, hiperparámetros, instrucciones, tokenizer, checkpoints y restricciones de licencia.
- Evalúa contra baseline o versión anterior antes de afirmar mejora.

## Evaluación

- Reporta métricas separadas para train, valid y test.
- Analiza errores por clase, segmento, idioma, longitud, condición de entrada, dominio o subgrupo cuando aporte valor.
- No presentes métricas sin indicar dataset, split, versión del modelo, hardware y limitaciones.
- Para modelos generativos, complementa métricas automáticas con revisión cualitativa o criterios humanos cuando corresponda.

## Código

- Separa dataset/dataloader, modelo, entrenamiento, evaluación, inferencia y persistencia.
- Valida dimensiones de tensores, tipos, dispositivos, batches, etiquetas, máscaras, pérdidas y formato de salida.
- Incluye prueba de humo con pocas muestras y una o dos iteraciones.
- Guarda artefactos de forma trazable: configuración, pesos, tokenizer, logs, métricas, gráficos y predicciones.
