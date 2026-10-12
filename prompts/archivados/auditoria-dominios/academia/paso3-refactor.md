Aplica estrictamente:

prompts/ejecuta_refactor_skills_ejec.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
skills/academia/

Plan aprobado:
docs/plan_refactor_academia_luna_20260910.md

Estado:
docs/estado_academia_20260910.md

Ejecuta EXCLUSIVAMENTE:

A001

No ejecutes A002, A003, A004 ni A005.

Para A001:

1. carga únicamente los archivos indicados en files_to_load;
2. respeta exactamente instructions;
3. preserva todo must_preserve;
4. elimina únicamente must_remove;
5. cumple content_contract;
6. no incorpores contenido específico de:
   - IA;
   - programación;
   - matemáticas;
   - datos/estadística;
   - ciberseguridad;
7. no crees, elimines, muevas ni renombres archivos;
8. no modifiques ningún archivo fuera de:
   skills/academia/instrucciones_base_academia.md

No reaudites.
No rediseñes.
No propongas otra arquitectura.

Antes de modificar, conserva capacidad de rollback mediante Git/diff.

Después de escribir el archivo:

- verifica los acceptance_criteria de A001;
- registra A001 como PASS, FAIL o BLOCKED en:

docs/execution_report_academia_20260910.md

Si A001 no es PASS:
detente.

En el chat responde únicamente:

A001: PASS | FAIL | BLOCKED

Archivo modificado:
<ruta>

Criterios de aceptación:
PASS | detalle de fallo

Incidencias:
ninguna | detalle