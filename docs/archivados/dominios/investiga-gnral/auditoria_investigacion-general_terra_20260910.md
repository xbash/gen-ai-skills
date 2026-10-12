# Auditoría funcional — investigacion-general

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Ruta auditada: `skills/investigacion-general/`

## Alcance y evidencia

Los artefactos de continuidad se usaron solo para confirmar clasificación, inventario, estructura y routing previo. La evidencia principal es el contenido actual de `instrucciones_base_investiga.md` y `checklist_investigacion.md`. No se cargaron dominios vecinos completos; sus fronteras se evaluaron contra el alcance explícito del dominio actual.

La base tiene 1.445 palabras en 12 secciones funcionales y el checklist 2.367 palabras en 216 líneas. Son recuentos estáticos orientativos, no mediciones de tokens ni de desempeño de modelos.

## Resultado ejecutivo

**ESTADO: REQUIERE_REFACTOR**

La arquitectura actual es metodológicamente rigurosa, transversal e independiente de una disciplina concreta. No hay P0: no se hallaron reglas que impongan hipótesis, métricas numéricas, significancia, causalidad o reproducibilidad computacional a toda investigación.

No obstante, la única instrucción base concentra cinco workflows reutilizables con triggers independientes: diseño y datos; revisión de evidencia; análisis e inferencia; reproducibilidad; y ética e impacto. Al no existir README/router ni módulos, una tarea parcial debe cargar 1.445 palabras de metodología no pertinente. La separación propuesta no responde al tamaño por sí solo: cada bloque tiene entradas, decisiones, artefactos y criterios de activación distintos.

La cobertura actual es **PARCIAL**: cubre los fundamentos de investigación transversal, pero medición/confiabilidad, integridad científica y comunicación de entregables están menos desarrolladas que los demás workflows. Estas brechas justifican contenido nuevo mínimo y selectivo, no un manual disciplinar, jurídico o estadístico exhaustivo.

## Componentes actuales

| Componente | Tipo | Función actual | Dictamen |
|---|---|---|---|
| `instrucciones_base_investiga.md` | Operativo | Contrato transversal y reglas para todas las etapas de investigación. | REFACTORIZAR con trazabilidad; conservar como base compacta. |
| `checklist_investigacion.md` | Auxiliar | Revisión basada en evidencia de artefactos y resultados, con criterios condicionales por enfoque. | MANTENER como checklist de cierre/revisión. |

## Métricas cualitativas

Escala 1–5; en **Redundancia**, 5 significa baja redundancia perjudicial. Son juicios sobre el contenido actual, no resultados de uso en modelos ni métricas de tokens.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Dictamen |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| `instrucciones_base_investiga.md` | 5 | 4 | 4 | 5 | 4 | 3 | 2 | 5 | REFACTORIZAR |
| `checklist_investigacion.md` | 5 | 5 | 4 | 4 | 5 | 4 | 4 | 4 | MANTENER |

## Evaluación de la base

| Responsabilidad | Trigger independiente | Uso autónomo | Beneficio de separación | Decisión |
|---|---|---|---|---|
| Contrato de evidencia, límites de inferencia y formato mínimo | No; aplica a toda tarea. | No. | Bajo; debe permanecer en la base. | MANTENER EN BASE |
| Formulación, diseño, muestreo, medición y calidad de datos | Sí; se diseña o revisa un estudio/dataset. | Sí. | Alto; evita cargar análisis, ética o reproducibilidad si no aplican. | MÓDULO NECESARIO |
| Fuentes, búsqueda, selección y trazabilidad de evidencia | Sí; se revisa literatura o evidencia documental. | Sí. | Alto; tiene artefactos y decisiones propios. | MÓDULO NECESARIO |
| Métricas, análisis, resultados e inferencia | Sí; se interpretan resultados o comparaciones. | Sí. | Alto; protege frente a inferencias inválidas sin cargar diseño completo. | MÓDULO NECESARIO |
| Reproducibilidad, control de cambios y artefactos | Sí; se ejecuta, audita o transfiere un estudio. | Sí. | Alto; depende de datos, código y artefactos concretos. | MÓDULO NECESARIO |
| Ética, integridad e impacto | Sí; hay personas, datos sensibles, conflicto de interés o consecuencias de uso. | Sí. | Alto; es condicional y no debe cargarse por defecto. | MÓDULO NECESARIO |
| Comunicación académica | Sí, pero la base actual aporta solo formato de respuesta genérico. | Parcial. | Insuficiente evidencia para crear módulo ahora; validar uso futuro. | CAPACIDAD PARCIAL |

La separación propuesta agrupa responsabilidades que comparten workflow, decisiones y artefactos. No crea una skill por concepto ni divide cuantitativo, cualitativo y mixto por taxonomía: estos enfoques permanecen integrados como criterios condicionales dentro de diseño/datos y análisis/inferencia.

## Evaluación del checklist

El checklist funciona como instrumento de cierre y revisión, no como sustituto de la base: exige evidencias localizables, declara nivel de revisión, admite `No aplica` y `No verificable`, y distingue revisión estática de ejecución/reproducción. Su extensión se justifica por cubrir artefactos heterogéneos y por activar secciones según el enfoque.

Repite conceptos de la base como preguntas de verificación, no como una segunda fuente normativa. Debe mantenerse auxiliar, cargarse al cierre o revisión, y no como contexto inicial obligatorio. No se recomienda fusionarlo con la base.

## Cobertura metodológica

| Área | Estado | Evidencia y límite |
|---|---|---|
| Formulación y alcance | SUFICIENTE | Problema, pregunta, objetivos, unidad de análisis, población, alcance y criterios de éxito están en base y checklist. |
| Diseño metodológico | SUFICIENTE | Cubre cuantitativo, cualitativo, mixto, documental, experimental/cuasi, aplicado y condicionalidad por diseño. |
| Variables, medición y muestreo | PARCIAL | Incluye operacionalización, selección, potencia/precisión, sesgo y error de medición; falta una guía transversal explícita sobre confiabilidad, validez de medición, escalas e instrumentos. |
| Datos y evidencia | SUFICIENTE | Fuentes, trazabilidad, calidad, faltantes, cobertura, inclusión/exclusión e integridad se tratan con límites claros. |
| Análisis cuantitativo y cualitativo | SUFICIENTE | Distingue incertidumbre, magnitud, relevancia, supuestos, causalidad, categorías, evidencia y contexto sin imponer técnicas universales. |
| Métodos mixtos | SUFICIENTE | Exige justificación, integración y tratamiento de resultados divergentes. |
| Validez, confiabilidad y amenazas | PARCIAL | Trata validez, credibilidad, robustez, sesgos y amenazas; la confiabilidad y validez de medición requieren criterio más explícito y condicional. |
| Reproducibilidad y trazabilidad | SUFICIENTE | Cubre datos, versiones, transformaciones, código, configuraciones, artefactos y diferencia entre ejecución y reproducción. |
| Ética e impacto | PARCIAL | Cubre consentimiento, privacidad, minimización, daño, sesgo, conflictos e impacto; falta una regla explícita y transversal de integridad científica/atribución. |
| Comunicación científica | PARCIAL | La base separa evidencia, método, interpretación y límites; no ofrece workflow propio para artículo, tesis, informe o propuesta. |

## Gap analysis

### Capacidades suficientes

- Formulación y delimitación básica de estudios.
- Diseño transversal condicionado por enfoque.
- Fuentes, trazabilidad, calidad de datos, faltantes e inferencia prudente.
- Reproducibilidad de artefactos y control de cambios.
- Ética, privacidad, impacto y comunicación de límites en nivel general.

### Capacidades parciales

- Medición, confiabilidad, validez de instrumentos y escalas, de forma proporcional al diseño.
- Integridad científica y atribución, sin convertir el dominio en asesoría jurídica.
- Comunicación científica como workflow de entregables, no solo formato de respuesta.

### Capacidades ausentes con separación justificada

Las siguientes cinco son necesarias como módulos, porque son transversales, metodológicas, cambian decisiones, tienen trigger propio, permiten carga selectiva y justifican mantenimiento independiente:

1. `diseno_metodologico_datos_reglas.md`
2. `revision_evidencia_fuentes_reglas.md`
3. `analisis_inferencia_resultados_reglas.md`
4. `reproducibilidad_trazabilidad_reglas.md`
5. `etica_integridad_impacto_reglas.md`

No se crea todavía un módulo de comunicación: su necesidad debe confirmarse con encargos reales de artículos, tesis, informes o propuestas que muestren una brecha concreta.

## Arquitectura y fronteras

### Arquitectura recomendada

**Opción B — estructura plana modular.** Añadir un `README.md` router, conservar una base compacta, crear los cinco módulos necesarios y conservar el checklist auxiliar. La estructura plana preserva rutas simples con siete archivos funcionales/auxiliares y no requiere subdirectorios.

| Decisión | Resultado | Justificación |
|---|---|---|
| Arquitectura | MODULARIZAR | Cinco workflows tienen triggers y beneficios de carga selectiva propios. |
| Subdirectorios | NO_REQUERIDOS | La cantidad proyectada no requiere agrupación física para routing. |
| `SKILL.md` | NO_REQUERIDO | No hay beneficio demostrado sobre Markdown enrutable en este dominio. |
| Cuantitativo/cualitativo/mixto | Núcleo general con criterios condicionales | Separarlos generaría fragmentación sin un workflow independiente por archivo. |

### Fronteras con dominios vecinos

`investigacion-general` debe conservar principios metodológicos transversales, independencia disciplinaria y límites de inferencia. Debe delegar reglas específicas de IA a `investigacion-ia`, construcción/operación de sistemas a `desarrollo-ia`, métodos y herramientas de datos especializados a `ciencia-ingenieria-datos`, y requisitos concretos de cada disciplina a su dominio correspondiente. El contenido actual no absorbe indebidamente esas responsabilidades; la modularización propuesta mantiene esa frontera.

## Hallazgos

| Prioridad | Hallazgo | Mecanismo de impacto | Decisión |
|---|---|---|---|
| P1 | La única base concentra cinco workflows con triggers independientes y no existe router de carga selectiva. | Una tarea parcial carga reglas ajenas al objetivo; la selección de contexto no es explícita ni mantenible. | Modularizar en cinco capacidades y añadir README/router, preservando la base como contrato. |
| P2 | Medición, confiabilidad, validez de instrumentos/escalas e integridad científica/atribución están solo implícitas o dispersas. | Puede dejar sin criterio metodológico explícito decisiones de instrumento y reporte responsable. | Incluir reglas mínimas condicionales en los módulos diseño/datos y ética/integridad. |
| P2 | Comunicación científica tiene soporte genérico, no un workflow de entregables. | Puede limitar la reutilización para artículos, tesis, informes o propuestas. | No crear módulo ahora; confirmar con evidencia de uso. |
| P3 | La base y el checklist no incluyen un README que exponga su patrón de carga. | Menor descubribilidad, no pérdida metodológica inmediata. | Resolver junto con el routing P1. |

P0: 0. P1: 1. P2: 2. P3: 1.

## Cierre de auditoría

- COBERTURA_ACTUAL: PARCIAL.
- SKILLS_FALTANTES: NECESARIAS.
- SOBRECARGA_BASE: ALTA.
- SOBREFRAGMENTACIÓN: BAJA en el estado actual; la propuesta evita micro-skills.
- REDUNDANCIA: BAJA; base y checklist se complementan por función normativa y de verificación.
- AMBIGÜEDAD_SIGNIFICATIVA: NO.
- RIESGO_METODOLÓGICO: MEDIO; el contenido actual es riguroso, pero la carga indiscriminada puede ocultar reglas pertinentes y dificulta mantenimiento.
- REVISIÓN_TERRA_ALTA: NO; la división se basa en secciones actuales, mantiene trazabilidad y no autoriza eliminación ni compactación sin validación.
- PLAN_EJECUCION_LUNA: REQUERIDO.
- ACCIONES_READY: 7.
- ACCIONES_BLOCKED: 0.

La propuesta debe ejecutarse solo mediante el plan determinista y con validación antes de compactar la base. Esta auditoría no modifica archivos dentro del dominio.
