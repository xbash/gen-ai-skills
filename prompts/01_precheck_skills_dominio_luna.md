# FASE 1 — PRECHECK

**ROL:** inspector mecánico.
**MODELO:** GPT-5.6 Luna
**ESFUERZO:** Low

## Parámetros
```text
PROYECTO:
<PROYECTO>
DOMINIO:
<DOMINIO>
RUTA:
<RUTA>
FECHA:
<FECHA>
```

## Objetivo
Clasificar exclusivamente como:
- EMPTY
- PLACEHOLDER_ONLY
- FUNCTIONAL
- MIXED
- INVALID

No diseñes.
No audites arquitectura.
No propongas fusiones/separaciones.
No refactorices.
No modifiques `<RUTA>`.

Inspecciona existencia, Markdown, vacíos, placeholders, skills operativas por contenido, auxiliares y subdirectorios con `SKILL.md`.

No infieras funcionalidad solo por nombres.

## Routing
- EMPTY → FASE 2A
- PLACEHOLDER_ONLY → FASE 2A
- FUNCTIONAL → FASE 2B
- MIXED → FASE 2C
- INVALID → STOP

## Artefactos
```text
docs/precheck_<DOMINIO>_<FECHA>.md
docs/estado_<DOMINIO>_<FECHA>.md
```

## Respuesta
```text
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
