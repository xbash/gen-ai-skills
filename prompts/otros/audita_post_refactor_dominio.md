# Auditoría post-refactor de dominio — Terra / Medium

## Parámetros
- Proyecto: `<PROYECTO>`
- Dominio: `<DOMINIO>`
- Ruta: `<RUTA>`
- Fecha: `<FECHA>`
- Auditoría previa: `<AUDITORIA_PREVIA>`
- Plan ejecutado: `<PLAN_EJECUTADO>`
- Execution report: `<EXECUTION_REPORT>`

## Contexto
Lee primero:
`docs/estado_<DOMINIO>_<FECHA>.md`

Luego, solo si es necesario:
- `<AUDITORIA_PREVIA>`
- `<PLAN_EJECUTADO>`
- `<EXECUTION_REPORT>`

La evidencia principal es el contenido REAL y ACTUAL de `<RUTA>`.

## Objetivo
Comprobar que el refactor preservó capacidades, redujo redundancia, mejoró triggers/carga selectiva, mantuvo fronteras, preservó conocimiento especializado y mejoró mantenibilidad sin aumentar dependencias innecesarias.

## Evaluaciones obligatorias
1. Fidelidad plan → implementación.
2. Triggers y anti-triggers.
3. Carga selectiva (`README + unidad primaria` cuando sea razonable).
4. Densidad y prosa prescindible.
5. Cobertura y pérdida funcional.
6. Fronteras entre componentes.
7. Redundancia transversal necesaria vs perjudicial.

## Comparación antes/después
Incluye:
| Dimensión | Antes | Después | Resultado |
|---|---|---|---|
| Fragmentación | | | |
| Activación selectiva | | | |
| Cobertura | | | |
| Redundancia | | | |
| Densidad | | | |
| Mantenibilidad | | | |
| Costo de contexto | | | |
| Ambigüedad | | | |

No inventes cifras de tokens.

## Hallazgos
- P0: error crítico/pérdida funcional/riesgo metodológico.
- P1: cambio necesario de alto impacto.
- P2: optimización útil no bloqueante.
- P3: mejora marginal.

## Terra High
Marca `REVISIÓN_TERRA_ALTA` solo ante posible pérdida de conocimiento especializado, contradicción sustantiva, rediseño estructural amplio o alto impacto + baja confianza.

## Segundo plan
Genera:
`docs/plan_post_refactor_<DOMINIO>_ejec_<FECHA>.md`

solo si existen cambios concretos justificados.

Si:
```text
P0 = 0
P1 = 0
ambigüedad significativa = NO
validación final = PASS
```

entonces:
```text
PLAN_EJECUCION_LUNA: NO REQUERIDO
ESTADO_WORKFLOW: STABLE
```

P2/P3 pueden quedar como backlog.

## Salidas
Genera:
`docs/auditoria_post_refactor_<DOMINIO>_<FECHA>.md`

Actualiza:
`docs/estado_<DOMINIO>_<FECHA>.md`

## Restricciones
No modifiques `<RUTA>`.

## Respuesta
```text
DOMINIO:
ESTADO: APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR
COMPONENTES_AUDITADOS:
P0:
P1:
P2:
P3:
REDUNDANCIA_RESIDUAL:
AMBIGÜEDAD_SIGNIFICATIVA:
PERDIDA_FUNCIONAL:
REVISION_TERRA_ALTA:
PLAN_EJECUCION_LUNA: REQUERIDO | NO_REQUERIDO
ACCIONES_READY:
ACCIONES_BLOCKED:
ESTADO_WORKFLOW: STABLE | IN_PROGRESS
SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:
INFORME:
PLAN:
```
