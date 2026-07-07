# Reglas específicas — Deep Learning

## Alcance
Aplicar cuando la tarea involucre redes neuronales, CNN, RNN, Transformers, fine-tuning, entrenamiento en GPU, PyTorch, TensorFlow, JAX u otros frameworks de deep learning.

## Entorno y cómputo
- Declarar versión de Python, framework, CUDA/cuDNN cuando aplique, CPU/GPU, memoria y almacenamiento.
- No asumir disponibilidad de GPU, internet, credenciales, datasets privados o modelos cerrados.
- Considerar fallback CPU/GPU, mixed precision, batch size, gradient accumulation, checkpoints y reanudación cuando sea necesario.
- Controlar memoria y evitar cargas completas innecesarias si el dataset es grande.

## Entrenamiento
- Definir seed, split, baseline, arquitectura, pérdida, optimizador, learning rate, scheduler y criterio de parada.
- Usar validación separada; no ajustar hiperparámetros con test.
- Guardar mejor checkpoint según métrica de validación, no solo última época.
- Registrar curvas de entrenamiento/validación, hiperparámetros, métricas y artefactos.
- Considerar early stopping y regularización cuando exista riesgo de overfitting.

## Evaluación
- Reportar métricas separadas para train/valid/test.
- Analizar errores por clase, segmento o condición de entrada cuando aporte valor.
- No presentar métricas sin indicar dataset, split, versión del modelo, hardware y limitaciones.

## Código
- Separar dataset/dataloader, modelo, entrenamiento, evaluación, inferencia y persistencia.
- Validar dimensiones de tensores, tipos, dispositivos, batches, etiquetas y pérdidas.
- Incluir prueba de humo con pocas muestras y una o dos iteraciones.
