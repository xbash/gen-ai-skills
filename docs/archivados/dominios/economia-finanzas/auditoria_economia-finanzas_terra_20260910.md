# Auditoría funcional — economia-finanzas

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Ruta auditada: `skills/economia-finanzas/`

## Alcance y evidencia

El precheck y el estado se usaron únicamente para confirmar inventario, clasificación y estructura. La evidencia principal es el contenido actual de los ocho componentes operativos y dos auxiliares del dominio. La auditoría es estática: evalúa las instrucciones, no verifica datos de mercado ni legislación externa vigente.

El dominio tiene diez Markdown no vacíos, estructura plana, sin subdirectorios, `SKILL.md` ni placeholders. Los conteos de palabras (176–570 por archivo operativo) son descriptivos y no son mediciones de tokens ni de desempeño.

## Resultado ejecutivo

**ESTADO: APROBADO_CON_MEJORAS**

Las instrucciones son operativas, específicas y prudentes. Mantienen distinciones importantes entre contabilidad/costos, finanzas corporativas, macro/micro, econometría, riesgos/regulación, estrategia y personas. También controlan datos volátiles, vigencia, supuestos, horizonte, moneda, inflación, incertidumbre, causalidad y límites frente a asesoría individualizada.

La mejora necesaria es limitada: el README inventaría los archivos, pero su recomendación de uso no declara el patrón de carga progresiva. Por tanto, todavía no permite aplicar de forma inequívoca `README + instrucciones_base_eco.md + un módulo principal`, ni sitúa el checklist como instrumento condicional de revisión o cierre. No se justifica modificar módulos, crear nuevas skills, subdirectorios ni `SKILL.md`.

## Componentes y métricas cualitativas

Escala 1–5; en Redundancia, 5 equivale a baja redundancia perjudicial. Son juicios estáticos de contenido, no promedios de decisión arquitectónica.

| Componente | Tipo | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Dictamen |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| `instrucciones_base_eco.md` | Base | 5 | 4 | 5 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| `contabilidad_costos_reglas.md` | Operativo | 5 | 5 | 5 | 5 | 5 | 4 | 5 | 5 | MANTENER |
| `finanzas_corporativas_proyectos_reglas.md` | Operativo | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| `macro_micro_entorno_reglas.md` | Operativo | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| `econometria_datos_reglas.md` | Operativo | 5 | 5 | 5 | 4 | 5 | 5 | 5 | 5 | MANTENER |
| `riesgos_regulacion_chile_reglas.md` | Operativo | 5 | 5 | 4 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| `estrategia_marketing_negocios_reglas.md` | Operativo | 5 | 4 | 5 | 5 | 4 | 5 | 4 | 5 | MANTENER |
| `personas_organizacion_reglas.md` | Operativo | 4 | 4 | 5 | 4 | 5 | 4 | 5 | 5 | MANTENER |
| `README.md` | Auxiliar | 4 | 4 | 4 | 3 | 4 | 5 | 4 | 5 | MEJORAR |
| `checklist_modelos_decision_eco.md` | Auxiliar | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER COMO AUXILIAR |

## Fronteras funcionales

### Base y módulos

La base debe conservar invariantes: no invención, trazabilidad, distinción entre hechos y supuestos, datos actuales, límites de asesoría, horizonte, moneda, inflación, escenarios, sensibilidad y validación mínima. Los módulos contienen correctamente el detalle que cambia el workflow. La base repite algunos términos financieros como principios transversales, no como segundo procedimiento normativo; esa repetición es necesaria.

Una tarea acotada puede usar base y un módulo principal en contenido, pero el README aún no lo prescribe. El cambio P1 corrige esa ambigüedad sin compactar ni reubicar conocimiento.

### Contabilidad/costos y finanzas corporativas

`contabilidad_costos_reglas.md` se concentra en clasificación, consistencia de estados, costos, presupuestos y control de gestión. `finanzas_corporativas_proyectos_reglas.md` se concentra en flujos, inversión, financiamiento, valoración, WACC, portafolios y criterios de decisión. El uso compartido de moneda, impuestos, capital de trabajo y riesgo responde a dependencias reales; no justifica fusión.

### Macro/micro, estrategia y personas

`macro_micro_entorno_reglas.md` cubre teoría e interpretación del entorno, mercado, incentivos, variables macroeconómicas y actualidad de indicadores. `estrategia_marketing_negocios_reglas.md` transforma evidencia en decisiones de cliente, propuesta de valor, canales, pricing y ejecución comercial. `personas_organizacion_reglas.md` aporta un workflow distinto para estructura, capacidades, incentivos, cambio y adopción. Ninguno invade por sí mismo un dominio técnico vecino ni justifica división adicional.

### Econometría, ciencia de datos y macro/micro

La econometría permanece en modelación, inferencia, causalidad, validación temporal, supuestos y evidencia. La referencia a separación de etapas y librerías se limita a reproducibilidad de análisis; no contiene instrucciones de infraestructura, bases de datos, MLOps ni pipelines de ingeniería. En una tarea técnica podría complementarse con `ciencia-ingenieria-datos`, pero no duplica ese dominio. Frente a macro/micro, la frontera es teoría/interpretación económica versus estimación y contraste empírico; debe mantenerse.

### Riesgos, regulación Chile y finanzas corporativas

Riesgos/regulación es un módulo transversal condicional: identifica controles, riesgo residual, cumplimiento, continuidad y límites regulatorios. Finanzas corporativas usa riesgo para evaluar inversión y financiamiento. No impone la carga de riesgos en toda tarea financiera; el routing propuesto debe explicitar que se suma solo con una dependencia concreta.

El módulo Chile contiene principios relativamente estables (trazabilidad, controles, jurisdicción y límites de asesoría) y reglas que requieren vigencia (normativa, tasas, obligaciones y fechas). Ordena verificar fuente oficial, fecha, jurisdicción e incertidumbre, y no afirma requisitos normativos sin evidencia actual. Es específico de Chile mientras los demás módulos permanecen portables; no hay beneficio claro para separar regulación general de Chile.

### Inversiones, mercados y finanzas personales

Inversiones, valoración, instrumentos, portafolios, riesgo-retorno y mercados están cubiertos de modo general en `finanzas_corporativas_proyectos_reglas.md`; clasificación: **SUFICIENTE** para el alcance actual. No hay evidencia de un workflow recurrente independiente que justifique skill propia.

Finanzas personales no está declarada como capacidad. Su ausencia no justifica una skill: requeriría delimitar alcance educativo y evitar asesoría individualizada. Clasificación: **AUSENTE_NO_JUSTIFICA_SKILL** en este dominio actual.

## Carga selectiva, checklist y datos actuales

Las combinaciones son semánticamente razonables: base + finanzas corporativas para proyectos; base + macro/micro para inflación; base + econometría para análisis empírico; base + contabilidad/costos para costeo; base + estrategia para modelo de negocio; y base + personas para diseño organizacional. Riesgos/regulación debe agregarse cuando existan requisitos regulatorios, riesgo relevante o continuidad.

Sin embargo, el README no declara esas combinaciones, el módulo principal o módulos secundarios. Además, exige checklist en tareas sensibles sin precisar que es un auxiliar de cierre, revisión o decisión. El checklist no duplica perjudicialmente: verifica la aplicación de reglas y exige evidencia, pero no sustituye módulos.

La base, macro/micro y riesgos/regulación sí separan conocimiento estable de datos volátiles y ordenan verificar actualidad, fuentes y fecha. No se encontraron cifras actuales ni normativa específica no verificada en los archivos auditados.

## Cobertura y candidatos evaluados

| Candidato | Estado | Decisión |
|---|---|---|
| inversiones y mercados | SUFICIENTE | Cubierto en finanzas corporativas; no crear skill. |
| valoración | SUFICIENTE | Cubierto en finanzas corporativas; no crear skill. |
| riesgo financiero | PARCIAL, pero integrado | Cubierto condicionalmente por finanzas y riesgos/regulación; no crear skill sin evidencia de uso autónomo recurrente. |
| finanzas personales | AUSENTE_NO_JUSTIFICA_SKILL | Fuera del alcance declarado y sensible a personalización. |
| política económica y comercio internacional | PARCIAL | Cobertura proporcional en macro/micro; no hay trigger demostrado para separar. |
| decisión bajo incertidumbre | SUFICIENTE | Invariante de base, módulos y checklist; no requiere archivo propio. |
| emprendimiento/modelos de negocio | SUFICIENTE | Cubierto en estrategia/marketing/negocios; no dividir. |

SKILL_CANDIDATA: NO para todos los candidatos.

## Arquitectura física

La alternativa mínima suficiente es **mantener la estructura plana modular**. No se justifica subdirectorio ni `SKILL.md`: los ocho componentes operativos tienen triggers distinguibles, el inventario sigue manejable y no existe beneficio probado de una migración física.

## Hallazgos

| Prioridad | Hallazgo | Impacto | Acción |
|---|---|---|---|
| P1 | El README no declara carga progresiva, módulo principal, secundarios condicionales ni el checklist como auxiliar de cierre/revisión. | El patrón base + módulo no es operativo de forma inequívoca; puede inducir carga excesiva o checklist prematuro. | Editar solo README con routing y combinaciones condicionales. |

P0: 0. P1: 1. P2: 0. P3: 0.

## Cierre

- COBERTURA_ACTUAL: **SUFICIENTE** para el alcance declarado.
- SKILLS_FALTANTES: **NINGUNA**.
- ARQUITECTURA: **MANTENER**.
- SUBDIRECTORIOS: **NO_REQUERIDOS**.
- SKILL_MD: **NO_REQUERIDO**.
- SOBRECARGA_BASE: **MEDIA**; la base es transversal y conserva detalles útiles, pero requiere routing explícito para evitar carga indiscriminada.
- SOBREFRAGMENTACION: **BAJA**.
- REDUNDANCIA: **BAJA**.
- AMBIGÜEDAD_SIGNIFICATIVA: **NO**; el hallazgo P1 está acotado y tiene corrección determinista.
- RIESGO_FINANCIERO_METODOLOGICO: **MEDIO**, por el impacto potencial de decisiones con datos volátiles, mitigado por reglas explícitas de verificación, supuestos, sensibilidad y límites de recomendación.
- REVISION_TERRA_ALTA: **NO**.
- PLAN_EJECUCION_LUNA: **REQUERIDO** por el P1 de routing.

La auditoría no modificó archivos bajo `skills/economia-finanzas/`.
