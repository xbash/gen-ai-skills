# FASE 6 — Validación mecánica

**ROL:** validador mecánico.
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

## Evidencia
- plan;
- informe de ejecución;
- workflow v1.1.

No reaudites.
No rediseñes.
No propongas mejoras.
No corrijas automáticamente.

## Valida
- archivos esperados/modificados;
- cambios fuera de alcance;
- READY ejecutadas;
- BLOCKED no ejecutadas;
- dependencias;
- rutas y referencias;
- UTF-8;
- LF;
- ausencia de CRLF/CR aislado;
- BOM;
- trailing whitespace;
- newline final;
- `git diff --check` si Git está disponible.

Distingue:
- `VALIDACION_ESTATICA`;
- `VALIDACION_FUNCIONAL`.

No declares funcional si no hubo tareas representativas.

## Artefacto
`docs/validacion_<DOMINIO>_<FECHA>.md`

## Respuesta
```text
DOMINIO:
PLAN_COMPLETO:
CAMBIOS_FUERA_DE_ALCANCE:
RUTAS_VALIDAS:
UTF8:
LF:
BOM:
TRAILING_WHITESPACE:
NEWLINE_FINAL:
GIT_DIFF_CHECK:
VALIDACION_ESTATICA:
VALIDACION_FUNCIONAL:
REQUIERE_REVISION_TERRA:
INFORME:
ESTADO_FINAL:
```
