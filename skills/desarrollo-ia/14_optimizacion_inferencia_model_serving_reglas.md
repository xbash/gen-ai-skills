# Reglas específicas — Optimización de inferencia y model serving

## Alcance

Aplicar cuando la tarea involucre servir modelos, reducir latencia, bajar costos, optimizar memoria, acelerar inferencia, exportar modelos, cuantizar, destilar, podar, compilar o desplegar runtimes especializados.

## Requisitos de servicio

- Definir latencia objetivo, throughput, concurrencia, tamaño de batch, disponibilidad, costo máximo y entorno de ejecución.
- Distinguir inferencia online, batch, streaming, edge, mobile, servidor GPU, CPU o aceleradores especializados.
- Validar límites de memoria, tamaño de modelo, cold start, carga de artefactos, red y serialización.
- Establecer baseline de rendimiento antes de optimizar.

## Técnicas de optimización

- Considerar batching, caching, precomputación, paralelismo, quantization, distillation, pruning, compilation, ONNX, TensorRT u otros runtimes según el caso.
- No aplicar optimizaciones que cambien precisión o comportamiento sin evaluación comparativa.
- Medir impacto en métricas de calidad, latencia p50/p95/p99, memoria, throughput, costo y estabilidad.
- Registrar configuración, hardware, runtime, versión del modelo y datos de benchmark.

## Serving y confiabilidad

- Definir contrato de entrada/salida, timeouts, manejo de errores, retries, límites de tamaño y fallback.
- Considerar escalado horizontal, colas, autoscaling, warmed instances, health checks y circuit breakers.
- Separar preprocesamiento, inferencia, postprocesamiento y logging para diagnosticar cuellos de botella.
- Proteger modelos, endpoints, dependencias, artefactos y logs.

## Validación

- Incluir pruebas de equivalencia o tolerancia entre modelo original y optimizado.
- Ejecutar pruebas de carga con datos representativos y casos límite.
- Monitorear degradación de calidad, drift, errores, latencia y costos tras desplegar.
