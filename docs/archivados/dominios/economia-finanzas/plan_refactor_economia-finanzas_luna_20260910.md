# Plan de refactorización — economia-finanzas

Fecha: 20260910  
Origen: `docs/auditoria_economia-finanzas_terra_20260910.md`

## Alcance y regla de ejecución

Ejecutar únicamente la acción siguiente cuando exista autorización explícita. El plan modifica solo el auxiliar `skills/economia-finanzas/README.md`. No modifica la base, módulos, checklist, estructura física ni crea skills.

```yaml
- action_id: ECO-P1-01
  priority: P1
  type: EDIT
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: []
  files_to_load:
    - docs/auditoria_economia-finanzas_terra_20260910.md
    - skills/economia-finanzas/README.md
    - skills/economia-finanzas/instrucciones_base_eco.md
    - skills/economia-finanzas/checklist_modelos_decision_eco.md
  source: README actual y contratos de carga de base/checklist
  target: skills/economia-finanzas/README.md
  objective: Declarar routing de carga progresiva sin cambiar el inventario ni las reglas especializadas.
  instructions:
    - Conservar sin cambios el título, descripción, inventario y principios actuales.
    - Sustituir la recomendación de uso por una sección de carga progresiva posterior al inventario.
    - Declarar el patrón normal: README + instrucciones_base_eco.md + un módulo principal según la tarea.
    - Declarar módulos secundarios solo ante dependencia concreta y con razón explícita.
    - Declarar checklist_modelos_decision_eco.md como auxiliar solo para revisión, cierre o decisión sensible; no como contexto inicial obligatorio.
    - Añadir las seis combinaciones condicionales auditadas: evaluación de proyecto; análisis de inflación; análisis econométrico; costeo; modelo de negocio; diseño organizacional.
    - Indicar que riesgos_regulacion_chile_reglas.md se agrega solo ante regulación, riesgo relevante o continuidad.
  must_preserve:
    - Inventario de diez archivos y sus nombres/descripciones actuales.
    - Límites frente a asesoría financiera, tributaria, legal, contable e inversión personalizada.
    - Regla de verificar datos, normativa e indicadores vigentes con fecha, fuente y alcance.
    - Estructura plana, ocho componentes operativos y dos auxiliares.
  must_remove:
    - La formulación que presenta el checklist como carga siempre obligatoria para tareas sensibles sin precisar su uso de cierre, revisión o decisión.
  acceptance_criteria:
    - README declara inequívocamente base + un módulo principal y secundarios condicionales.
    - README no ordena cargar todos los módulos ni el checklist por defecto.
    - Las seis combinaciones aparecen como condicionales, sin herramientas, productos, cifras, versiones ni reglas nuevas.
    - El inventario, límites y principios existentes permanecen intactos.
    - No se modifica ningún archivo fuera de README.md.
  rollback: Restaurar solo README.md a su contenido previo si falla un criterio; no modificar otros archivos.
  content_contract:
    required_sections:
      - Descripción
      - Archivos del dominio
      - Carga progresiva
      - Principios del dominio
    concepts_to_preserve:
      - decisiones prudentes
      - datos actuales y fuentes
      - supuestos e incertidumbre
      - límites de asesoría personalizada
    duplicated_content_to_remove:
      - obligación ambigua del checklist fuera de revisión, cierre o decisión sensible
    forbidden_changes:
      - No crear módulos, subdirectorios ni SKILL.md
      - No renombrar, mover, fusionar o eliminar archivos
      - No alterar reglas de base, módulos o checklist
      - No agregar asesoría financiera, legal, tributaria, contable o de inversión personalizada
```
