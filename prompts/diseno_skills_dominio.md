# Diseño de skills para dominio no funcional — Terra / Medium

## Parámetros
- Proyecto: `<PROYECTO>`
- Dominio: `<DOMINIO>`
- Ruta: `<RUTA>`
- Fecha: `<FECHA>`

## Contexto
Lee primero:
- `docs/estado_<DOMINIO>_<FECHA>.md`
- `docs/precheck_<DOMINIO>_<FECHA>.md`

La evidencia principal es el contenido real actual de `<RUTA>`. Los nombres de archivos vacíos son candidatos exploratorios, no arquitectura aprobada.

## Objetivo
Diseñar un Minimum Viable Skill Set que maximice `calidad operativa / costo de contexto`.

Prioriza capacidades y workflows. No uses `un concepto = una skill`.

Distingue entre skill, workflow, referencia, checklist, concepto, formato, fuente/sensor, algoritmo, herramienta y contenido que no requiere persistencia.

## Evaluación
1. Identifica capacidades reales del dominio.
2. Clasifica candidatos.
3. Detecta agrupaciones naturales.
4. Define CORE y SPECIALIZED si corresponde.
5. Mantén el conjunto mínimo suficiente.
6. Define `USAR CUANDO` y `NO USAR CUANDO`.
7. Favorece carga selectiva, idealmente `README + una skill primaria`.
8. Preserva conocimiento especializado verificable.
9. No inventes fuentes, benchmarks, endpoints, defaults ni métricas.
10. Mantén trazabilidad candidato → destino.

## Arquitectura
Propón estructura física solo después de definir responsabilidades. Puede ser plana o con `SKILL.md`; no adoptes `SKILL.md` por estética.

## Salidas
Genera:
- `docs/diseno_<DOMINIO>_terra_<FECHA>.md`
- `docs/plan_creacion_<DOMINIO>_luna_<FECHA>.md`

## Contrato del plan
Cada acción:
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

Para CREATE/EDIT/REWRITE/MERGE:
```yaml
content_contract:
  required_sections: []
  concepts_to_preserve: []
  duplicated_content_to_remove: []
  forbidden_changes: []
```

Para edición exacta:
```yaml
replacement_content: |
  ...
```

Niveles:
- `LUNA_LOW`: filesystem, validación, cambios exactos.
- `LUNA_MEDIUM`: redacción acotada por contrato.
- `TERRA_REQUIRED`: decisión no cerrada.

## Terra High
Marca `REVISIÓN_TERRA_ALTA` solo ante eliminación de conocimiento especializado, fusión de 3+ responsabilidades, impacto metodológico/seguridad/reproducibilidad, evidencia contradictoria o alto impacto + baja confianza.

## Restricciones
No modifiques `<RUTA>`.

## Respuesta
```text
DOMINIO:
ESTADO_DISENO:
CAPACIDADES_PROPUESTAS:
CORE:
SPECIALIZED:
AMBIGÜEDAD_SIGNIFICATIVA:
REVISION_TERRA_ALTA:
PLAN_EJECUCION_LUNA:
ACCIONES_READY:
ACCIONES_BLOCKED:
SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:
INFORME:
PLAN:
```
