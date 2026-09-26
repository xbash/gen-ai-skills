Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
ciencia-ingenieria-datos

Ruta:
skills/ciencia-ingenieria-datos/

Fecha:
20260910

Tipo de ejecución:
AUDITORÍA DE DOMINIO FUNCIONAL

Contexto de continuidad:

Lee primero:

docs/estado_ciencia-ingenieria-datos_20260910.md

y:

docs/precheck_ciencia-ingenieria-datos_20260910.md

Usa esos archivos únicamente para conocer:
- estado del dominio;
- resultado del PRECHECK;
- fase actual;
- artefactos existentes;
- siguiente acción.

La evidencia principal de esta auditoría debe ser el contenido REAL y ACTUAL de:

skills/ciencia-ingenieria-datos/

No asumas que la arquitectura existente es correcta simplemente porque los
archivos contienen instrucciones.

## Objetivo

Audita técnica y funcionalmente todas las skills del dominio para determinar:

- utilidad real;
- aplicabilidad;
- granularidad;
- redundancia;
- solapamiento semántico;
- claridad de triggers;
- densidad informativa;
- costo de contexto;
- mantenibilidad;
- reutilización;
- portabilidad;
- cobertura del dominio;
- oportunidades de simplificación;
- posibles fusiones, divisiones, reubicaciones o eliminaciones.

El objetivo principal es maximizar:

calidad operativa / costo de contexto

No optimices solamente por cantidad de archivos o palabras.

Una reducción de tokens que disminuya cobertura, precisión, reproducibilidad,
seguridad o capacidad operativa debe considerarse una regresión.

## Criterio especial para este dominio

Presta especial atención a posibles solapamientos entre áreas como:

- fundamentos matemáticos y estadísticos;
- análisis estadístico y modelamiento;
- machine learning / deep learning / IA;
- minería y pipelines;
- bases de datos;
- big data y sistemas distribuidos;
- programación y software;
- metodología experimental y reproducibilidad;
- ética, privacidad y gobernanza;
- NLP, visión y datos audiovisuales;
- visualización y comunicación.

Estos grupos NO son decisiones previas de fusión.

Son únicamente áreas donde debes comprobar si:

- existen responsabilidades duplicadas;
- los límites entre skills son claros;
- hay contenido que debería permanecer separado;
- hay reglas transversales que deberían centralizarse;
- existe conocimiento general innecesariamente repetido.

## Reglas metodológicas

1. Lee primero el README del dominio, si existe.
2. Identifica todos los archivos operativos y auxiliares.
3. Evalúa el dominio como sistema, no archivo por archivo aisladamente.
4. No propongas fusiones solamente porque dos skills compartan vocabulario.
5. Diferencia repetición necesaria de redundancia perjudicial.
6. No elimines conocimiento especializado sin justificar su destino.
7. No conviertas automáticamente una skill extensa en varias.
8. No conviertas automáticamente conceptos o herramientas en skills independientes.
9. Mantén trazabilidad entre arquitectura actual y arquitectura propuesta.
10. Distingue claramente evidencia, inferencia y recomendación.

## Optimización de contexto

Identifica especialmente:

- reglas duplicadas;
- prosa explicativa innecesaria;
- definiciones de conocimiento general;
- ejemplos prescindibles;
- instrucciones que podrían vivir en una capa superior;
- reglas especializadas que deberían mantenerse bajo demanda;
- skills que puedan cargarse selectivamente;
- dependencias innecesarias entre skills.

Evalúa si para la mayoría de las tareas debería ser posible cargar:

README + una skill primaria

y agregar otras únicamente cuando exista una dependencia concreta.

## Gate de escalamiento

Trabaja con razonamiento MEDIUM.

Marca como:

REVISIÓN_TERRA_ALTA

solo decisiones que impliquen:

- eliminar conocimiento especializado;
- fusionar tres o más skills con responsabilidades distintas;
- afectar reproducibilidad, seguridad o gobernanza;
- evidencia contradictoria;
- impacto alto y confianza baja.

No vuelvas a analizar todo el dominio con esfuerzo High.

## Salidas requeridas

Guarda la auditoría completa en:

docs/auditoria_ciencia-ingenieria-datos_terra_20260910.md

Si existen cambios justificados, genera además:

docs/plan_refactor_ciencia-ingenieria-datos_luna_20260910.md

El plan debe seguir estrictamente el contrato definido en:

prompts/audita_skills_dominios_v2_arq.md

Cada acción debe incluir como mínimo:

action_id
priority
type
execution_level
status
depends_on
files_to_load
target
objective
instructions
must_preserve
must_remove
acceptance_criteria
rollback

Para CREATE, EDIT, REWRITE o MERGE debe incluir:

content_contract

Si una acción puede resolverse mediante reemplazo exacto, incluye:

replacement_content

Clasifica cada acción como:

LUNA_LOW
LUNA_MEDIUM
TERRA_REQUIRED

No delegues decisiones arquitectónicas a Luna.

## Archivo de estado

Actualiza también:

docs/estado_ciencia-ingenieria-datos_20260910.md

Debe quedar registrado:

- fase ejecutada;
- estado general;
- arquitectura propuesta o mantenida;
- P0;
- P1;
- P2;
- P3;
- decisiones REVISIÓN_TERRA_ALTA;
- acciones READY;
- acciones BLOCKED;
- siguiente modelo;
- siguiente esfuerzo;
- siguiente prompt;
- siguiente acción.

## Criterio de parada

Si la auditoría concluye:

P0 = 0
P1 = 0
ambigüedad significativa = NO

y no existen cambios estructurales o de contenido realmente justificados:

NO generes artificialmente un plan para Luna.

Indica:

PLAN_EJECUCION_LUNA: NO REQUERIDO

y marca el dominio como candidato a STABLE.

## Restricciones

No modifiques ningún archivo dentro de:

skills/ciencia-ingenieria-datos/

Esta etapa es exclusivamente de análisis y planificación.

No ejecutes refactorización.
No crees skills.
No borres archivos.
No muevas archivos.
No renombres archivos.

## Respuesta en chat

No reproduzcas la auditoría completa.

Responde únicamente:

DOMINIO:
ESTADO: APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

SKILLS_AUDITADAS:
P0:
P1:
P2:
P3:

AMBIGÜEDAD_SIGNIFICATIVA:
REVISION_TERRA_ALTA:

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_ciencia-ingenieria-datos_terra_20260910.md

PLAN:
docs/plan_refactor_ciencia-ingenieria-datos_luna_20260910.md
o NO_REQUERIDO