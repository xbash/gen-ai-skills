# Objetivo

Consolida el estado operativo vigente de este chat para continuarlo en un chat nuevo dentro de este mismo Proyecto, sin perder decisiones, estado, contexto crítico ni referencias técnicas.

Genera exactamente tres archivos `.md`: `CONTEXT.md`, `DECISIONS.md` y `HANDOFF.md`.

# Forma de entrega

- Crea los tres archivos con la herramienta de creación de archivos y entrégalos como archivos descargables.
- No muestres su contenido en el chat, ni como texto ni como bloques de código ni como artefacto publicado.
- No generes archivos adicionales ni entregues borradores para revisión.
- No expliques el análisis realizado.
- Si no puedes crear archivos, indícalo en una línea y espera instrucciones.
- Respuesta visible final, únicamente: "Consolidación completada." seguida de los controles de descarga de los tres archivos.

# Fuentes permitidas

Usa solo: (1) esta conversación; (2) adjuntos de este chat; (3) decisiones, restricciones, resultados y verificaciones mencionados explícitamente en ella.

Ignora la memoria y el conocimiento del Proyecto como fuente de contenido. Si algo relevante ya consta en un archivo del Proyecto, referencia su nombre en lugar de duplicarlo.

Si un dato importante no puede verificarse, escribe `pendiente-de-verificacion`.
No inventes archivos, cambios, comandos, resultados, métricas, decisiones ni estados de implementación.

# Principios

- Prioriza información vigente y accionable; los archivos son estado operativo, no bitácora.
- Conserva solo lo que afecte: objetivo, estado, arquitectura, configuración, decisiones, restricciones, supuestos, validaciones, riesgos, bloqueos o próximos pasos.
- Elimina redundancias, historia conversacional, alternativas descartadas sin impacto y razonamientos ya resueltos.
- Cada dato tiene un único destino canónico: CONTEXT (contexto estable), DECISIONS (decisiones vigentes), HANDOFF (punto exacto de continuación). No lo repitas en otro archivo.
- Distingue siempre: completado y verificado / completado sin verificar / pendiente.

# CONTEXT.md

Estructura: # Contexto del proyecto; ## Objetivo; ## Estado actual; ## Arquitectura o estructura relevante; ## Stack y herramientas; ## Restricciones; ## Supuestos vigentes; ## Referencias técnicas relevantes.
Sin cronología. Rutas, archivos o componentes solo si son necesarios para continuar.

# DECISIONS.md

Solo decisiones vigentes con impacto futuro (arquitectura, frameworks, testing, convenciones, estructura, formatos, interfaces, persistencia, baselines, criterios metodológicos).
Formato: ## D-001 — <título> / **Decisión:** / **Motivo:** / **Impacto:** / **Estado:** vigente
Excluye discusiones exploratorias, alternativas sin efecto y decisiones triviales.

# HANDOFF.md

Estructura: # Handoff; ## Objetivo activo; ## Estado inmediato; ## Trabajo completado relevante; ## Trabajo parcialmente completado; ## Archivos o componentes relevantes; ## Verificaciones realizadas; ## Bloqueos o riesgos actuales; ## Próxima acción inmediata; ## Pasos siguientes (numerados); ## Acción inicial recomendada.
Debe responder: ¿qué necesita saber un chat nuevo, sin este historial, para continuar correctamente ahora?
La acción inicial debe indicar, con evidencia suficiente: qué archivo revisar, qué comando ejecutar, qué verificar y qué tarea continuar.

# Prueba de suficiencia

Antes de conservar un dato, pregunta: ¿afecta una decisión, implementación, restricción, validación, riesgo, bloqueo o próxima acción? Si no, elimínalo.