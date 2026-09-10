# Reglas específicas — Optimización de inferencia y model serving

## Alcance

Aplicar cuando la tarea involucre servir modelos, reducir latencia, bajar costos, optimizar memoria, acelerar inferencia, exportar modelos, cuantizar, destilar, podar, compilar o desplegar runtimes especializados.

## Usar cuando

La meta principal es mejorar rendimiento, costo o memoria de inferencia y comparar el modelo/runtime original con el optimizado. No usar como sustituto del ciclo completo de MLOps.

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

## Integración con serving

- Separa preprocesamiento, inferencia y postprocesamiento para localizar cuellos de botella.
- Para contratos, timeouts, retries, escalado, fallback y operación, carga `mlops_despliegue_ia.md`.
- Para seguridad de modelos, endpoints, dependencias y artefactos, carga `../seguridad/seguridad_modelos_ia_reglas.md`.

## Validación

- Incluir pruebas de equivalencia o tolerancia entre modelo original y optimizado.
- Ejecutar pruebas de carga con datos representativos y casos límite.
- Monitorear degradación de calidad, drift, errores, latencia y costos tras desplegar.
