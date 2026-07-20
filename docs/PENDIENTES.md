# Pendientes

Fecha de consolidacion: 2026-07-19

## Alta prioridad

- Crear o actualizar `AGENTS.md` en la raiz si se quiere que las instrucciones persistentes queden disponibles para futuras sesiones.
- Revisar `README.md` raiz por mojibake en el arbol de directorios.
- Decidir el destino de `skills/academia/prompt-tarea1-vision-nlp-redes.md`, actualmente no versionado.
- Confirmar si se deben guardar las memories propuestas en `docs/BITACORA_CODEX.md`.

## Media prioridad

- Completar o definir el uso de los documentos vacios existentes en `docs/`:
  - `docs/architecture.md`
  - `docs/best-practices.md`
  - `docs/getting-started.md`
  - `docs/prompt-design.md`
  - `docs/roadmap.md`
- Evaluar si corresponde crear una biblioteca separada para prompts concretos, por ejemplo `prompts-academicos/`.
- Revisar si el listado de dominios del `README.md` raiz esta completo respecto del contenido actual de `skills/`.
- Revisar consistencia entre archivos raiz de cada dominio y sus `pack-chatgpt/`.

## Baja prioridad

- Normalizar nombres de documentos en `docs/`, especialmente `roadmap.md.txt`, si se quiere una extension Markdown convencional.
- Agregar ejemplos de carga de contexto para ChatGPT, Claude, Gemini, Open WebUI, LM Studio y Ollama si aun no estan cubiertos por `templates/`.

## Problemas encontrados

- `README.md` raiz muestra caracteres mojibake en el arbol de directorios.
- `git diff --stat` emitio muchas advertencias de fin de linea: `LF will be replaced by CRLF the next time Git touches it`.
- No hay `AGENTS.md` en la raiz al momento de esta consolidacion.
- `docs/architecture.md`, `docs/best-practices.md`, `docs/getting-started.md`, `docs/prompt-design.md` y `docs/roadmap.md` existen con longitud 0.
- `docs/roadmap.md.txt` aparece eliminado y `docs/roadmap.md` aparece no versionado; pendiente confirmar si es un renombrado intencional.

## Pendiente de verificacion

- Confirmar si la politica deseada es conservar ASCII sin acentos o migrar todo a UTF-8 con acentos correctamente codificados.
- Confirmar si el archivo no versionado `skills/academia/prompt-tarea1-vision-nlp-redes.md` fue creado intencionalmente y debe versionarse.
- Confirmar si el contenido de memoria sobre separacion `skills/academia` versus `prompts-academicos/` debe materializarse en el repositorio actual.
- Confirmar si las memories propuestas deben guardarse como memoria duradera o mantenerse solo en documentacion del repo.
