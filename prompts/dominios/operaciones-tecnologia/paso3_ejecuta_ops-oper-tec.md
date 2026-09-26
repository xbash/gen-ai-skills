Aplica estrictamente:

prompts/ejecuta_refactor_skills_ejec.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
operaciones-tecnologia

Ruta:
skills/operaciones-tecnologia/

Fecha:
20260910

Plan:
docs/plan_refactor_operaciones-tecnologia_luna_20260910.md

Acciones autorizadas:
OPS-P2-01

Ejecuta EXCLUSIVAMENTE:

OPS-P2-01

No audites.
No rediseñes.
No propongas nuevas mejoras.
No modifiques ningún archivo fuera de:

skills/operaciones-tecnologia/README.md

## Reglas

1. Carga únicamente los files_to_load declarados en OPS-P2-01.

2. Conserva:
   - el inventario actual;
   - los once nombres y descripciones;
   - la regla de cargar instrucciones_base_ops.md como instrucción principal;
   - el carácter condicional del checklist;
   - la separación entre los nueve componentes operativos.

3. Añade únicamente la sección:

Carga selectiva y combinaciones

posterior a la sección Uso recomendado.

4. La guía debe declarar como patrón normal:

README
+
instrucciones_base_ops.md
+
un módulo principal según la tarea

5. Explicita como complementos condicionales:

- observabilidad/continuidad:
  señales, alertas, logs, métricas, capacidad o evidencia operativa;

- incidentes/cambios/DR:
  respuesta coordinada, cambios, rollback, restauración o DR;

- redes:
  DNS, rutas, puertos, firewall, TLS o conectividad;

- checklist:
  scripts, comandos, runbooks, automatizaciones o cambios.

6. Incluye las cuatro combinaciones aprobadas en el plan:

- despliegue Kubernetes cloud o GitOps;
- caída de servicio con síntomas de conectividad;
- cambio o recuperación de base de datos;
- script multiplataforma.

7. Declara explícitamente que las combinaciones son condicionales
y NO constituyen una carga obligatoria.

8. No introduzcas:
   - productos nuevos;
   - versiones;
   - comandos;
   - herramientas;
   - capacidades no presentes;
   - nuevos módulos.

9. No fusiones, muevas, renombres ni elimines archivos.

## Validación

Después de editar:

- verifica que README conserve el inventario;
- verifica que existan las cuatro combinaciones;
- verifica que todas sean condicionales;
- verifica que no se indique cargar todos los módulos;
- verifica que no se haya modificado otro archivo del dominio.

Actualiza:

docs/execution_report_operaciones-tecnologia_20260910.md

con:

ACTION_ID: OPS-P2-01
STATUS: PASS | FAIL | BLOCKED
FILES_LOADED:
FILES_MODIFIED:
ACCEPTANCE_CRITERIA:
INCIDENTS:

Si la acción no termina PASS:
detente.

En el chat responde únicamente:

DOMINIO: operaciones-tecnologia
ACCION: OPS-P2-01
RESULTADO: PASS | FAIL | BLOCKED
ARCHIVOS_MODIFICADOS:
CRITERIOS_ACEPTACION:
INCIDENCIAS:
SIGUIENTE_ACCION: