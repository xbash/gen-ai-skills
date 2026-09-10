# PLAN_EJECUCION_LUNA

Proyecto: `C:/rutinas-local/gen-ai-skills-root/gen-ai-skills`  
Dominio: `skills/geoespacial/`  
Base: `docs/auditoria_post_refactor_geoespacial_20260909.md`

## BATCH 2 — Contenido

```yaml
action_id: P001
priority: P1
type: EDIT
execution_level: LUNA_LOW
status: READY
depends_on: []
files_to_load:
  - skills/geoespacial/README.md
source: skills/geoespacial/README.md
target: skills/geoespacial/README.md
objective: "Explicitar reproducibilidad y frontera modelamiento/deep learning."
instructions:
  - "Reemplazar exactamente la sección Carga y límites de evidencia por replacement_content."
must_preserve:
  - "Mapa de 5 CORE y 3 SPECIALIZED."
  - "No invención y cr2.md no interpretado."
must_remove:
  - "Redacción previa de Carga y límites de evidencia."
acceptance_criteria:
  - "README conserva ocho enlaces a SKILL.md existentes."
  - "README activa reproducibilidad para artefactos repetibles/auditables."
  - "README define la skill primaria entre modelamiento y deep learning."
  - "README mantiene cr2.md sin significado asignado."
rollback:
  - "Restaurar la sección previa de README desde la copia inmediatamente anterior."
content_contract:
  required_sections:
    - "Carga y límites de evidencia"
    - "Dependencia de reproducibilidad"
    - "Frontera modelamiento/deep learning"
  concepts_to_preserve:
    - "Carga selectiva"
    - "No invención"
    - "cr2.md sin significado"
  duplicated_content_to_remove: []
  forbidden_changes:
    - "Modificar el mapa de skills."
    - "Crear, eliminar o renombrar skills."
    - "Interpretar cr2.md."
replacement_content: |
  ## Carga y límites de evidencia

  Carga este README y una skill primaria; añade solo dependencias concretas.

  - Si la tarea crea un dataset derivado, análisis, modelo o entregable que deba repetirse o auditarse, carga además `reproducibilidad-geoespacial/SKILL.md`.
  - Para seleccionar, comparar o evaluar familias generales de modelos supervisados, usa `modelamiento-geoespacial/SKILL.md` como skill primaria.
  - Si una red neuronal ya está justificada por datos, recursos y baseline, usa `deep-learning-geoespacial/SKILL.md` como skill primaria; carga modelamiento solo si también se requiere comparación o diseño de familias generales fuera de su contrato.
  - Carga otras skills solo cuando su trigger sea necesario para la tarea.

  Distingue hechos, supuestos, resultados, recomendaciones y límites; no inventes CRS, fuentes, endpoints, disponibilidad, benchmarks, hiperparámetros, costos ni resultados. Los formatos, sensores y algoritmos se eligen según el caso y evidencia disponible. `cr2.md` no tiene significado asignado; no se interpreta.
```

## BATCH 5 — Validación

```yaml
action_id: P002
priority: P1
type: VALIDATE
execution_level: LUNA_LOW
status: READY
depends_on: [P001]
files_to_load:
  - skills/geoespacial/README.md
  - skills/geoespacial/modelamiento-geoespacial/SKILL.md
  - skills/geoespacial/deep-learning-geoespacial/SKILL.md
  - skills/geoespacial/reproducibilidad-geoespacial/SKILL.md
source: skills/geoespacial/
target: skills/geoespacial/
objective: "Validar las reglas de enrutamiento sin alterar arquitectura."
instructions:
  - "Comprobar ocho enlaces internos existentes."
  - "Comprobar trigger de reproducibilidad limitado a artefactos repetibles/auditables."
  - "Comprobar frontera coherente con triggers de modelamiento y deep learning."
  - "Comprobar cr2.md sin significado ni nueva ruta."
must_preserve:
  - "Ocho SKILL.md y cr2.md."
must_remove: []
acceptance_criteria:
  - "Todas las comprobaciones PASS."
  - "No hay enlaces internos rotos."
  - "No se creó, eliminó o renombró una skill."
rollback:
  - "Si falla, restaurar README mediante rollback de P001."
```

## Matriz de trazabilidad

| Original | Acción | Destino | Estado |
|---|---|---|---|
| skills/geoespacial/README.md | P001, P002 | Misma ruta | Editado y validado |
| Ocho SKILL.md | P002 | Mismas rutas | Sin cambios |
| skills/geoespacial/cr2.md | P002 | Misma ruta | Sin cambios |

Acciones READY: 2.  
Acciones BLOQUEADAS: 0.  
Ejecutar P001 y luego P002; no rediseñar ni reauditar.

