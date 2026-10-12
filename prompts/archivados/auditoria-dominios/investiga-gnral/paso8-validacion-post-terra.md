Aplica estrictamente:

prompts/audita_post_refactor_dominio.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Auditoría previa:
docs/auditoria_investigacion-general_terra_20260910.md

Plan ejecutado:
docs/plan_refactor_investigacion-general_luna_20260910.md

Execution report:
docs/execution_report_investigacion-general_20260910.md

## Estado previo

La VALIDACION_FINAL terminó:

PASS

La arquitectura resultante contiene exactamente:

- README.md
- instrucciones_base_investiga.md
- checklist_investigacion.md
- diseno_metodologico_datos_reglas.md
- revision_evidencia_fuentes_reglas.md
- analisis_inferencia_resultados_reglas.md
- reproducibilidad_trazabilidad_reglas.md
- etica_integridad_impacto_reglas.md

Estructura:
PLANA

Subdirectorios:
NINGUNO

SKILL.md:
NINGUNO

## Alcance de esta auditoría

Esta auditoría es exclusivamente POST-REFACTOR.

NO repitas la auditoría funcional completa.
NO vuelvas a discutir desde cero si modularizar o no.
NO reabras SKILL.md ni subdirectorios salvo que aparezca un problema concreto nuevo.
NO propongas nuevas skills solo por completar una taxonomía.
NO conviertas comunicación científica en una skill salvo evidencia nueva y concreta.

## Objetivo

Validar si el refactor resolvió correctamente el problema original:

- base monolítica;
- ausencia de routing;
- carga excesiva de contexto;
- cinco workflows independientes incrustados en una sola base.

Comprueba si la arquitectura final mejora la carga selectiva sin degradar:

- rigor metodológico;
- independencia disciplinaria;
- trazabilidad;
- reproducibilidad;
- ética;
- límites de inferencia;
- calidad de evidencia.

## Validación 1 — fidelidad al plan

Comprueba que:

IG-P1-01..IG-P1-07

se ejecutaron según el plan.

Verifica especialmente:

- README/router creado;
- cinco módulos creados;
- base compactada;
- checklist preservado;
- ninguna pérdida normativa;
- sin archivos adicionales;
- sin subdirectorios;
- sin SKILL.md.

## Validación 2 — arquitectura final

Evalúa si sigue siendo correcta la decisión:

ESTRUCTURA PLANA MODULAR

La arquitectura debe permitir:

README
+
base
+
un módulo principal

con módulos secundarios solo cuando exista una dependencia concreta.

Determina si esta estructura sigue siendo preferible a:

- volver al monolito;
- crear subdirectorios;
- migrar a SKILL.md;
- dividir cuantitativo/cualitativo/mixto.

No reabras estas alternativas si no existe evidencia nueva.

## Validación 3 — calidad de la base compacta

Evalúa:

instrucciones_base_investiga.md

Debe funcionar como contrato transversal y no como nueva skill monolítica.

Comprueba que preserve:

- rol y alcance transversal;
- independencia disciplinaria;
- principio de evidencia;
- no invención;
- proporcionalidad;
- límites de causalidad;
- separación entre evidencia, resultado, interpretación, inferencia,
  recomendación y limitación;
- manejo de información faltante;
- método de respuesta;
- formato proporcional.

Comprueba además que el detalle especializado haya sido realmente delegado.

## Validación 4 — routing

Evalúa la coherencia:

README
↔
base
↔
módulos

El patrón debe ser claro:

README
+
base
+
un módulo principal

y solo después:

+ módulos secundarios por dependencia

+ checklist al cierre/revisión

Comprueba si existen:

- triggers ambiguos;
- dependencias implícitas;
- módulos que parezcan obligatorios sin serlo;
- combinaciones frecuentes que README no permita inferir.

## Validación 5 — fronteras de los cinco módulos

### diseño/datos

Debe seguir siendo responsable de:

- formulación;
- diseño;
- muestreo;
- medición;
- calidad;
- validez.

No debe absorber análisis final ni reproducibilidad especializada.

### evidencia/fuentes

Debe cubrir:

- búsqueda;
- selección;
- evaluación;
- atribución;
- trazabilidad documental.

No debe convertirse en diseño experimental ni análisis.

### análisis/inferencia

Debe cubrir:

- métricas;
- comparación;
- incertidumbre;
- interpretación;
- inferencia;
- límites.

No debe convertirse en manual estadístico.

### reproducibilidad/trazabilidad

Debe cubrir:

- artefactos;
- versiones;
- transformaciones;
- configuraciones;
- verificación;
- reproducción;
- control de cambios.

No debe imponer reproducibilidad computacional a toda investigación.

### ética/integridad/impacto

Debe cubrir:

- personas;
- datos;
- privacidad;
- consentimiento;
- integridad;
- conflictos;
- impacto.

No debe convertirse en asesoría jurídica ni seguridad técnica especializada.

## Validación 6 — multimetodología

Comprueba que el dominio siga siendo aplicable, según corresponda, a:

- cuantitativa;
- cualitativa;
- mixta;
- documental;
- experimental;
- observacional;
- evaluativa;
- aplicada.

Verifica que la modularización no haya convertido implícitamente el dominio
en una metodología predominantemente cuantitativa o computacional.

## Validación 7 — trazabilidad y pérdida normativa

Usa como referencia la matriz de las 12 responsabilidades originales.

Comprueba si después del refactor:

- cada responsabilidad sigue cubierta;
- no cambió de significado;
- no perdió condiciones;
- no fue universalizada;
- no se debilitó por exceso de compactación.

Si detectas pérdida:

clasifica como P0/P1 según impacto.

## Validación 8 — densidad y costo de contexto

Evalúa cualitativamente si la nueva arquitectura permite cargar menos
contenido irrelevante que la versión monolítica.

NO inventes métricas de tokens.

Puedes afirmar:

- menor carga potencial;
- mejor selección de contexto;
- mejor aislamiento de responsabilidades;

solo si el contenido actual lo soporta.

No afirmes porcentajes de ahorro sin medición.

## Validación 9 — redundancia post-refactor

Busca:

- duplicación normativa entre base y módulos;
- duplicación entre módulos;
- checklist convertido accidentalmente en segunda fuente normativa;
- referencias cruzadas excesivas.

Distingue entre:

redundancia perjudicial
y
recordatorio necesario para autonomía local.

## Validación 10 — cobertura

Reevalúa únicamente si el refactor dejó un gap crítico.

No uses esta fase para ampliar el dominio.

La auditoría previa dejó comunicación científica como capacidad parcial,
pero SIN evidencia suficiente para crear módulo.

Mantén esa decisión salvo que el refactor haya generado una carencia
concreta nueva.

## Hallazgos

Clasifica:

P0
P1
P2
P3

Para cerrar STABLE deben cumplirse:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_FINAL = PASS

P2/P3 pueden quedar como backlog no bloqueante.

## Terra High

Trabaja con Medium.

Usa REVISIÓN_TERRA_ALTA únicamente si aparece:

- pérdida metodológica relevante;
- contradicción entre módulos;
- degradación de ética/reproducibilidad/validez;
- impacto alto + baja confianza.

No repitas toda la auditoría en High.

## Plan Luna adicional

Genera un nuevo plan solo si existen P0/P1 accionables.

Si solo existen P2/P3 no bloqueantes:

PLAN_EJECUCION_LUNA:
NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_post_refactor_investigacion-general_20260910.md

Actualiza:

docs/estado_investigacion-general_20260910.md

Si corresponde y solo existe P0/P1:

docs/plan_post_refactor_investigacion-general_luna_20260910.md

## Cierre

Si:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO
VALIDACION_FINAL = PASS

establece:

ESTADO_WORKFLOW: STABLE

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

ESTADO_POST_REFACTOR:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_CORRECCION

P0:
P1:
P2:
P3:

ARQUITECTURA:
MANTENER | AJUSTAR | REFACTORIZAR

BASE_COMPACTA:
PASS | FAIL

ROUTING:
PASS | FAIL

FRONTERAS_MODULOS:
PASS | FAIL

MULTIMETODOLOGIA:
PASS | FAIL

TRAZABILIDAD:
PASS | FAIL

PERDIDA_NORMATIVA:
SI | NO

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
docs/auditoria_post_refactor_investigacion-general_20260910.md