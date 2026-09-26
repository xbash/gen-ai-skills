# Iniciar workflow de dominio

## Configuración
- Modelo: GPT-5.6 Luna
- Esfuerzo: Low

## Parámetros
`<PROYECTO>`, `<DOMINIO>`, `<RUTA>`, `<FECHA>`.

## Prompt
```text
Aplica estrictamente:

workflows/workflow_skills_dominio_v1.md

Proyecto:
<PROYECTO>

Dominio:
<DOMINIO>

Ruta:
<RUTA>

Fecha:
<FECHA>

Ejecuta únicamente la FASE 1 — PRECHECK.

Usa:
prompts/precheck_skills_dominio_ejec.md

Clasifica exclusivamente como:
- EMPTY
- PLACEHOLDER_ONLY
- FUNCTIONAL
- MIXED
- INVALID

No diseñes.
No audites arquitectura.
No propongas fusiones.
No refactorices.
No modifiques archivos dentro de <RUTA>.
No avances automáticamente a ninguna fase posterior.

Genera o actualiza:
docs/precheck_<DOMINIO>_<FECHA>.md
docs/estado_<DOMINIO>_<FECHA>.md

En el chat responde únicamente:

DOMINIO:
ESTADO:
SKILLS_OPERATIVAS:
PLACEHOLDERS:
AUXILIARES:
RUTA_SIGUIENTE:
MODELO:
ESFUERZO:
PROMPT:
```
