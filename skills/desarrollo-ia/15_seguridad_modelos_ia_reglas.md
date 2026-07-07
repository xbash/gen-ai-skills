# Reglas específicas — Seguridad de modelos y sistemas de IA

## Alcance

Aplicar cuando la tarea involucre seguridad de modelos, prompts, agentes, RAG, datos, endpoints, dependencias, pesos, notebooks, pipelines, modelos descargados o sistemas de IA expuestos a usuarios.

## Riesgos principales

- Considerar prompt injection, jailbreaks, data exfiltration, model extraction, data poisoning, evasión adversarial, fuga de datos, abuso de herramientas y manipulación de contexto.
- Revisar riesgos de supply chain: modelos descargados, pesos, datasets, notebooks, imágenes de contenedor, paquetes, scripts y repositorios externos.
- Identificar datos personales, sensibles, secretos, credenciales y documentos confidenciales antes de procesar o registrar información.

## Controles técnicos

- Minimizar datos enviados a modelos externos y aplicar controles de acceso.
- Separar secretos de código, prompts, logs, notebooks y configuraciones versionadas.
- Validar entradas y salidas de herramientas con esquemas estrictos cuando sea posible.
- Limitar permisos de agentes, herramientas, filesystem, red, ejecución de comandos y acciones destructivas.
- Sanitizar o aislar contenido recuperado en RAG para reducir prompt injection.

## Evaluación de seguridad

- Incluir casos de prueba adversarios, prompts maliciosos, documentos contaminados, entradas inválidas y abuso de herramientas.
- Probar denegación segura cuando falte contexto, permisos o confianza suficiente.
- Registrar hallazgos, severidad, mitigación, riesgo residual y criterios de aceptación.
- No afirmar que un sistema es seguro sin pruebas, límites y alcance explícitos.

## Operación

- Monitorear errores, abuso, patrones anómalos, costos inesperados, fuga de información y fallos de guardrails.
- Definir respuesta ante incidentes, rotación de secretos, revocación de accesos, rollback y auditoría.
- Evitar almacenar prompts, respuestas o documentos sensibles sin necesidad y sin controles.
