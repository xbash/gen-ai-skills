# FASE 2B — Auditoría funcional

**ROL:** auditor funcional/arquitectónico.
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
ESTADO_PRECHECK:
FUNCTIONAL
```

## Evalúa
- cobertura;
- responsabilidades y límites;
- redundancias/solapamientos;
- contradicciones;
- granularidad;
- routing y carga progresiva;
- sobrecarga de base;
- checklist;
- skills faltantes;
- fusiones;
- separaciones;
- estructura plana vs compound;
- pérdida de conocimiento;
- mantenibilidad y portabilidad.

## Principios
No `concepto = skill`.
No completar taxonomías.
No `SKILL.md` por uniformidad.
No usar otro dominio como estándar obligatorio.
No afirmar ahorro de tokens sin medición.
No eliminar/compactar sin trazabilidad.

## Prioridades
P0 / P1 / P2 / P3.

## Decisiones
```text
ESTADO_AUDITORIA:
COBERTURA:
SOBRECARGA_BASE:
REDUNDANCIA:
SKILLS_FALTANTES:
FUSIONES_REQUERIDAS:
SEPARACIONES_REQUERIDAS:
ARQUITECTURA:
SUBDIRECTORIOS:
SKILL_MD:
P0:
P1:
P2:
P3:
AMBIGUEDAD_SIGNIFICATIVA:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:
```

Si P0=0, P1=0 y sin ambigüedad:
`PLAN_EJECUCION_LUNA: NO_REQUERIDO` y FASE 10.

## Artefactos
```text
docs/auditoria_<DOMINIO>_<FECHA>.md
docs/estado_<DOMINIO>_<FECHA>.md
docs/plan_refactor_<DOMINIO>_luna_<FECHA>.md   # si corresponde
```

No ejecutes refactor.
