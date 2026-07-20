# Decisiones tecnicas

Fecha de consolidacion: 2026-07-19

## Decisiones verificadas en el repositorio

### 1. Organizacion por dominios

El repositorio organiza instrucciones en `skills/<dominio>/`. Cada dominio mantiene su propio `README.md`, instrucciones base, reglas especificas, checklists y, cuando aplica, un `pack-chatgpt/` compacto.

Evidencia: `README.md` y los directorios bajo `skills/`.

### 2. Separacion entre base, reglas y checklist

La convencion documentada en `README.md` separa:

- `00_instrucciones_base_*.md`: rol, alcance, limites, estilo y formato.
- `NN_*_reglas.md`: reglas especificas por subtema.
- `NN_checklist_*.md`: checklist operacional o metodologico.

Esta decision reduce mezcla de contexto y permite cargar solo lo necesario.

### 3. Dominio academia transversal

`skills/academia/README.md` declara que el dominio academia no debe asumir area tematica por defecto. La especializacion se selecciona despues de mapear el notebook o identificar el modulo.

Decision vigente:

- Mantener `00_instrucciones_base_academia.md` como base obligatoria.
- Usar `01_analisis_tecnico_conceptual.md` como capa generica.
- Usar `02` a `06` solo cuando el notebook o el curso indique el area.
- Usar `07_checklist_revision_notebook.md` como verificacion transversal.

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
