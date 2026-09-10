Aplica estrictamente:

prompts/audita_post_refactor_dominio.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
operaciones-tecnologia

Ruta:
skills/operaciones-tecnologia/

Fecha:
20260910

Auditoría previa:
docs/auditoria_operaciones-tecnologia_terra_20260910.md

Plan ejecutado:
docs/plan_refactor_operaciones-tecnologia_luna_20260910.md

Execution report:
docs/execution_report_operaciones-tecnologia_20260910.md

## Contexto de continuidad

Lee primero:

docs/estado_operaciones-tecnologia_20260910.md

Luego, únicamente si es necesario:

docs/auditoria_operaciones-tecnologia_terra_20260910.md
docs/plan_refactor_operaciones-tecnologia_luna_20260910.md
docs/execution_report_operaciones-tecnologia_20260910.md

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/operaciones-tecnologia/

## Estado conocido

La auditoría previa determinó:

P0 = 0
P1 = 0
P2 = 1
P3 = 1
AMBIGÜEDAD_SIGNIFICATIVA = NO
REVISIÓN_TERRA_ALTA = NO

Arquitectura:

MANTENER

La única acción autorizada fue:

OPS-P2-01

Objetivo:

hacer explícita en README.md la carga selectiva
y las combinaciones condicionales entre módulos.

La ejecución reportó:

OPS-P2-01 = PASS

La validación post-ejecución reportó:

VALIDACION_POST_EJECUCION = PASS

Solo se modificó:

skills/operaciones-tecnologia/README.md

## Objetivo de esta auditoría

No rediseñes el dominio desde cero.

Determina únicamente si la modificación:

1. implementó correctamente OPS-P2-01;
2. preservó la arquitectura previamente aprobada;
3. mejoró el routing;
4. mantuvo la carga selectiva;
5. no introdujo dependencias obligatorias nuevas;
6. no degradó densidad o claridad del README;
7. no introdujo pérdida funcional;
8. no creó ambigüedad entre módulos.

## Evaluación 1 — fidelidad al plan

Compara:

OPS-P2-01
→
README actual

Verifica:

- existencia de la sección `Carga selectiva y combinaciones`;
- patrón normal:
  README + instrucciones_base_ops.md + un módulo principal;
- complementos condicionales correctamente delimitados;
- cuatro combinaciones aprobadas;
- carácter no obligatorio de las combinaciones;
- preservación del inventario;
- preservación de módulos existentes.

No solicites coincidencia literal si la función prevista está correctamente implementada.

## Evaluación 2 — routing

Determina si README permite seleccionar con mayor claridad:

- módulo principal;
- módulo complementario;
- combinaciones de frontera.

Evalúa particularmente:

observabilidad/continuidad
↔
incidentes/cambios/DR

cloud/IaC/Kubernetes
↔
virtualización/contenedores

redes
↔
observabilidad

bases de datos
↔
incidentes/cambios/DR

Linux/Windows
↔
checklist de scripts

Comprueba que las combinaciones no se hayan convertido en dependencias obligatorias.

## Evaluación 3 — carga selectiva

Confirma si permanece válido:

README
+
instrucciones_base_ops.md
+
un módulo principal

y solo bajo necesidad:

+ otro módulo especializado
+ observabilidad/continuidad
+ incidentes/cambios/DR
+ redes
+ checklist

No recomiendes cargar todo el dominio.

## Evaluación 4 — densidad

Comprueba si la nueva sección:

- mejora routing;
- es compacta;
- evita tutoriales;
- evita repetir módulos completos;
- no añade explicaciones innecesarias;
- no incrementa contexto sin utilidad.

No inventes mediciones de tokens.

## Evaluación 5 — arquitectura

Revalida únicamente si el cambio introduce evidencia nueva contra la decisión previa.

La hipótesis de partida aprobada es:

MANTENER estructura plana.

No reabras decisiones sobre:

- fusiones;
- divisiones;
- subdirectorios;
- SKILL.md;

salvo que la modificación haya generado un problema nuevo concreto.

## Comparación antes/después

Incluye:

| Dimensión | Antes | Después | Resultado |
|---|---|---|---|
| Arquitectura | | | |
| Routing | | | |
| Carga selectiva | | | |
| Claridad de combinaciones | | | |
| Redundancia | | | |
| Densidad | | | |
| Cobertura | | | |
| Ambigüedad | | | |
| Mantenibilidad | | | |

No inventes cifras de tokens.

## Hallazgos

Clasifica:

P0
P1
P2
P3

P0:
pérdida funcional, error crítico o riesgo operacional serio.

P1:
corrección necesaria de alto impacto.

P2:
optimización útil pero no bloqueante.

P3:
mejora marginal.

No conviertas automáticamente el P3 previo de CRLF en trabajo activo.

## Gate Terra High

Marca:

REVISIÓN_TERRA_ALTA

solo si aparece:

- posible pérdida de conocimiento especializado;
- contradicción sustantiva;
- necesidad de rediseño estructural;
- alto impacto + baja confianza.

No repitas toda la auditoría con High.

## Criterio de cierre

Si:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_FINAL = PASS

entonces:

PLAN_EJECUCION_LUNA: NO REQUERIDO
ESTADO_WORKFLOW: STABLE

P2/P3 residuales pueden quedar como backlog.

No generes otro ciclo de refactor únicamente por mejoras marginales.

## Salidas

Genera:

docs/auditoria_post_refactor_operaciones-tecnologia_20260910.md

Actualiza:

docs/estado_operaciones-tecnologia_20260910.md

Genera:

docs/plan_post_refactor_operaciones-tecnologia_luna_20260910.md

SOLO si existe una corrección concreta P0/P1 o un P2 claramente justificado por evidencia nueva.

## Restricciones

NO modifiques:

skills/operaciones-tecnologia/

No ejecutes cambios.
No corrijas README.
No reorganices archivos.

Esta fase es exclusivamente:

ANALIZAR
COMPARAR
VALIDAR
DECIDIR

## Respuesta en chat

Responde únicamente:

DOMINIO: operaciones-tecnologia

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

P0:
P1:
P2:
P3:

FIDELIDAD_PLAN:
PASS | FAIL

ROUTING:
MEJORADO | SIN_CAMBIO | DEGRADADO

CARGA_SELECTIVA:
PASS | FAIL

REDUNDANCIA_RESIDUAL:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

PERDIDA_FUNCIONAL:
SI | NO

REVISION_TERRA_ALTA:
SI | NO

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ESTADO_WORKFLOW:
STABLE | IN_PROGRESS

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_post_refactor_operaciones-tecnologia_20260910.md

PLAN:
docs/plan_post_refactor_operaciones-tecnologia_luna_20260910.md
o NO_REQUERIDO