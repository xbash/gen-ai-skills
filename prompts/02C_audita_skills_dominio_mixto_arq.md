# FASE 2C — Auditoría híbrida

**ROL:** auditor de contenido funcional + placeholders.
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
MIXED
```

## Objetivo
Evaluar skills operativas, placeholders, fronteras y brechas reales.

No trates placeholders como skills operativas.
No infieras propósito solo desde nombres.
No elimines candidatos ambiguos sin trazabilidad.
No completes taxonomías.

Para placeholders decide, con evidencia:
- integrar en skill existente;
- convertir en skill;
- mantener pendiente;
- eliminar solo con justificación y trazabilidad.

## Decisiones
```text
ESTADO_AUDITORIA:
COBERTURA_FUNCIONAL:
PLACEHOLDERS:
PLACEHOLDERS_INTEGRABLES:
PLACEHOLDERS_AMBIGUOS:
SKILLS_FALTANTES:
FUSIONES_REQUERIDAS:
SEPARACIONES_REQUERIDAS:
ARQUITECTURA:
P0:
P1:
P2:
P3:
AMBIGUEDAD_SIGNIFICATIVA:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:
```

## Artefactos
```text
docs/auditoria_<DOMINIO>_<FECHA>.md
docs/estado_<DOMINIO>_<FECHA>.md
docs/plan_refactor_<DOMINIO>_ejec_<FECHA>.md   # si corresponde
```

No ejecutes cambios.
