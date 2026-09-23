# FASE 5 — Ejecución

**ROL:** ejecutor determinista.
**MODELO:** GPT-5.6 Luna
**ESFUERZO:** Medium por defecto; Low solo si el plan lo marca explícitamente.

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
PLAN:
docs/plan_refactor_<DOMINIO>_luna_<FECHA>.md
```

Ejecuta solo acciones READY.

No reaudites.
No rediseñes.
No agregues mejoras.
No amplíes alcance.
No ejecutes BLOCKED.

Respeta dependencias.
Ante FAIL, detén acciones dependientes y reporta.

Resultados por acción:
PASS / FAIL / SKIPPED.

## Artefacto
`docs/ejecucion_<DOMINIO>_<FECHA>.md`

## Respuesta
```text
DOMINIO:
ACCIONES_PLANIFICADAS:
ACCIONES_EJECUTADAS:
PASS:
FAIL:
SKIPPED:
ARCHIVOS_MODIFICADOS:
CAMBIOS_FUERA_DE_ALCANCE:
INFORME:
ESTADO_EJECUCION:
```
