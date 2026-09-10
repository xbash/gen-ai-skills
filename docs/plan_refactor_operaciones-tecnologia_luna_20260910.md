# Plan de refactorización — operaciones-tecnologia

Fecha: 20260910  
Origen: `docs/auditoria_operaciones-tecnologia_terra_20260910.md`

## Acciones

```yaml
- action_id: OPS-P2-01
  priority: P2
  type: EDIT
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: []
  files_to_load:
    - docs/auditoria_operaciones-tecnologia_terra_20260910.md
    - skills/operaciones-tecnologia/README.md
  source: skills/operaciones-tecnologia/README.md
  target: skills/operaciones-tecnologia/README.md
  objective: Hacer explícita la carga selectiva de un módulo principal y los casos que requieren módulos complementarios, sin modificar la especialización existente.
  instructions:
    - Mantener el inventario actual de archivos y la sección Uso recomendado.
    - Añadir una sección breve posterior a Uso recomendado titulada Carga selectiva y combinaciones.
    - Indicar que la carga normal es README + instrucciones_base_ops.md + un módulo principal según la tarea.
    - Declarar que observabilidad/continuidad se añade para señales, alertas, logs, métricas, capacidad o evidencia operativa; incidentes/cambios/DR para respuesta coordinada, cambio, rollback, restauración o DR; redes para DNS, rutas, puertos, firewall, TLS o conectividad; y checklist solo para scripts, comandos, runbooks, automatizaciones o cambios.
    - Explicitar cuatro combinaciones condicionales: despliegue Kubernetes cloud o GitOps usa cloud/IaC/Kubernetes y virtualización/contenedores; caída de servicio con síntomas de conectividad usa redes y observabilidad, más el módulo de plataforma afectado si corresponde; cambio o recuperación de base de datos usa bases de datos e incidentes/cambios/DR, y observabilidad cuando se investigan señales o capacidad; script multiplataforma usa el módulo Linux o Windows correspondiente y el checklist.
    - Señalar que las combinaciones son condicionales, no una carga obligatoria por defecto.
  must_preserve:
    - Los once nombres y descripciones actuales del inventario.
    - La regla de cargar instrucciones_base_ops.md como instrucción principal.
    - El carácter auxiliar y condicional del checklist.
    - La especialización separada de los nueve componentes operativos.
  must_remove: []
  acceptance_criteria:
    - El README conserva el inventario actual y permanece coherente con los archivos existentes.
    - La nueva sección permite seleccionar un módulo principal y complementos sin afirmar que se deban cargar todos.
    - Las cuatro combinaciones están descritas como condicionales y no cambian alcance técnico de ningún módulo.
    - No se modifica otro archivo bajo skills/operaciones-tecnologia/.
  rollback: Restaurar el README a su contenido anterior si la guía agrega una combinación incorrecta o contradice el inventario actual.
  content_contract:
    required_sections:
      - Carga selectiva y combinaciones
    concepts_to_preserve:
      - base más módulos específicos según la tarea
      - checklist condicional para scripts, comandos, runbooks o cambios
      - separación entre especialidades operativas
    duplicated_content_to_remove: []
    forbidden_changes:
      - No fusionar, mover, renombrar ni eliminar archivos.
      - No introducir comandos, productos, versiones o capacidades no presentes en los módulos actuales.
      - No convertir combinaciones condicionales en una carga predeterminada.
```

## Validación posterior prevista

Tras una eventual ejecución, validar la presencia de la sección, los nombres de archivos, las cuatro combinaciones condicionales, la ausencia de cambios fuera de `README.md` y el estado Git acotado al dominio. La ejecución requiere autorización separada; este plan no ejecuta cambios.
