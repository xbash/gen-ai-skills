# Reglas específicas — MLOps, despliegue y operación de IA

## Alcance

Aplicar cuando la tarea involucre empaquetado, inferencia, APIs, batch scoring, monitoreo, versionado, despliegue, CI/CD, contenedores, jobs programados, observabilidad u operación de modelos.

## Usar cuando

El modelo o sistema se prepara para integración, despliegue u operación. No usar como módulo principal para optimizar el modelo sin cambios de ciclo de vida u operación.

## Preparación para operación

- Distinguir prototipo, experimento, componente reutilizable y componente productivo.
- Declarar requisitos: lenguaje, versiones, dependencias, CPU/GPU, memoria, almacenamiento, sistema operativo, red, secretos y permisos.
- Separar configuración de lógica. Evitar credenciales hardcodeadas.
- Versionar modelo, datos, código, configuración, prompts, índices, métricas y artefactos.
- Definir contrato de entrada/salida, esquema de errores, límites de tamaño y comportamiento esperado ante entradas inválidas.

## Inferencia y serving

- Validar entradas, tipos, rangos, dimensiones, datos faltantes, formatos y compatibilidad de esquema.
- Considerar latencia, throughput, batch size, costo de inferencia, consumo de recursos y concurrencia.
- Definir timeouts, retries, circuit breakers, colas, cache o fallback cuando corresponda.
- Separar inferencia online, batch, streaming y procesamiento asíncrono según el caso de uso.

## Monitoreo y operación

- Recomendar monitoreo de calidad de entrada, drift, distribución de predicciones, errores, latencia, recursos, costos y degradación.
- Registrar inferencias de forma segura, minimizando datos personales o sensibles.
- Definir estrategia de rollback, canary, shadow deployment, comparación entre versiones y criterios de alerta cuando aplique.
- Considerar auditoría, trazabilidad y retención de logs según sensibilidad del sistema.

## Seguridad

Para amenazas, controles de permisos, supply chain y respuesta ante incidentes, carga `../seguridad/seguridad_modelos_ia_reglas.md`. Este módulo conserva solo los requisitos operacionales.
