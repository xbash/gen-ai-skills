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

## Actualizacion 2026-07-23

### Alta prioridad

- [ ] Crear `AGENTS.md` raiz si se quiere que las reglas persistentes queden disponibles para futuras sesiones de Codex y agentes equivalentes.
- [x] Corregir mojibake del arbol de directorios en `README.md`.
- [x] Agregar `geoespacial` al listado de dominios del `README.md`.
- [ ] Definir el destino de `skills/geoespacial/stac.md`, actualmente versionado y vacio.

### Media prioridad

- [ ] Completar o eliminar los templates vacios bajo `templates/`, segun su proposito real.
- [ ] Completar o eliminar placeholders vacios bajo `docs/`.
- [ ] Revisar si el pendiente antiguo sobre `skills/academia/prompt-tarea1-vision-nlp-redes.md` sigue vigente; no aparece en el `git status --short --branch` ejecutado el 2026-07-23.

### Memories propuestas

- Memory propuesta: En `gen-ai-skills`, antes de editar dominios revisar `git status --short --branch`, porque pueden existir dominios o prompts no versionados iniciados por el usuario.
- Motivo: Evita sobrescribir o normalizar trabajo en progreso sin confirmacion.
- Alcance: Este repositorio.
- Riesgo si se guarda: Bajo; es una regla operacional estable.
- Alternativa si debe ir mejor en `AGENTS.md` o `docs/`: Debe ir en `AGENTS.md` si se crea; por ahora queda en `docs/PENDIENTES.md`.

- Memory propuesta: `skills/geoespacial/` aparecio el 2026-07-23 como directorio no versionado con `stac.md.txt` vacio; su formalizacion esta pendiente.
- Motivo: Ayuda a no confundirlo con dominio completo.
- Alcance: Temporal para este checkout.
- Riesgo si se guarda: Medio; puede quedar obsoleta cuando el usuario complete o elimine el dominio.
- Alternativa si debe ir mejor en `AGENTS.md` o `docs/`: Mejor mantenerlo en `docs/CONTEXTO_PROYECTO.md` y `docs/PENDIENTES.md` hasta resolverlo.

## Actualizacion 2026-07-23 - cierre posterior a publicacion

### Pendientes principales

- [ ] Crear `AGENTS.md` raiz si se quiere que las reglas persistentes queden disponibles para futuras sesiones de Codex y agentes equivalentes.
- [ ] Formalizar `skills/geoespacial/` o eliminar el placeholder si no corresponde mantenerlo.
- [ ] Si se formaliza `geoespacial`, crear al menos un `README.md` de dominio y una instruccion base antes de presentarlo como skill usable.
- [ ] Completar o eliminar placeholders vacios en `docs/` y `templates/`.
- [ ] Definir politica de codificacion y fin de linea para evitar advertencias LF/CRLF y riesgos de mojibake.

### Memories propuestas pendientes de confirmacion

- Memory propuesta: En `gen-ai-skills`, cuando se agregue un dominio bajo `skills/<dominio>/`, actualizar tambien el listado de dominios del `README.md` y evitar dejarlo como usable si solo contiene placeholders vacios.
- Motivo: Evita inconsistencias de navegacion y expectativas falsas sobre dominios incompletos.
- Alcance: Este repositorio.
- Riesgo si se guarda: Bajo; puede quedar obsoleta solo si se automatiza el indice de dominios.
- Alternativa si debe ir mejor en `AGENTS.md` o `docs/`: Debe ir en `AGENTS.md` como regla operativa si se crea ese archivo; por ahora queda aqui.
