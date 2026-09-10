# Decisiones tecnicas

Fecha de consolidacion: 2026-07-19

## Decisiones verificadas en el repositorio

### 1. Organizacion por dominios

El repositorio organiza instrucciones en `skills/<dominio>/`. Cada dominio mantiene su propio `README.md`, instrucciones base, reglas especificas y checklists.

Evidencia: `README.md` y los directorios bajo `skills/`.

### 2. Separacion entre base, reglas y checklist

La convencion documentada en `README.md` separa:

- `instrucciones_base_*.md`: rol, alcance, limites, estilo y formato.
- `*_reglas.md`: reglas especificas por subtema.
- `checklist_*.md`: checklist operacional o metodologico.

Esta decision reduce mezcla de contexto y permite cargar solo lo necesario.

### 3. Dominio academia transversal

`skills/academia/README.md` declara que el dominio academia no debe asumir area tematica por defecto. La especializacion se selecciona despues de mapear el notebook o identificar el modulo.

Decision vigente:

- Mantener `instrucciones_base_academia.md` como base obligatoria.
- Usar `analisis_tecnico_conceptual.md` como capa generica.
- Usar `02` a `06` solo cuando el notebook o el curso indique el area.
- Usar `checklist_revision_notebook.md` como verificacion transversal.

### 4. Rigor y no invencion

La regla transversal del proyecto es no inventar fuentes, citas, datos, leyes, guias, benchmarks, resultados, metricas ni conclusiones. Cuando falte informacion, se debe marcar como supuesto o pendiente de verificacion.

Evidencia: `README.md`, `CONTRIBUTING.md`, `SECURITY.md` y la instruccion del usuario para esta sesion.

### 5. Preservar cambios no propios

El archivo no versionado `skills/academia/prompt-tarea1-vision-nlp-redes.md` se detecto en `git status --short`. No se debe borrar, mover ni editar sin instruccion explicita.

## Decisiones tomadas en esta consolidacion

- Crear cinco documentos de continuidad en `docs/`.
- No editar archivos de skills ni el archivo no versionado detectado.
- Usar ASCII en esta documentacion para evitar introducir nuevos problemas de codificacion.
- Registrar como pendiente todo lo no confirmado por archivos o comandos locales.
- Proponer memories durables en la bitacora, sin guardarlas automaticamente.
- Priorizar `AGENTS.md` para reglas que deban cumplirse siempre en este repositorio.
- Priorizar `docs/DECISIONES_TECNICAS.md` para decisiones tecnicas auditables.

## Decisiones pendientes

- Crear o no crear `AGENTS.md` en la raiz del repositorio.
- Definir una ubicacion formal para prompts concretos, por ejemplo `prompts-academicos/`.
- Decidir si los archivos vacios de `docs/` deben completarse, eliminarse o mantenerse como placeholders.
- Definir una politica de fin de linea y codificacion para evitar advertencias recurrentes de Git y mojibake.
- Confirmar si alguna memory propuesta debe guardarse para futuras sesiones de Codex/ChatGPT.

## Actualizacion 2026-07-23

### Decisiones registradas

- Crear `docs/BITACORA_AGENTES.md` para alinear este repositorio con el esquema de trazabilidad multiagente usado en otros proyectos locales.
- Mantener `skills/geoespacial/` sin cambios en esta consolidacion porque aparece como trabajo no versionado y contiene solo un archivo vacio.
- Mantener el criterio de no convertir observaciones de memoria en hechos del checkout sin verificacion local.

### Decisiones pendientes nuevas

- Definir si `skills/geoespacial/` sera un dominio reutilizable formal.
- Si `geoespacial` se formaliza, decidir si `stac.md.txt` debe renombrarse a Markdown convencional, completarse, moverse o eliminarse.
- Definir si los templates vacios de `templates/` son placeholders intencionales o deuda documental.

## Actualizacion 2026-07-23 - cierre posterior a publicacion

### Decisiones registradas

- Corregir el arbol del `README.md` usando caracteres ASCII para evitar mojibake en editores o terminales con codificacion ambigua.
- Agregar `geoespacial` al listado de dominios del `README.md`, porque `skills/geoespacial/stac.md` ya fue versionado.
- Mantener `skills/geoespacial/stac.md` como placeholder vacio por ahora; no se inventa contenido del dominio sin definicion del usuario.

### Decisiones pendientes actualizadas

- Definir si `skills/geoespacial/` sera un dominio formal y, si lo sera, completar su `README.md`, instrucciones base y criterios de uso.
- Definir una politica explicita de codificacion y fin de linea, por ejemplo mediante `.gitattributes`, si se quiere eliminar la incertidumbre LF/CRLF.
- Crear `AGENTS.md` raiz si las reglas metodologicas deben ser obligatorias para futuras sesiones.

## Actualizacion 2026-09-09

- Los paquetes nativos de Codex se mantienen separados bajo `examples/gen-ia-codex/`.
- `skills/geoespacial/` queda declarado como dominio en preparacion. Sus archivos actuales son placeholders vacios y no constituyen instrucciones utilizables.
- No se renombran ni eliminan los archivos geoespaciales hasta confirmar su contenido y autoría.
- La formalizacion de `geoespacial` requiere README, instruccion base, reglas y checklists con contenido validado, nombres Markdown convencionales y revision de consistencia.

## Actualizacion 2026-09-09 - dominios de instrucciones

### Decisiones registradas

- Los nombres descriptivos actuales de las skills son la convencion canonica; la eliminacion de prefijos numericos fue intencional.
- Los subdirectorios `pack-chatgpt/` fueron eliminados intencionalmente y no deben recrearse.
- Los archivos de texto del repositorio deben mantenerse en UTF-8 sin BOM y con finales de linea LF.
- `.gitattributes` establece LF para archivos de texto y `.editorconfig` establece UTF-8, LF, nueva linea final y eliminacion de espacios finales.

### Alcance y excepciones

- Esta politica aplica a archivos nuevos y a los archivos normalizados en la presente tarea.
- No se modifican automaticamente binarios ni archivos fuera del alcance de la normalizacion solicitada.
- La normalizacion no implica staging, commit, push ni publicacion.
