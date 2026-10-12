# Guía de ejecución

## Parámetros estándar
```text
<PROYECTO> = C:/rutinas-local/gen-ai-skills-root/gen-ai-skills
<DOMINIO>  = nombre exacto del dominio
<RUTA>     = skills/<DOMINIO>/
<FECHA>    = YYYYMMDD
```

## Secuencia
| Paso | Prompt | Modelo | Esfuerzo | Condición |
|---|---|---|---|---|
| 1 | iniciar_workflow_dominio.md | Luna | Low | Siempre |
| 2A | diseno_skills_dominio.md | Terra | Medium | EMPTY / PLACEHOLDER_ONLY |
| 2B | audita_skills_dominios_v2_arq.md | Terra | Medium | FUNCTIONAL |
| 2C | audita_skills_dominios_v2_arq.md | Terra | Medium | MIXED |
| 3 | ejecuta_refactor_skills_ejec.md | Luna | Low/Medium | Solo si existe plan |
| 4 | audita_post_refactor_dominio.md | Terra | Medium | Solo si hubo refactor |
| 5 | Cierre | Ninguno | — | P0=0, P1=0, sin ambigüedad, validación PASS |

## Ejecución

### Paso 1
Sustituye `<PROYECTO>`, `<DOMINIO>`, `<RUTA>`, `<FECHA>` en `iniciar_workflow_dominio.md`.
Ejecuta con Luna / Low.

### Paso 2A
Si el PRECHECK devuelve `EMPTY` o `PLACEHOLDER_ONLY`, ejecuta `diseno_skills_dominio.md` con Terra / Medium.

### Paso 2B
Si devuelve `FUNCTIONAL`, ejecuta `audita_skills_dominios_v2_arq.md` con:
`<MODO> = AUDITORÍA_FUNCIONAL`.

### Paso 2C
Si devuelve `MIXED`, usa el mismo auditor con:
`<MODO> = AUDITORÍA_HÍBRIDA`.

### Paso 3
Solo si existe plan. Completa:
```text
<PLAN> = ruta exacta del plan
<ACCIONES> = IDs exactos, por ejemplo A001 o A002,A003
```
Usa Luna / Medium para redacción semántica y Luna / Low para operaciones mecánicas o validación.

### Paso 4
Solo si hubo refactor y la validación terminó PASS.
Completa `<AUDITORIA_PREVIA>`, `<PLAN_EJECUTADO>`, `<EXECUTION_REPORT>` y ejecuta con Terra / Medium.

### Paso 5
Cierra como `STABLE` si:
```text
P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_FINAL = PASS
```
P2/P3 quedan como backlog salvo evidencia nueva.
