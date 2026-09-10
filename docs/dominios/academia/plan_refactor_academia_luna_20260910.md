# PLAN_EJECUCION_LUNA — academia

Proyecto: `C:/rutinas-local/gen-ai-skills-root/gen-ai-skills`  
Dominio: `skills/academia/`  
Decisión aprobada: consolidar el workflow genérico en la base, mantener los cinco perfiles especializados, mantener el checklist y la estructura plana.

## BATCH 1 — Contenido

```yaml
action_id: A001
priority: P1
type: MERGE
execution_level: LUNA_MEDIUM
status: READY
depends_on: []
files_to_load:
  - skills/academia/instrucciones_base_academia.md
  - skills/academia/analisis_tecnico_conceptual.md
source:
  - skills/academia/instrucciones_base_academia.md
  - skills/academia/analisis_tecnico_conceptual.md
target: skills/academia/instrucciones_base_academia.md
objective: "Convertir la base en el único workflow genérico de revisión de notebooks."
instructions:
  - "Reescribir únicamente el archivo target usando ambos sources."
  - "Conservar los principios de la base y absorber las instrucciones únicas del análisis técnico-conceptual."
  - "Eliminar toda repetición literal o semántica entre las dos fuentes."
  - "No incorporar contenido específico de IA, programación, matemáticas, datos/estadística o ciberseguridad."
must_preserve:
  - "Rol académico, técnico y pedagógico; español latinoamericano."
  - "No inventar datos, columnas, rutas, variables, resultados, métricas, fórmulas ni conclusiones."
  - "Mapeo de celdas, incluido el tratamiento de # codigo N, # texto N y celdas incompletas sin marca."
  - "Cambios mínimos; respeto de variables, imports, rutas, estilo y secuencia existentes."
  - "Propuestas de código y Markdown listas para pegar; advertencia explícita si falta información."
  - "Revisión técnica, reproducibilidad, trazabilidad y criterios de salida actuales."
must_remove:
  - "Duplicación de rol, restricciones, revisión mínima y formato que actualmente existe en ambas fuentes."
acceptance_criteria:
  - "El target contiene un workflow genérico completo para revisar un notebook sin cargar analisis_tecnico_conceptual.md."
  - "El target conserva todas las restricciones y capacidades únicas enumeradas en must_preserve."
  - "El target no contiene criterios propios de los cinco perfiles especializados."
  - "No se modifica ningún archivo fuera del target."
rollback:
  - "Restaurar el contenido previo de instrucciones_base_academia.md desde el diff o respaldo creado antes de ejecutar A001."
content_contract:
  required_sections:
    - "Rol y alcance"
    - "Contexto e insumos del notebook"
    - "Workflow de revisión y mapeo de celdas"
    - "Intervención de celdas de código, Markdown y celdas ya implementadas"
    - "Restricciones"
    - "Criterios de revisión técnica"
    - "Formato de salida esperado"
    - "Activación de perfiles especializados y checklist"
  concepts_to_preserve:
    - "Todos los elementos de must_preserve."
  duplicated_content_to_remove:
    - "Reglas generales repetidas entre las dos fuentes."
  forbidden_changes:
    - "No crear, eliminar, mover ni renombrar archivos."
    - "No añadir dependencias, herramientas, cifras, resultados ni supuestos no presentes en las fuentes."
    - "No cambiar el alcance a una disciplina específica."
```

## BATCH 2 — Referencias

```yaml
action_id: A002
priority: P1
type: EDIT
execution_level: LUNA_LOW
status: READY
depends_on:
  - A001
files_to_load:
  - skills/academia/README.md
source: skills/academia/README.md
target: skills/academia/README.md
objective: "Actualizar el router para la base consolidada y perfiles con rutas reales."
instructions:
  - "Eliminar de la tabla la fila de analisis_tecnico_conceptual.md."
  - "Reemplazar por completo la sección '## Recomendacion de uso' con replacement_content."
  - "No modificar ninguna otra sección del README."
must_preserve:
  - "Descripción, tabla de archivos restantes y principios del dominio."
  - "El checklist como recurso de cierre."
must_remove:
  - "La referencia a analisis_tecnico_conceptual.md."
  - "La expresión '02 a 06'."
acceptance_criteria:
  - "El README no referencia analisis_tecnico_conceptual.md ni archivos 02 a 06."
  - "El README declara la base consolidada como unidad primaria."
  - "El README enumera los cinco perfiles reales y sus triggers."
  - "El checklist queda limitado a cierre, entrega o auditoría."
rollback:
  - "Restaurar los dos bloques reemplazados desde el diff o respaldo previo a A002."
content_contract:
  required_sections:
    - "Recomendacion de uso"
  concepts_to_preserve:
    - "Carga selectiva y carácter transversal del dominio."
  duplicated_content_to_remove:
    - "Router hacia el análisis genérico separado."
  forbidden_changes:
    - "No cambiar nombres de perfiles, su alcance ni los principios del README."
replacement_content: |
  ## Recomendacion de uso

  Carga `instrucciones_base_academia.md` como unidad primaria para revisar cualquier notebook.

  Agrega solo un perfil especializado cuando el tema del notebook cambie los criterios de revision:

  - `analisis_notebook_ia.md` para IA, ML, DL, NLP, vision, RAG, agentes o modelos generativos.
  - `analisis_notebook_programacion.md` para Python, algoritmos, POO, scripts o fundamentos de software.
  - `analisis_notebook_datos_estadistica.md` para datos tabulares, visualizacion, estadistica, inferencia o EDA.
  - `analisis_notebook_matematicas.md` para algebra, calculo, optimizacion o metodos numericos.
  - `analisis_notebook_ciberseguridad.md` para ciberseguridad defensiva academica.

  Si el tema aun no esta identificado, no cargues un perfil especializado. Carga `checklist_revision_notebook.md` solo para verificar consistencia antes de entregar, durante una revision o en una auditoria.
```

## BATCH 3 — Validación previa a limpieza

```yaml
action_id: A003
priority: P1
type: VALIDATE
execution_level: LUNA_LOW
status: READY
depends_on:
  - A001
  - A002
files_to_load:
  - skills/academia/instrucciones_base_academia.md
  - skills/academia/analisis_tecnico_conceptual.md
  - skills/academia/README.md
  - skills/academia/checklist_revision_notebook.md
  - skills/academia/analisis_notebook_programacion.md
  - skills/academia/analisis_notebook_matematicas.md
  - skills/academia/analisis_notebook_datos_estadistica.md
  - skills/academia/analisis_notebook_ia.md
  - skills/academia/analisis_notebook_ciberseguridad.md
source: skills/academia/
target: docs/execution_report_academia_20260910.md
objective: "Verificar la migración completa antes de eliminar el análisis genérico original."
instructions:
  - "Comparar el contenido migrado con los conceptos de must_preserve de A001."
  - "Verificar los cuatro criterios de aceptación de A002."
  - "Verificar que los cinco perfiles y el checklist existen y conservan sus fronteras especializadas o de cierre."
  - "Registrar PASS, FAIL o BLOCKED; no corregir errores."
must_preserve:
  - "El archivo fuente analisis_tecnico_conceptual.md hasta que A003 sea PASS."
must_remove: []
acceptance_criteria:
  - "A001 y A002 figuran PASS."
  - "La base consolidada cubre el workflow genérico y las marcas de celda."
  - "El README resuelve solo a rutas existentes."
  - "Los cinco perfiles y el checklist no fueron modificados."
  - "No hay contenido único del análisis genérico sin destino en la base."
rollback:
  - "No aplica: acción de solo validación."
```

## BATCH 4 — Limpieza

```yaml
action_id: A004
priority: P1
type: DELETE
execution_level: LUNA_LOW
status: READY
depends_on:
  - A003
files_to_load:
  - skills/academia/analisis_tecnico_conceptual.md
  - docs/execution_report_academia_20260910.md
source: skills/academia/analisis_tecnico_conceptual.md
target: skills/academia/analisis_tecnico_conceptual.md
objective: "Eliminar el archivo genérico solo después de validación PASS de su migración."
instructions:
  - "Verificar que A003 figure PASS en el informe de ejecución."
  - "Eliminar exclusivamente el target."
  - "Si A003 no es PASS, marcar esta acción BLOCKED y no eliminar."
must_preserve:
  - "El workflow genérico consolidado en instrucciones_base_academia.md."
  - "Los cinco perfiles, el checklist y el README."
must_remove:
  - "skills/academia/analisis_tecnico_conceptual.md"
acceptance_criteria:
  - "A003 está PASS antes de eliminar."
  - "El único archivo eliminado es el target."
  - "No quedan referencias al target en README."
rollback:
  - "Restaurar el archivo eliminado desde Git o desde el respaldo previo a A004."
```

## BATCH 5 — Validación final

```yaml
action_id: A005
priority: P1
type: VALIDATE
execution_level: LUNA_LOW
status: READY
depends_on:
  - A004
files_to_load:
  - skills/academia/README.md
  - skills/academia/instrucciones_base_academia.md
  - skills/academia/checklist_revision_notebook.md
  - skills/academia/analisis_notebook_programacion.md
  - skills/academia/analisis_notebook_matematicas.md
  - skills/academia/analisis_notebook_datos_estadistica.md
  - skills/academia/analisis_notebook_ia.md
  - skills/academia/analisis_notebook_ciberseguridad.md
source: skills/academia/
target: docs/execution_report_academia_20260910.md
objective: "Confirmar la arquitectura aprobada y ausencia de referencias obsoletas."
instructions:
  - "Verificar las ocho rutas aprobadas y que el archivo eliminado no exista."
  - "Verificar que README enruta a base consolidada, a máximo un perfil por trigger y al checklist solo de cierre."
  - "Verificar que ninguna unidad especializada haya perdido su frontera indicada en A003."
  - "Registrar PASS, FAIL o BLOCKED; no corregir errores."
must_preserve:
  - "Arquitectura plana y carga selectiva aprobadas."
must_remove:
  - "Referencias obsoletas a analisis_tecnico_conceptual.md y 02 a 06."
acceptance_criteria:
  - "Existen README, base, checklist y los cinco perfiles."
  - "No existe analisis_tecnico_conceptual.md."
  - "No hay referencias internas obsoletas."
  - "La carga selectiva sigue siendo posible."
rollback:
  - "No aplica: acción de solo validación."
```

## Matriz de trazabilidad

| Archivo original | Acción | Archivo destino | Contenido preservado | Estado esperado |
|---|---|---|---|---|
| `instrucciones_base_academia.md` | MERGE | Mismo archivo | Rol, rigor, límites y formato base. | Reescrito |
| `analisis_tecnico_conceptual.md` | MERGE → DELETE | `instrucciones_base_academia.md` | Workflow, marcas de celda, intervención y revisión técnica únicos. | Eliminado tras A003 PASS |
| `README.md` | EDIT | Mismo archivo | Descripción, tabla restante, principios y router selectivo. | Actualizado |
| Cinco `analisis_notebook_*.md` | MANTENER | Mismos archivos | Criterios especializados por dominio. | Sin cambios |
| `checklist_revision_notebook.md` | MANTENER | Mismo archivo | Validación final independiente. | Sin cambios |

## Criterios globales

- Ninguna regla única del análisis genérico se pierde.
- Los cinco perfiles especializados y el checklist permanecen sin cambios.
- El README no contiene rutas o numeración obsoletas.
- `DELETE` se ejecuta exclusivamente si A003 es PASS.
- Luna no toma decisiones arquitectónicas nuevas.
