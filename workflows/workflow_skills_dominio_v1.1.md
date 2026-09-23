# Workflow de auditoría y evolución de skills por dominio — v1.1

## Propósito
Procedimiento reproducible para inspeccionar, clasificar, diseñar, auditar, refactorizar, validar y cerrar dominios bajo `skills/`.

Principio: **Observar → clasificar → razonar → decidir → ejecutar → validar → cerrar.**

## Política de modelos
| Trabajo | Modelo | Esfuerzo |
|---|---|---|
| Inicio/router | GPT-5.6 Luna | Low |
| PRECHECK | GPT-5.6 Luna | Low |
| Diseño | GPT-5.6 Terra | Medium |
| Auditoría funcional/híbrida | GPT-5.6 Terra | Medium |
| Plan determinista | GPT-5.6 Terra | Medium |
| Ejecución | GPT-5.6 Luna | Medium |
| Validación mecánica | GPT-5.6 Luna | Low |
| Post-refactor | GPT-5.6 Terra | Medium |
| Gate excepcional | GPT-5.6 Terra | High |

Terra High no es una fase estándar; usar solo ante alto impacto + baja confianza.

## Parámetros estándar
```text
<PROYECTO> = ruta raíz
<DOMINIO>  = nombre exacto
<RUTA>     = skills/<DOMINIO>/
<FECHA>    = YYYYMMDD
```

## Fases
- FASE 0: inicio/router.
- FASE 1: PRECHECK.
- FASE 2A: diseño para `EMPTY` / `PLACEHOLDER_ONLY`.
- FASE 2B: auditoría funcional para `FUNCTIONAL`.
- FASE 2C: auditoría híbrida para `MIXED`.
- FASE 3: plan determinista cuando hay cambios necesarios.
- FASE 5: ejecución.
- FASE 6: validación mecánica.
- FASE 7: post-refactor cuando corresponde.
- FASE 10: cierre.

## Routing PRECHECK
- `EMPTY` → 2A.
- `PLACEHOLDER_ONLY` → 2A.
- `FUNCTIONAL` → 2B.
- `MIXED` → 2C.
- `INVALID` → STOP.

## Regla de decisión
Si `P0=0`, `P1=0` y `AMBIGÜEDAD_SIGNIFICATIVA=NO`, no refactorizar por rutina; P2/P3 pueden quedar como backlog y se puede ir a cierre.

Si `P0>0` o `P1>0`, generar plan determinista.

## Plan determinista
Cada acción debe incluir: ID, prioridad, tipo, archivo, objetivo, precondiciones, instrucciones, contenido a preservar/eliminar, criterios de aceptación, rollback, estado y dependencias.

Estados: `READY` / `BLOCKED`.

Separar precondiciones existentes de resultados futuros; no usar un requisito futuro como precondición.

## Validación
Distinguir:
- validación estática: estructura, rutas, referencias, formato, Git diff;
- validación funcional: tareas representativas reales.

No inferir validación funcional desde validación estática.

## Post-refactor
Obligatorio cuando hubo refactor significativo. Puede ser opcional en P2/P3 documentales, acotados, deterministas, de bajo riesgo y sin cambios de arquitectura/límites funcionales.

## Cierre
`ESTADO_WORKFLOW: STABLE` cuando:
```text
P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_FINAL = PASS
```

## Arquitectura de skills
- `SIMPLE_SKILL`: preferida si la capacidad es autocontenida.
- `COMPOUND_SKILL`: solo si aporta encapsulación, recursos propios, routing, mantenibilidad, portabilidad o carga selectiva.
- No migrar a `SKILL.md` por uniformidad.
- Concepto ≠ skill.

## Carga progresiva
```text
README
+ base
+ un módulo principal
+ secundarios solo por dependencia concreta
+ checklist solo en cierre/revisión
```

## Reglas transversales
- No completar taxonomías artificialmente.
- No fusionar solo por vocabulario compartido.
- No eliminar conocimiento sin trazabilidad, validación y rollback.
- No afirmar ahorro de tokens sin medición.
- No reabrir dominios `STABLE` sin nueva evidencia.
