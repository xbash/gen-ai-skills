Continúa el plan aprobado:

docs/plan_refactor_academia_luna_20260910.md

Ejecuta exclusivamente:

A002
A003

A001 ya debe figurar PASS.

Usa:
GPT-5.6 Luna / Low

## A002

Aplica exactamente replacement_content.

No reformules el texto.
No mejores el router por iniciativa propia.
No modifiques otra sección del README.

Verifica sus acceptance_criteria.

## A003

Ejecuta solo VALIDATE.

Comprueba:

- que A001 y A002 estén PASS;
- que la base consolidada contenga el workflow genérico completo;
- que se hayan preservado las marcas de celda;
- que no exista contenido único de analisis_tecnico_conceptual.md sin destino;
- que los cinco perfiles no hayan sido modificados;
- que el checklist no haya sido modificado;
- que README solo apunte a rutas existentes.

No corrijas automáticamente ningún fallo.

Actualiza:

docs/execution_report_academia_20260910.md

NO ejecutes A004.
NO ejecutes A005.

Al finalizar:

A002: PASS | FAIL | BLOCKED
A003: PASS | FAIL | BLOCKED

Si A003 no es PASS:
detente.