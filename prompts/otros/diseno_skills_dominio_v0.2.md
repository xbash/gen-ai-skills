# Objetivo

Diseña para `<DOMINIO>` un **Minimum Viable Skill Set** que maximice:

`calidad operativa / costo de contexto`

Proyecto: `<PROYECTO>`  
Ruta: `<RUTA>`  
Fecha: `<FECHA>`

# Alcance

Lee primero, cuando existan:

- `docs/estado_<DOMINIO>_<FECHA>.md`
- `docs/precheck_<DOMINIO>_<FECHA>.md`

La fuente principal de verdad es el contenido actual de `<RUTA>`.

Los nombres de archivos, directorios o placeholders no constituyen por sí solos arquitectura aprobada.

# Criterios

1. Identifica las capacidades reales del dominio.
2. Distingue entre:
   - skill;
   - workflow;
   - referencia;
   - checklist;
   - concepto;
   - formato;
   - fuente o sensor;
   - algoritmo;
   - herramienta;
   - contenido que no requiere persistencia.
3. Agrupa capacidades relacionadas; evita `un concepto = una skill`.
4. Define `CORE` y `SPECIALIZED` solo cuando aporte valor.
5. Mantén el conjunto mínimo suficiente.
6. Define `USAR CUANDO` y `NO USAR CUANDO`.
7. Favorece carga selectiva de contexto.
8. Preserva conocimiento especializado verificable.
9. No inventes fuentes, benchmarks, endpoints, defaults ni métricas.
10. Mantén trazabilidad `candidato → destino`.

Define responsabilidades antes de proponer estructura física.

No adoptes `SKILL.md` únicamente por convención o estética.

# Restricciones

No modifiques `<RUTA>`.

Las decisiones deben basarse en evidencia disponible.

Marca como `TERRA_REQUIRED` cualquier decisión relevante que no quede suficientemente determinada.

Usa `REVISIÓN_TERRA_ALTA` solo ante:

- posible pérdida de conocimiento especializado;
- fusión de tres o más responsabilidades relevantes;
- impacto metodológico, de seguridad o reproducibilidad;
- evidencia contradictoria;
- alto impacto combinado con baja confianza.

# Salida

Genera:

- `docs/diseno_<DOMINIO>_terra_<FECHA>.md`
- `docs/plan_creacion_<DOMINIO>_luna_<FECHA>.md`

El plan de ejecución debe utilizar:

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

Para `CREATE`, `EDIT`, `REWRITE` o `MERGE`:

```yaml
content_contract:
  required_sections: []
  concepts_to_preserve: []
  duplicated_content_to_remove: []
  forbidden_changes: []
```

Para sustituciones exactas:

```yaml
replacement_content: |
  ...
```

Niveles de ejecución:

- `LUNA_LOW`: filesystem, validaciones y cambios exactos;
- `LUNA_MEDIUM`: redacción acotada por contrato;
- `TERRA_REQUIRED`: decisión todavía no cerrada.

Finaliza informando:

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
INFORME:
PLAN:
```