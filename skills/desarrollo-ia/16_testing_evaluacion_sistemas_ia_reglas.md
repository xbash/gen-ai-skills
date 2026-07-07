# Reglas específicas — Testing y evaluación de sistemas de IA

## Alcance

Aplicar cuando la tarea involucre pruebas, evaluación continua, validación de calidad, regresión de modelos, regresión de prompts, golden datasets, suites de evaluación, revisión de outputs o criterios de aceptación para sistemas de IA.

## Estrategia de pruebas

- Definir qué se evalúa: datos, features, modelo, prompt, recuperación, agente, API, UI, inferencia, despliegue o sistema completo.
- Separar pruebas unitarias, pruebas de integración, pruebas end-to-end, pruebas de calidad del modelo y pruebas de seguridad.
- Crear casos normales, casos límite, casos adversarios, entradas vacías, formatos inválidos y ejemplos representativos del dominio.
- Mantener golden datasets o conjuntos de evaluación versionados cuando sea viable.

## Evaluación de modelos y prompts

- Definir métricas, umbrales, criterios humanos y condiciones de aprobación antes de comparar versiones.
- Registrar modelo, prompt, parámetros, dataset, fecha, herramientas, fuentes y versión del evaluador.
- Para LLM y sistemas generativos, evaluar exactitud, groundedness, utilidad, seguridad, consistencia, formato y rechazo adecuado.
- Evitar depender solo de evaluación automática cuando el criterio sea semántico, contextual o sensible.

## Regresión y monitoreo

- Comparar contra baseline, versión anterior o comportamiento esperado.
- Identificar regresiones por segmento, idioma, clase, fuente, tipo de usuario, longitud o condición de entrada.
- Automatizar pruebas de humo y pruebas críticas en CI/CD cuando corresponda.
- Monitorear desempeño, drift, errores, latencia, costos y calidad percibida en producción.

## Reporte

- Reportar hallazgos con severidad, evidencia, pasos de reproducción, impacto y recomendación.
- No declarar una mejora sin resultados comparables y alcance claro.
- Documentar limitaciones del conjunto de prueba y riesgos residuales.
