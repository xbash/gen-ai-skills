# Handoff de continuidad

Fecha de corte: 2026-09-09

## Al iniciar la próxima sesión

1. Leer `docs/CONTEXT.md`, `docs/DECISIONS.md` y este archivo.
2. No restaurar nombres numerados ni `pack-chatgpt/`.
3. No ejecutar commit, push o release; el usuario hará la publicación.
4. Mantener separados los cambios intencionales existentes del trabajo de esta sesión.

## Próximo trabajo prioritario

### 1. Validación funcional

Probar selección y comportamiento con un LLM en:

- clasificación tabular;
- fine-tuning;
- RAG;
- agente con herramientas;
- API de inferencia;
- forecasting;
- recomendadores;
- OCR/VLM;
- evaluación de regresión.

Registrar solo resultados observados, configuración usada, archivos cargados y limitaciones.

### 2. Medición de contexto

Comparar, para casos equivalentes:

- base sola;
- base + transversal;
- base + transversal + módulo principal;
- base + transversal + complementarios.

Reportar palabras o tokens según la herramienta disponible y distinguir tamaño estático de comportamiento del modelo.

## Referencias principales

- `skills/desarrollo-ia/README.md`
- `skills/desarrollo-ia/base/instrucciones_base_ia.md`
- `skills/desarrollo-ia/base/reglas_transversales_ia.md`
- `skills/desarrollo-ia/seguridad/gobernanza_uso_responsable_ia_reglas.md`
- `skills/ciencia-ingenieria-datos/README.md`
- `docs/DECISIONES_TECNICAS.md`
- `docs/PENDIENTES.md`

## Verificaciones ya realizadas

- Árbol físico de `desarrollo-ia` reorganizado y referencias relativas actualizadas.
- 21 Markdown de `desarrollo-ia` verificados sin BOM, CRLF, espacios finales ni archivos vacíos.
- No quedan referencias al antiguo `rl_optimizacion_evolutivos_reglas.md`.
- `.gitattributes` y `.editorconfig` creados.

## Handoff de sesión — 2026-09-25 (AGENTS.md)

### Estado al cierre

- `AGENTS.md` actualizado y verificado (UTF-8 sin BOM, LF, newline final).
- Archivos no rastreados en `prompts/otros/` intactos; no modificar sin solicitud.
- No se hizo commit, push ni publicación.

### Siguiente paso recomendado

Elegir entre validación funcional (LLM + tareas representativas) o medición comparativa de contexto/tokens. No declarar mejora sin evidencia observada.

---

## Handoff de sesión — 2026-09-25 (README.md raíz)

### Estado al cierre

Archivos modificados en esta sesión (unstaged):

- `README.md` — limpieza y actualización según plan ACCION-01 a ACCION-07.
- `docs/CONTEXT.md`, `docs/DECISIONS.md`, `docs/HANDOFF.md` — actualizados con bloque de esta sesión.

Archivos no rastreados relevantes (no modificados):

- `prompts/otros/analiza-crea-agents_v0.{1,2,3}.md`
- `prompts/otros/analiza-crea-readme_v0.{1,2,3}.md`
- `prompts/otros/analizar-archivos-residuales_v0.{1,2,3}.md`
- `prompts/otros/auditar-codigo-contra-skill_v0.1.md`
- `prompts/otros/auditar-estructura-directorios_v0.{1,2}.md`
- `prompts/otros/diseno_skills_dominio_v0.{1,2}.md`
- `skills/ingenieria-software/analizar_archivos_residuales.md`
- `skills/ingenieria-software/auditar_codigo_contra_skill.md`
- `skills/ingenieria-software/auditar_estructura_directorios.md`

### Al iniciar la próxima sesión

1. Leer `docs/CONTEXT.md`, `docs/DECISIONS.md` y este archivo.
2. Ejecutar `git status` para verificar el estado actual del working tree.
3. No hacer commit, push ni publicación sin autorización explícita.
4. Los archivos no rastreados en `skills/ingenieria-software/` son nuevas skills pendientes de rastrear; evaluar si corresponde hacerles staging.

### Referencias clave

- `README.md` — archivo actualizado en esta sesión.
- `AGENTS.md` — guía normativa vigente para agentes.
- `CONTRIBUTING.md` — convención de dominios y flujo de contribución.
- `SECURITY.md` — límites de seguridad.
- `workflows/workflow_skills_dominio_v1.1.md` — workflow vigente.
- `prompts/GUIA_EJECUCION_PROMPTS.md` — punto de entrada del workflow.
