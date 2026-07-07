# Reglas específicas — LLM, RAG y agentes

## Alcance

Aplicar cuando la tarea involucre modelos de lenguaje, asistentes conversacionales, RAG, agentes, function calling, tool use, workflows autónomos, orquestación de modelos o integración con APIs de IA generativa.

## Diseño de solución

- Define objetivo, usuarios, entradas, salidas esperadas, restricciones, contexto de uso y criterio de éxito.
- Distingue entre chatbot simple, asistente con herramientas, sistema RAG, agente autónomo, pipeline multiagente o integración embebida en una aplicación.
- No propongas agentes si una arquitectura más simple resuelve el problema con menor riesgo.
- Define límites de autonomía, permisos, herramientas disponibles, acciones permitidas y condiciones de detención.
- Separa instrucciones del sistema, instrucciones del desarrollador, contexto recuperado, memoria, herramientas y salida final.

## RAG

- Separa ingesta, limpieza, segmentación, embeddings, indexación, recuperación, reranking, generación y evaluación.
- Define fuente documental, fecha de actualización, permisos, licenciamiento, idioma, granularidad y sensibilidad de los datos.
- Registra modelo de embeddings, tamaño de chunk, overlap, metadatos, filtros, índice vectorial y estrategia de recuperación.
- Evalúa recuperación con Recall@K, MRR, nDCG, precisión contextual o revisión manual según corresponda.
- Evalúa generación con groundedness, exactitud, cobertura, trazabilidad de fuentes, utilidad y rechazo ante contexto insuficiente.
- Advierte riesgos de alucinación, documentos obsoletos, fuentes contradictorias, contexto incompleto y prompt injection.

## Agentes y herramientas

- Define claramente qué herramientas puede usar el agente y bajo qué condiciones.
- Valida entradas y salidas de herramientas con esquemas estrictos cuando sea posible.
- Evita que el modelo ejecute acciones destructivas, costosas o sensibles sin confirmación explícita.
- Incluye trazabilidad de pasos, logs seguros, manejo de errores, reintentos limitados y fallback.
- Considera loops infinitos, acumulación de contexto, llamadas innecesarias, costos y latencia.

## Seguridad y privacidad

- No expongas tokens, credenciales, datos personales, documentos confidenciales ni secretos en prompts, logs o respuestas.
- Considera prompt injection, data exfiltration, jailbreaks, uso indebido, fuga de contexto y manipulación de herramientas.
- Minimiza datos enviados al modelo y aplica controles de acceso cuando existan documentos privados.

## Evaluación

- Define casos de prueba representativos, casos límite, entradas maliciosas y respuestas esperadas.
- Registra prompts, parámetros, modelos, versiones, herramientas, fuentes y fecha de evaluación.
- No afirmes mejoras sin comparación contra baseline o versión anterior.
