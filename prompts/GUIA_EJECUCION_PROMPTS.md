# Guía de ejecución — v1.1

Usa como punto de entrada:

`prompts/00_iniciar_workflow_dominio.md`

| Estado/hito | Prompt | Rol | Esfuerzo |
|---|---|---|---|
| Inicio | `00_iniciar_workflow_dominio.md` | Ejecutor | Bajo |
| PRECHECK | `01_precheck_skills_dominio_ejec.md` | Ejecutor | Bajo |
| EMPTY / PLACEHOLDER_ONLY | `02A_diseno_skills_dominio_arq.md` | Arquitecto | Medio |
| FUNCTIONAL | `02B_audita_skills_dominio_arq.md` | Arquitecto | Medio |
| MIXED | `02C_audita_skills_dominio_mixto_arq.md` | Arquitecto | Medio |
| Plan necesario | `03_generar_plan_ejecucion_ejec_arq.md` | Arquitecto | Medio |
| Plan READY | `05_ejecuta_refactor_skills_ejec.md` | Ejecutor | Medio |
| Tras ejecución | `06_valida_refactor_skills_ejec.md` | Ejecutor | Bajo |
| Refactor significativo | `07_audita_post_refactor_dominio_arq.md` | Arquitecto | Medio |
| Cierre | `10_cierra_workflow_dominio_ejec.md` | Ejecutor | Bajo |

Regla central:

```text
P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
→ no refactorizar por rutina
→ P2/P3 pueden quedar como backlog
→ cierre
```

Principios:
- Concepto ≠ skill.
- No completar taxonomías.
- Preferir estructura mínima suficiente.
- No migrar a SKILL.md por uniformidad.
- Arquitecto decide; Ejecutor ejecuta.
- Validación estática ≠ validación funcional.
- No eliminar conocimiento sin trazabilidad y rollback.
- No afirmar ahorro de tokens sin medición.
- No reabrir STABLE sin nueva evidencia.
