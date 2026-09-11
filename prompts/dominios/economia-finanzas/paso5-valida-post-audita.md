Aplica estrictamente:

prompts/audita_post_refactor_dominio.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
economia-finanzas

Ruta:
skills/economia-finanzas/

Fecha:
20260910

Auditoría previa:
docs/auditoria_economia-finanzas_terra_20260910.md

Plan ejecutado:
docs/plan_refactor_economia-finanzas_luna_20260910.md

Execution report:
docs/execution_report_economia-finanzas_20260910.md

## Estado previo

La VALIDACION_POST_EJECUCION terminó:

PASS

La única acción ejecutada fue:

ECO-P1-01

El único archivo modificado fue:

skills/economia-finanzas/README.md

No se modificaron:

- instrucciones_base_eco.md
- módulos especializados
- checklist_modelos_decision_eco.md

No se crearon:

- nuevas skills;
- subdirectorios;
- SKILL.md.

## Alcance de esta auditoría

Esta fase es exclusivamente POST-REFACTOR.

NO repitas la auditoría funcional completa.
NO vuelvas a evaluar desde cero toda la cobertura temática.
NO propongas nuevas skills salvo que el cambio haya generado una brecha concreta.
NO reabras subdirectorios o SKILL.md salvo evidencia nueva.
NO verifiques legislación o datos financieros externos.

## Objetivo

Validar que el cambio de routing en README:

1. resolvió el P1 original;
2. preservó la arquitectura aprobada;
3. mejoró la carga selectiva;
4. no alteró límites metodológicos o financieros;
5. no introdujo nuevas dependencias obligatorias;
6. no convirtió el checklist en contexto inicial;
7. no degradó claridad o mantenibilidad.

## Validación 1 — fidelidad al plan

Comprueba que ECO-P1-01 se ejecutó fielmente.

Verifica:

- solo README modificado;
- inventario intacto;
- principios intactos;
- límites de asesoría intactos;
- sin cambios en módulos;
- sin cambios en base;
- sin cambios en checklist;
- sin nuevas skills;
- sin subdirectorios;
- sin SKILL.md.

## Validación 2 — resolución del P1

El hallazgo previo era:

README no declaraba:
- carga progresiva;
- módulo principal;
- secundarios condicionales;
- checklist como auxiliar de cierre/revisión.

Comprueba que ahora quede explícito:

README
+
instrucciones_base_eco.md
+
un módulo principal

y:

módulos secundarios solo por dependencia concreta

y:

checklist solo para:
- revisión;
- cierre;
- decisión sensible.

Determina si el P1 está:

RESUELTO
o
NO_RESUELTO

## Validación 3 — combinaciones de routing

Verifica que las seis combinaciones sigan siendo condicionales:

- evaluación de proyecto;
- análisis de inflación;
- análisis econométrico;
- costeo;
- modelo de negocio;
- diseño organizacional.

No deben interpretarse como cargas universales.

## Validación 4 — riesgos/regulación

Comprueba que:

riesgos_regulacion_chile_reglas.md

se agregue solo ante:

- regulación;
- cumplimiento;
- riesgo financiero relevante;
- continuidad;
- vigencia normativa.

No debe transformarse en dependencia universal de tareas financieras.

## Validación 5 — datos volátiles y actualidad

Comprueba que el README siga preservando la necesidad de verificar,
cuando corresponda:

- tasas;
- inflación;
- UF;
- IPC;
- tipo de cambio;
- mercados;
- precios;
- normativa;
- indicadores económicos.

No evalúes los valores en sí.

No inventes datos ni legislación.

## Validación 6 — límites sensibles

Comprueba que el routing no debilite los límites frente a:

- asesoría financiera personalizada;
- asesoría tributaria;
- asesoría legal;
- asesoría contable profesional;
- recomendación individualizada de inversión.

## Validación 7 — arquitectura

La auditoría previa aprobó:

- estructura plana;
- 8 componentes operativos;
- 2 auxiliares;
- 0 subdirectorios;
- 0 SKILL.md.

Mantén esa decisión salvo evidencia nueva.

No uses geoespacial como patrón obligatorio.

## Validación 8 — densidad y mantenibilidad

Evalúa si README quedó:

- más claro;
- más enrutable;
- sin sobrecarga innecesaria;
- sin repetición excesiva;
- sin inventar nuevos procedimientos.

No afirmes ahorro de tokens cuantitativo.

Puedes afirmar solo mejora cualitativa de selección de contexto si la evidencia lo soporta.

## Hallazgos

Clasifica:

P0
P1
P2
P3

Para cierre STABLE:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_POST_EJECUCION = PASS

P2/P3 pueden quedar como backlog no bloqueante.

## Terra High

Trabaja con Medium.

Usa REVISION_TERRA_ALTA solo si aparece un problema nuevo de:

- regulación;
- riesgo financiero sensible;
- pérdida de límites;
- contradicción metodológica;
- impacto alto + baja confianza.

No repitas toda la auditoría en High.

## Plan Luna adicional

Genera un nuevo plan solo si existen P0/P1 accionables.

Si:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO

entonces:

PLAN_EJECUCION_LUNA:
NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_post_refactor_economia-finanzas_20260910.md

Actualiza:

docs/estado_economia-finanzas_20260910.md

Solo si aparece P0/P1:

docs/plan_post_refactor_economia-finanzas_luna_20260910.md

## Cierre

Si:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_POST_EJECUCION = PASS

establece:

ESTADO_WORKFLOW: STABLE

## Respuesta en chat

Responde únicamente:

DOMINIO: economia-finanzas

ESTADO_POST_REFACTOR:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_CORRECCION

P0:
P1:
P2:
P3:

P1_ROUTING_ORIGINAL:
RESUELTO | NO_RESUELTO

ARQUITECTURA:
MANTENER | AJUSTAR | REFACTORIZAR

ROUTING:
PASS | FAIL

CHECKLIST_CONDICIONAL:
PASS | FAIL

RIESGOS_REGULACION:
PASS | FAIL

ACTUALIDAD_DATOS:
PASS | FAIL

LIMITES_SENSIBLES:
PASS | FAIL

REDUNDANCIA:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

REVISION_TERRA_ALTA:
SI | NO

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ESTADO_WORKFLOW:
STABLE | CONTINUAR

INFORME:
docs/auditoria_post_refactor_economia-finanzas_20260910.md