# Seguridad, testing y evaluación de sistemas de IA

## Alcance

Usa estas reglas cuando la tarea involucre seguridad de modelos, prompts, agentes, RAG, datos, endpoints, dependencias, evaluación continua, regresión de modelos, regresión de prompts, golden datasets, suites de evaluación o criterios de aceptación.

## Riesgos principales

- Considera prompt injection, jailbreaks, data exfiltration, model extraction, data poisoning, evasión adversarial, fuga de datos, abuso de herramientas y manipulación de contexto.
- Revisa riesgos de supply chain: modelos descargados, pesos, datasets, notebooks, imágenes de contenedor, paquetes, scripts y repositorios externos.
- Identifica datos personales, sensibles, secretos, credenciales y documentos confidenciales antes de procesar o registrar información.
- No afirmes que un sistema es seguro sin pruebas, límites y alcance explícitos.

## Controles técnicos

- Minimiza datos enviados a modelos externos y aplica controles de acceso.
- Separa secretos de código, prompts, logs, notebooks y configuraciones versionadas.
- Valida entradas y salidas de herramientas con esquemas estrictos cuando sea posible.
- Limita permisos de agentes, herramientas, filesystem, red, ejecución de comandos y acciones destructivas.
- Sanitiza o aísla contenido recuperado en RAG para reducir prompt injection.
- Define denegación segura cuando falte contexto, permisos o confianza suficiente.

## Estrategia de pruebas

- Define qué se evalúa: datos, features, modelo, prompt, recuperación, agente, API, UI, inferencia, despliegue o sistema completo.
- Separa pruebas unitarias, integración, end-to-end, calidad del modelo, seguridad y operación.
- Crea casos normales, casos límite, casos adversarios, entradas vacías, formatos inválidos y ejemplos representativos del dominio.
- Mantén golden datasets o conjuntos de evaluación versionados cuando sea viable.
- Automatiza pruebas de humo y pruebas críticas en CI/CD cuando corresponda.

## Evaluación de modelos y prompts

- Define métricas, umbrales, criterios humanos y condiciones de aprobación antes de comparar versiones.
- Registra modelo, prompt, parámetros, dataset, fecha, herramientas, fuentes y versión del evaluador.
- Para LLM y sistemas generativos, evalúa exactitud, groundedness, utilidad, seguridad, consistencia, formato y rechazo adecuado.
- Para RAG, evalúa recuperación y generación por separado.
- Evita depender solo de evaluación automática cuando el criterio sea semántico, contextual o sensible.

## Regresión y monitoreo

- Compara contra baseline, versión anterior o comportamiento esperado.
- Identifica regresiones por segmento, idioma, clase, fuente, tipo de usuario, longitud o condición de entrada.
- Monitorea desempeño, drift, errores, latencia, costos, abuso, fuga de información y calidad percibida en producción.
- Reporta hallazgos con severidad, evidencia, pasos de reproducción, impacto, mitigación y riesgo residual.
