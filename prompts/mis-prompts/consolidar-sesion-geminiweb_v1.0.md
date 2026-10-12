# Objetivo
Consolida el estado operativo vigente de esta sesión de trabajo para poder continuar posteriormente en otra conversación, agente, modelo o entorno sin depender del historial completo de este chat.

Debes generar el contenido consolidado para exactamente tres archivos:
- docs/CONTEXT.md
- docs/DECISIONS.md
- docs/HANDOFF.md

# FORMA DE ENTREGA (Específica para Gemini Web)

Presenta los tres archivos exclusivamente dentro de un único bloque de script en Python que, al ejecutarse en local, cree la carpeta `docs/` y escriba cada archivo con su contenido exacto.

Requisitos del script:
1. Usar únicamente la biblioteca estándar de Python (`os`, `pathlib`).
2. Declarar las rutas relativas `docs/CONTEXT.md`, `docs/DECISIONS.md` y `docs/HANDOFF.md`.
3. Asignar el contenido de cada artefacto como string multilínea estructurado.
4. Crear el directorio `docs/` si no existe y escribir los archivos con codificación UTF-8.

Evita explicaciones previas, preámbulos o análisis intermedios en el chat.
La respuesta visible debe limitarse al bloque de código ejecutable y a una instrucción mínima de ejecución local (ej. `python consolidar.py`).

# Fuentes de información
Utiliza únicamente evidencia disponible en:
1. Esta conversación;
2. Archivos o fragmentos de código adjuntos a esta conversación;
3. Resultados, decisiones, restricciones y verificaciones explícitamente mencionados;
4. Información técnica establecida durante esta sesión.

Si una información relevante no puede verificarse con certeza, márcala como:
`pendiente-de-verificacion`

No inventes archivos, comandos, métricas, decisiones ni estados de implementación.

# Principios de consolidación
- Prioriza información vigente y accionable.
- Elimina redundancias, debates descartados y razonamientos intermedios.
- No duplicar: cada dato pertenece únicamente a su archivo canónico.
- Conserva el estado operativo real, no una bitácora cronológica.

# Estructura de los archivos

## 1. docs/CONTEXT.md
# Contexto del proyecto
## Objetivo
## Estado actual
## Arquitectura o estructura relevante
## Stack y herramientas
## Restricciones
## Supuestos vigentes
## Referencias técnicas relevantes

## 2. docs/DECISIONS.md
Contiene solo decisiones técnicas vigentes con impacto futuro bajo el formato:
## D-001 — <título>
**Decisión:** <decisión adoptada>
**Motivo:** <justificación técnica>
**Impacto:** <qué condiciona en el código o arquitectura>
**Estado:** vigente

## 3. docs/HANDOFF.md
Punto exacto de continuidad para un nuevo agente o sesión:
# Handoff
## Objetivo activo
## Estado inmediato
## Trabajo completado relevante
## Trabajo parcialmente completado
## Archivos o componentes relevantes
## Verificaciones realizadas
## Bloqueos o riesgos actuales
## Próxima acción inmediata
## Pasos siguientes (1, 2, 3)
## Acción inicial recomendada (comando exacto o archivo a abrir)