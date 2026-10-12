Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Realiza nuevamente únicamente la VALIDACIÓN INTERMEDIA previa a IG-P1-07.

Esta ejecución corrige un criterio defectuoso de la validación anterior.

NO modifiques archivos bajo skills/investigacion-general/.
NO ejecutes IG-P1-07.
NO reescribas la base.
NO propongas nuevas skills.
NO rediseñes la arquitectura.

## Archivos a cargar

Carga únicamente:

docs/plan_refactor_investigacion-general_luna_20260910.md

docs/execution_report_investigacion-general_20260910.md

skills/investigacion-general/instrucciones_base_investiga.md

skills/investigacion-general/checklist_investigacion.md

skills/investigacion-general/README.md

skills/investigacion-general/diseno_metodologico_datos_reglas.md

skills/investigacion-general/revision_evidencia_fuentes_reglas.md

skills/investigacion-general/analisis_inferencia_resultados_reglas.md

skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md

skills/investigacion-general/etica_integridad_impacto_reglas.md

## Corrección del criterio anterior

La validación anterior marcó:

INVARIANTES_BASE = FAIL

porque instrucciones_base_investiga.md no contiene actualmente
un contrato de carga explícito.

Ese criterio era incorrecto para esta fase.

El plan aprobado establece que IG-P1-07 debe:

- convertir la base en un contrato transversal compacto;
- añadir una lista de precedencia;
- mantener base siempre;
- usar un módulo principal;
- cargar secundarios por dependencia;
- usar checklist al cierre/revisión.

Por tanto:

NO exijas que el contrato de carga ya exista en la BASE ORIGINAL.

Antes de IG-P1-07 debes comprobar dos cosas distintas:

A. que el routing ya exista y esté correctamente definido en README.md;

B. que el plan/content_contract de IG-P1-07 obligue explícitamente
a incorporar ese contrato en la nueva versión de la base.

La ausencia actual del contrato de carga en la base original:

NO constituye pérdida normativa;
NO constituye ambigüedad;
NO debe bloquear IG-P1-07;

siempre que A y B estén en PASS.

## Validación 1 — Inventario

Confirma:

- exactamente ocho Markdown esperados;
- sin subdirectorios;
- sin SKILL.md;
- base original intacta;
- checklist intacto.

## Validación 2 — Contratos

Confirma que los cinco módulos cumplen sus respectivos content_contract.

## Validación 3 — Trazabilidad original

Verifica nuevamente la matriz existente de las 12 secciones originales.

Cada regla normativa original debe tener destino funcional en:

BASE
DISENO_DATOS
EVIDENCIA_FUENTES
ANALISIS_INFERENCIA
REPRODUCIBILIDAD
ETICA_INTEGRIDAD
CHECKLIST

No debe existir:

- regla original sin destino;
- pérdida de condición;
- cambio semántico;
- transformación de regla condicional en universal.

## Validación 4 — Invariantes originales

Comprueba que la BASE ORIGINAL conserve los invariantes que ya contenía:

- rol y alcance transversal;
- independencia disciplinaria;
- principio de evidencia;
- no invención;
- proporcionalidad de conclusiones;
- separación entre evidencia, resultado, interpretación,
  inferencia, recomendación y limitación;
- límites de causalidad;
- solicitud de información faltante;
- forma de trabajo;
- formato de respuesta proporcional.

NO incluyas aquí el contrato de carga como requisito preexistente.

Resultado:

INVARIANTES_ORIGINALES:
PASS | FAIL

## Validación 5 — Contrato de carga futuro

Verifica:

### README actual

Debe establecer:

README
+
base
+
un módulo principal
+
secundarios solo por dependencia
+
checklist solo al cierre/revisión

### Plan IG-P1-07

Debe exigir incorporar en la nueva base:

- contrato de carga;
- precedencia;
- base siempre;
- módulo principal;
- secundarios condicionales;
- checklist de cierre/revisión.

Resultado:

CONTRATO_CARGA_PLANIFICADO:
PASS | FAIL

## Validación 6 — Routing

Confirma:

- cada módulo tiene USAR CUANDO;
- cada módulo tiene NO USAR CUANDO;
- no se cargan todos los módulos por defecto;
- README y plan IG-P1-07 son coherentes.

## Validación 7 — Redundancia normativa

Mantén el criterio anterior:

recordatorios y referencias cruzadas no son redundancia perjudicial.

Marca problema únicamente si una misma regla normativa tiene
autoridad duplicada y mismo propósito en varios módulos.

## Interpretación de pérdida normativa

PERDIDA_NORMATIVA = SI

solo si una regla que EXISTÍA en la base original:

- desapareció;
- no tiene destino;
- cambió de significado;
- perdió una condición metodológica.

La ausencia en la base original de una regla NUEVA que IG-P1-07
está explícitamente encargado de añadir NO es pérdida normativa.

## Criterio de autorización

IG-P1-07 = AUTHORIZED

si:

INVENTARIO = PASS
CONTRATOS = PASS
TRAZABILIDAD = PASS
INVARIANTES_ORIGINALES = PASS
CONTRATO_CARGA_PLANIFICADO = PASS
ROUTING = PASS
REDUNDANCIA_NORMATIVA = PASS
PERDIDA_NORMATIVA = NO
AMBIGÜEDAD_SIGNIFICATIVA = NO

En otro caso:

IG-P1-07 = BLOCKED

## Reporte

Actualiza:

docs/execution_report_investigacion-general_20260910.md

NO elimines la validación anterior.

Añade:

## VALIDACION_INTERMEDIA_CORREGIDA_IG-P1-07

INVENTARIO:
PASS | FAIL

CONTRATOS:
PASS | FAIL

TRAZABILIDAD:
PASS | FAIL

INVARIANTES_ORIGINALES:
PASS | FAIL

CONTRATO_CARGA_PLANIFICADO:
PASS | FAIL

ROUTING:
PASS | FAIL

REDUNDANCIA_NORMATIVA:
PASS | FAIL

PERDIDA_NORMATIVA:
SI | NO

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

IG-P1-07:
AUTHORIZED | BLOCKED

CORRECCION_APLICADA:
La validación anterior exigía incorrectamente que el contrato de carga
ya existiera en la base original, aunque el plan asigna su incorporación
a IG-P1-07.

INCIDENCIAS:

No ejecutes IG-P1-07.

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

VALIDACION_INTERMEDIA_CORREGIDA:
PASS | FAIL

INVENTARIO:
CONTRATOS:
TRAZABILIDAD:
INVARIANTES_ORIGINALES:
CONTRATO_CARGA_PLANIFICADO:
ROUTING:
REDUNDANCIA_NORMATIVA:

PERDIDA_NORMATIVA:
AMBIGÜEDAD_SIGNIFICATIVA:

IG-P1-07:
AUTHORIZED | BLOCKED

INCIDENCIAS:

SIGUIENTE_ACCION: