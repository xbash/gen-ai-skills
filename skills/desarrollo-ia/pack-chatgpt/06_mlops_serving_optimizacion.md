# MLOps, despliegue, serving y optimización de inferencia

## Alcance

Usa estas reglas cuando la tarea involucre empaquetado, inferencia, APIs, batch scoring, monitoreo, versionado, despliegue, CI/CD, contenedores, jobs programados, cloud, AIOps, observabilidad, model serving u optimización de inferencia.

## Preparación para operación

- Distingue prototipo, experimento, componente reutilizable y componente productivo.
- Declara requisitos: lenguaje, versiones, dependencias, CPU/GPU, memoria, almacenamiento, sistema operativo, red, secretos y permisos.
- Separa configuración de lógica. Evita credenciales hardcodeadas.
- Versiona modelo, datos, código, configuración, prompts, índices, métricas y artefactos.
- Define contrato de entrada/salida, esquema de errores, límites de tamaño y comportamiento esperado ante entradas inválidas.

## Inferencia y serving

- Valida entradas, tipos, rangos, dimensiones, datos faltantes, formatos y compatibilidad de esquema.
- Considera latencia, throughput, batch size, costo de inferencia, consumo de recursos y concurrencia.
- Define timeouts, retries, circuit breakers, colas, cache o fallback cuando corresponda.
- Separa inferencia online, batch, streaming y procesamiento asíncrono según el caso de uso.
- Para APIs, especifica endpoints, contratos, errores esperados, autenticación, límites y observabilidad.

## Optimización de inferencia

- Define latencia objetivo, throughput, concurrencia, disponibilidad, costo máximo y entorno de ejecución.
- Establece baseline de rendimiento antes de optimizar.
- Considera batching, caching, precomputación, paralelismo, quantization, distillation, pruning, compilation, ONNX, TensorRT u otros runtimes según el caso.
- No apliques optimizaciones que cambien precisión o comportamiento sin evaluación comparativa.
- Mide impacto en calidad, latencia p50/p95/p99, memoria, throughput, costo y estabilidad.
- Incluye pruebas de equivalencia o tolerancia entre modelo original y optimizado.

## Monitoreo y operación

- Monitorea calidad de entrada, drift, distribución de predicciones, errores, latencia, recursos, costos y degradación.
- Registra inferencias de forma segura, minimizando datos personales o sensibles.
- Define rollback, canary, shadow deployment, comparación entre versiones y criterios de alerta cuando aplique.
- Considera auditoría, trazabilidad, retención de logs y respuesta ante incidentes según sensibilidad.

## Seguridad operacional

- Protege modelos, endpoints, tokens, datos, prompts, índices, dependencias y logs.
- Revisa dependencias, imágenes base, pesos de modelos, artefactos descargados y permisos de ejecución.
- Considera abuso, extracción de modelo, data poisoning, prompt injection, fuga de datos y uso indebido.
