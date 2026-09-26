# Auditoría de dominio funcional — Terra / Medium

## Parámetros
- Proyecto: `<PROYECTO>`
- Dominio: `<DOMINIO>`
- Ruta: `<RUTA>`
- Fecha: `<FECHA>`
- Modo: `<MODO>` = `AUDITORÍA_FUNCIONAL` o `AUDITORÍA_HÍBRIDA`

## Contexto
Lee primero:
- `docs/estado_<DOMINIO>_<FECHA>.md`
- `docs/precheck_<DOMINIO>_<FECHA>.md`

La evidencia principal es el contenido REAL y ACTUAL de `<RUTA>`.

## Objetivo
Determinar si el dominio maximiza `calidad operativa / costo de contexto`.

Evalúa aplicabilidad, utilidad, granularidad, redundancia, solapamiento, triggers, densidad, costo de contexto, reutilización, mantenibilidad, portabilidad, cobertura y límites entre responsabilidades.

Si `<MODO> = AUDITORÍA_HÍBRIDA`, separa:
- OPERATIVO
- PLACEHOLDER_NO_EVALUABLE
- AUXILIAR

No puntúes placeholders como skills funcionales.

## Escala 1–5
- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

## Recomendaciones
MANTENER, MANTENER_CON_CAMBIOS_MENORES, RESUMIR, MEJORAR, FUSIONAR, DIVIDIR, REUBICAR, DEPRECAR, ELIMINAR.

## Reglas
1. Evalúa el dominio como sistema.
2. No fusiones por vocabulario compartido.
3. Distingue repetición necesaria de redundancia perjudicial.
4. No elimines conocimiento especializado sin destino trazable.
5. No dividas solo por longitud.
6. No conviertas automáticamente conceptos/herramientas/formatos/sensores/algoritmos en skills.
7. Evalúa si `README + una unidad primaria` cubre la mayoría de tareas.
8. Mantén dependencias solo cuando aporten valor concreto.
9. No migres a `SKILL.md` por uniformidad estética.
10. No inventes mediciones de tokens.

## Hallazgos
- P0: error crítico/pérdida funcional/riesgo metodológico.
- P1: cambio necesario de alto impacto.
- P2: optimización útil no bloqueante.
- P3: mejora marginal.

## Terra High
Marca `REVISIÓN_TERRA_ALTA` solo ante eliminación de conocimiento especializado, fusión de 3+ responsabilidades, impacto metodológico/seguridad/reproducibilidad, evidencia contradictoria o alto impacto + baja confianza.

## Salidas
Genera:
`docs/auditoria_<DOMINIO>_terra_<FECHA>.md`

Si hay cambios justificados:
`docs/plan_refactor_<DOMINIO>_luna_<FECHA>.md`

Si P0=0, P1=0 y no hay ambigüedad significativa:
`PLAN_EJECUCION_LUNA: NO REQUERIDO`

## Contrato del plan
Cada acción debe incluir:
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
instructions:
must_preserve:
must_remove:
acceptance_criteria:
rollback:
```

Para CREATE/EDIT/REWRITE/MERGE agrega `content_contract`. Para cambios exactos agrega `replacement_content`.

## Estado
Actualiza:
`docs/estado_<DOMINIO>_<FECHA>.md`

## Restricciones
No modifiques `<RUTA>`. No ejecutes refactorización.

## Respuesta
```text
DOMINIO:
ESTADO: APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR
COMPONENTES_AUDITADOS:
P0:
P1:
P2:
P3:
AMBIGÜEDAD_SIGNIFICATIVA:
REVISION_TERRA_ALTA:
PLAN_EJECUCION_LUNA: REQUERIDO | NO_REQUERIDO
ACCIONES_READY:
ACCIONES_BLOCKED:
SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:
INFORME:
PLAN:
```
