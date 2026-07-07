# Reglas específicas — Backend, APIs y servicios

## Alcance

Aplicar cuando la tarea involucre servicios backend, APIs REST/GraphQL/gRPC, autenticación, autorización, integración, procesamiento batch, workers, colas, jobs programados, servicios internos o lógica de negocio server-side.

## Diseño de servicio

- Declarar lenguaje, framework, versión, entorno, dependencias y restricciones.
- Definir contrato de entrada/salida, códigos de estado, errores esperados, validaciones y formato de respuesta.
- Separar controladores, lógica de negocio, acceso a datos, configuración, clientes externos y utilidades.
- Mantener reglas de negocio fuera de controladores o adaptadores cuando sea razonable.
- Considerar idempotencia en endpoints, workers o procesos que puedan reintentarse.
- Considerar paginación, filtros, límites, timeouts, reintentos, backoff y manejo de fallas externas.

## Validación y seguridad

- Validar entradas, tipos, límites, formatos, permisos y estados esperados.
- No confiar en datos del cliente ni en validaciones solo de frontend.
- Manejar errores sin exponer stack traces, tokens, rutas sensibles, consultas internas o datos personales.
- No hardcodear secretos, URLs, tokens ni credenciales.
- Aplicar autenticación, autorización y mínimo privilegio cuando corresponda.
- Registrar eventos útiles con correlación, request id o trace id cuando aplique.

## Integraciones y procesos

- Para servicios externos, declarar contrato, timeouts, reintentos, errores, rate limits y fallback.
- Para colas o workers, considerar duplicados, orden, idempotencia, dead-letter queues y reanudación.
- Para procesos batch, definir entrada, salida, tamaño, partición, logs, checkpoint y criterio de éxito.
- Evitar operaciones masivas sin límites, paginación o control de recursos.

## Validación mínima

- Prueba de humo del endpoint, worker o proceso.
- Casos básicos: entrada válida, entrada inválida, error esperado, permisos insuficientes y dependencia externa fallida si aplica.
- Verificar logs, manejo de errores, contrato de respuesta y ausencia de secretos en salidas.
