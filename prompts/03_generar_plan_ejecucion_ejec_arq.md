# FASE 3 — Plan determinista

**ROL:** planificador.
**MODELO:** GPT-5.6 Terra
**ESFUERZO:** Medium

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

Usa la auditoría/diseño aprobado y `workflows/workflow_skills_dominio_v1.1.md`.

No reaudites ni rediseñes.

## Contrato por acción
```yaml
action_id:
priority:
type:
execution_level:
status:
depends_on:
files_to_load:
source:
target:
objective:
preconditions:
instructions:
must_preserve:
must_remove:
acceptance_criteria:
rollback:
forbidden_changes:
```

Tipos típicos: CREATE, MODIFY, MERGE, MOVE, DELETE, RENAME, VALIDATE.

Estados: READY / BLOCKED.

### Regla crítica
`preconditions` = condiciones previas.
`acceptance_criteria` = resultados posteriores.

No uses un requisito futuro como precondición.

Para DELETE/MERGE/MOVE exige trazabilidad, rollback y validación de preservación de conocimiento.

## Artefacto
`docs/plan_refactor_<DOMINIO>_ejec_<FECHA>.md`

## Respuesta
```text
DOMINIO:
ACCIONES_TOTAL:
READY:
BLOCKED:
LUNA_LOW:
LUNA_MEDIUM:
GATE_TERRA_HIGH:
PLAN:
```
