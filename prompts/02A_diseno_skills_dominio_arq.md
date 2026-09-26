# FASE 2A — Diseño

**ROL:** arquitecto de skills.
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
<EMPTY|PLACEHOLDER_ONLY>
```

## Evidencia
- `docs/precheck_<DOMINIO>_<FECHA>.md`
- `docs/estado_<DOMINIO>_<FECHA>.md`
- `workflows/workflow_skills_dominio_v1.1.md`

## Objetivo
Diseñar la arquitectura mínima suficiente: base, capacidades operativas, auxiliares, checklist, routing, carga progresiva y simple vs compound.

## Principios
- Concepto ≠ skill.
- No completar taxonomías.
- No crear una skill por herramienta/formato/algoritmo/fuente salvo workflow propio.
- No copiar otra arquitectura por uniformidad.
- No afirmar ahorro de tokens sin medición.

Para placeholders, clasifica cuando sea útil:
`SKILL_INDEPENDIENTE`, `PARTE_DE_SKILL`, `CONCEPTO`, `FUENTE_DATOS`, `FORMATO`, `ALGORITMO`, `CONOCIMIENTO_REFERENCIA`, `REVISAR`.

No asignes significado a candidatos ambiguos.

## Artefactos
```text
docs/diseno_<DOMINIO>_<FECHA>.md
docs/plan_refactor_<DOMINIO>_ejec_<FECHA>.md   # solo si corresponde
```

No ejecutes cambios.

## Decisiones
```text
ESTADO_DISENO:
COBERTURA_PROPUESTA:
SKILLS_PROPUESTAS:
SIMPLE_SKILLS:
COMPOUND_SKILLS:
SUBDIRECTORIOS:
SKILL_MD:
ARQUITECTURA:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:
```
