# Checklist — Código, pipelines y sistemas de IA

Usar esta lista al construir, corregir o revisar scripts, notebooks, pipelines, servicios, agentes, integraciones o despliegues de IA.

## Alcance

- [ ] Objetivo técnico definido.
- [ ] Usuario, entrada, salida y contexto de uso identificados.
- [ ] Supuestos, restricciones, dependencias y entorno declarados.
- [ ] Tarea, dataset, métrica, baseline y criterio de éxito identificados cuando aplique.

## Código

- [ ] Cambios mínimos y localizados si se corrige un error.
- [ ] No se refactoriza sin solicitud explícita o necesidad justificada.
- [ ] Nombres claros; español para lógica propia salvo convenciones técnicas.
- [ ] Configuración, rutas, parámetros, hiperparámetros y secretos separados de la lógica.
- [ ] Funciones o módulos separados cuando aportan claridad, prueba o reutilización.
- [ ] Manejo de errores y mensajes útiles.
- [ ] Logs útiles sin secretos, datos personales ni datos sensibles.
- [ ] Comentarios mínimos para decisiones no obvias.

## Datos y validación

- [ ] Rutas, archivos, columnas, tipos, dimensiones, nulos, rangos y formatos validados.
- [ ] Licenciamiento, privacidad y sensibilidad de datos revisados.
- [ ] Split train/valid/test o estrategia equivalente definida sin leakage.
- [ ] Seeds, versiones y artefactos registrados.
- [ ] Baseline simple considerado.
- [ ] Prueba de humo incluida antes de ejecuciones costosas.

## Modelos y evaluación

- [ ] Métricas alineadas con la tarea y el costo de error.
- [ ] Hiperparámetros, prompts, configuración y versiones registrados.
- [ ] Resultados separados por train/valid/test o por entorno de evaluación.
- [ ] Análisis de error por clase, segmento, subgrupo o caso límite cuando aporte valor.
- [ ] Comparación contra baseline o versión anterior cuando se afirme mejora.
- [ ] Limitaciones, sesgos, riesgos y condiciones de fallo documentados.

## Integración y operación

- [ ] Contrato de entrada/salida definido.
- [ ] Manejo de timeouts, límites de tamaño, reintentos y errores esperado.
- [ ] Costos, latencia, throughput, memoria y CPU/GPU considerados.
- [ ] Monitoreo, alertas, drift, calidad de entrada y degradación considerados.
- [ ] Estrategia de rollback o fallback definida cuando aplique.
- [ ] Endpoints, tokens, modelos, prompts, índices y dependencias protegidos.
