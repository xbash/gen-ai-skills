Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
academia

Ruta:
skills/academia/

Fecha:
20260910

Tipo de ejecución:
AUDITORÍA POST-REFACTORIZACIÓN

## Contexto de continuidad

Lee primero:

docs/estado_academia_20260910.md

y:

docs/execution_report_academia_20260910.md

Usa estos archivos únicamente para conocer:
- fase ejecutada;
- acciones aplicadas;
- resultado de validación;
- arquitectura aprobada;
- posibles incidencias.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/academia/

No asumas que la refactorización fue correcta solo porque A005 terminó PASS.

## Arquitectura esperada

La arquitectura aprobada es:

README.md
instrucciones_base_academia.md
analisis_notebook_programacion.md
analisis_notebook_matematicas.md
analisis_notebook_datos_estadistica.md
analisis_notebook_ia.md
analisis_notebook_ciberseguridad.md
checklist_revision_notebook.md

El archivo:

analisis_tecnico_conceptual.md

debe haber sido eliminado después de migrar su contenido único a:

instrucciones_base_academia.md

No debes restaurarlo salvo evidencia clara de pérdida funcional.

## Objetivo

Determinar si la refactorización consiguió:

- reducir redundancia;
- preservar todas las capacidades útiles;
- mantener los cinco perfiles especializados;
- mantener el checklist como control de cierre;
- mejorar la carga selectiva;
- mejorar el routing del README;
- reducir contexto innecesario;
- preservar criterios académicos, técnicos y metodológicos;
- evitar pérdida de conocimiento durante la fusión;
- mejorar mantenibilidad.

Evalúa la implementación REAL.

## Verificación obligatoria 1 — Base consolidada

Compara conceptualmente:

instrucciones_base_academia.md actual

contra las responsabilidades que antes estaban distribuidas entre:

instrucciones_base_academia.md
+
analisis_tecnico_conceptual.md

Comprueba que la base consolidada preserve:

- rol académico, técnico y pedagógico;
- no invención;
- cambios mínimos;
- mapeo de celdas;
- tratamiento de # codigo N;
- tratamiento de # texto N;
- manejo de celdas incompletas;
- intervención de código;
- intervención de Markdown;
- respeto por celdas ya implementadas;
- reproducibilidad;
- trazabilidad;
- criterios de revisión técnica;
- formato de salida esperado;
- advertencia explícita cuando falta información.

Si alguna capacidad relevante desapareció, clasifícala como hallazgo.

## Verificación obligatoria 2 — Especializaciones

Audita individualmente:

analisis_notebook_programacion.md
analisis_notebook_matematicas.md
analisis_notebook_datos_estadistica.md
analisis_notebook_ia.md
analisis_notebook_ciberseguridad.md

Comprueba que:

- sigan teniendo una frontera especializada real;
- no repitan innecesariamente el workflow genérico;
- complementen la base consolidada;
- puedan cargarse selectivamente;
- no hayan perdido controles propios durante el refactor.

No recomiendes fusionarlas entre sí salvo evidencia nueva y sustantiva.

## Verificación obligatoria 3 — Checklist

Evalúa:

checklist_revision_notebook.md

Comprueba que siga siendo:

- auxiliar;
- bajo demanda;
- orientado a cierre, entrega o auditoría;
- distinto del procedimiento principal.

No lo fusiones con la base solo por compartir criterios.

## Verificación obligatoria 4 — README/router

Evalúa:

README.md

Comprueba que:

- enrute primero a instrucciones_base_academia.md;
- active como máximo un perfil especializado por defecto;
- use triggers claros;
- no tenga referencias a analisis_tecnico_conceptual.md;
- no tenga referencias obsoletas tipo "02 a 06";
- cargue checklist solo para cierre/revisión/auditoría;
- permita carga selectiva.

## Verificación obligatoria 5 — Costo de contexto

Evalúa cualitativamente:

ANTES:
README + base + análisis técnico-conceptual o perfil + checklist

DESPUÉS:
README + base consolidada + perfil solo si corresponde + checklist solo si corresponde

Determina si el refactor realmente redujo contexto redundante.

No inventes cifras de tokens.

## Verificación obligatoria 6 — Redundancia residual

Busca especialmente duplicación entre:

base consolidada
↔ perfiles especializados

base consolidada
↔ checklist

README
↔ base consolidada

Distingue entre:

REPETICIÓN NECESARIA
y
REDUNDANCIA PERJUDICIAL

No centralices reglas si eso empeora autonomía o routing.

## Verificación obligatoria 7 — Fidelidad del refactor

Compara:

plan aprobado
→ implementación real

Identifica:

- requisitos cumplidos;
- requisitos omitidos;
- contenido perdido;
- contenido agregado no autorizado;
- divergencias justificadas;
- divergencias problemáticas.

## Evaluación cuantitativa

Aplica las métricas definidas en:

prompts/audita_skills_dominios_v2_arq.md

Incluye al menos:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

Evalúa:

- instrucciones_base_academia.md
- cinco perfiles
- checklist
- README

## Comparación antes/después

Incluye una tabla:

| Dimensión | Antes | Después | Resultado |
|-----------|-------|---------|-----------|
| Redundancia | | | |
| Carga selectiva | | | |
| Claridad del router | | | |
| Cobertura | | | |
| Densidad | | | |
| Mantenibilidad | | | |
| Costo de contexto | | | |
| Riesgo de ambigüedad | | | |

No cuantifiques tokens si no fueron medidos.

## Hallazgos

Clasifica:

P0 — pérdida funcional, error crítico o problema metodológico
P1 — impacto alto
P2 — optimización justificada
P3 — mejora marginal

## Gate de escalamiento

Trabaja con razonamiento MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si aparece:

- pérdida posible de conocimiento especializado;
- contradicción entre archivos;
- necesidad de fusionar/dividir múltiples componentes;
- impacto alto + confianza baja.

No reaudites todo con High.

## Plan para Luna

Si existen cambios realmente justificados:

genera:

docs/plan_post_refactor_academia_luna_20260910.md

Cada acción debe ser determinista y seguir el contrato de:

prompts/audita_skills_dominios_v2_arq.md

Si el cambio puede expresarse exactamente:

incluye replacement_content

y clasifícalo como LUNA_LOW.

Si requiere redacción acotada:

LUNA_MEDIUM.

No delegues decisiones arquitectónicas a Luna.

Si no existen cambios P0/P1 ni ambigüedad significativa:

PLAN_EJECUCION_LUNA: NO REQUERIDO

No inventes refactorizaciones marginales.

## Archivos de salida

Guarda la auditoría en:

docs/auditoria_post_refactor_academia_20260910.md

Si existe plan:

docs/plan_post_refactor_academia_luna_20260910.md

Actualiza también:

docs/estado_academia_20260910.md

con:

- fase ejecutada;
- estado general;
- P0;
- P1;
- P2;
- P3;
- ambigüedad significativa;
- decisiones REVISIÓN_TERRA_ALTA;
- PLAN_EJECUCION_LUNA;
- siguiente modelo;
- siguiente esfuerzo;
- siguiente prompt;
- siguiente acción;
- estado STABLE si corresponde.

## Criterio de cierre

Si:

P0 = 0
P1 = 0
ambigüedad significativa = NO
validación final = PASS

entonces marca:

estado: STABLE

Los hallazgos P2/P3 pueden quedar documentados como backlog.

No continúes optimizando si las mejoras restantes son marginales.

## Restricciones

NO modifiques archivos dentro de:

skills/academia/

Esta etapa es exclusivamente:

ANALIZAR
COMPARAR
VALIDAR
DECIDIR
PLANIFICAR

## Respuesta en chat

No reproduzcas el informe completo.

Responde únicamente:

DOMINIO: academia

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

COMPONENTES_AUDITADOS:

P0:
P1:
P2:
P3:

REDUNDANCIA_RESIDUAL:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

PERDIDA_FUNCIONAL:
SI | NO

REVISION_TERRA_ALTA:

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

ESTADO_WORKFLOW:
STABLE | IN_PROGRESS

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_post_refactor_academia_20260910.md

PLAN:
docs/plan_post_refactor_academia_luna_20260910.md
o NO_REQUERIDO