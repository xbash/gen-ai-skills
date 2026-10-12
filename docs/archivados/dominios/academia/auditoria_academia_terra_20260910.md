# Auditoría de dominio — academia

Fecha: 20260910  
Tipo: AUDITORÍA DE DOMINIO FUNCIONAL  
Evidencia principal: contenido real actual de `skills/academia/`.

## 1. Resumen ejecutivo

- Componentes operativos auditados: 7.
- Auxiliares auditados: 2.
- Estado: REQUIERE_REFACTOR.
- Arquitectura recomendada: mantener estructura plana, pero consolidar el workflow genérico en la instrucción base y conservar las cinco especializaciones como complementos bajo demanda.
- P0: 0; P1: 2; P2: 2; P3: 0.

### Evidencia

`instrucciones_base_academia.md` y `analisis_tecnico_conceptual.md` repiten el rol de revisión de notebooks, el mapeo de celdas, los límites de no invención, cambios mínimos, reproducibilidad, formato de salida y criterios técnicos. La segunda unidad conserva además instrucciones operativas útiles que no están desarrolladas completamente en la base: marcas `# codigo N`/`# texto N`, procedimiento de intervención por tipo de celda y trazabilidad entre entradas, transformación y salida.

Los cinco `analisis_notebook_*.md` comparten el punto de partida genérico, pero cada uno aporta una frontera de riesgo y revisión propia. El checklist se limita a validación de cierre y no reemplaza el procedimiento. El README contiene una referencia textual desactualizada a archivos específicos `02` a `06`, inexistentes con esa nomenclatura.

### Inferencia

La duplicación base/análisis no mejora la autonomía: el README instruye cargar siempre la base y luego el análisis genérico o una especialización. Por ello, una tarea genérica carga dos unidades con gran solapamiento. La consolidación en la base preserva el procedimiento útil y permite que la ruta ordinaria sea `README + instrucciones_base_academia`, más una especialización solo cuando el tema del notebook cambia el criterio de revisión.

### Recomendación

Fusionar `analisis_tecnico_conceptual.md` en `instrucciones_base_academia.md`, actualizar el router y eliminar el original únicamente después de validar la migración. Mantener la estructura plana: no existe evidencia de que migrar a directorios con `SKILL.md` mejore la carga selectiva o la mantenibilidad de nueve Markdown pequeños.

## 2. Inventario funcional

| Componente | Propósito | USAR CUANDO | NO USAR CUANDO | Costo | Estado |
|---|---|---|---|---|---|
| `instrucciones_base_academia.md` | Instrucción común de revisión académica. | Siempre como unidad primaria. | No existe notebook/actividad que revisar. | Bajo actual; medio tras consolidación | Fusionar |
| `analisis_tecnico_conceptual.md` | Workflow genérico detallado de mapeo e intervención. | Notebook general o tema aún no identificado. | Una vez absorbido en la base. | Medio | Fusionar y eliminar tras validación |
| `analisis_notebook_programacion.md` | Revisión de ejecución, dependencias, lógica, pruebas y legibilidad. | El tópico es programación/software. | La modalidad no es programación. | Bajo | Mantener |
| `analisis_notebook_matematicas.md` | Revisión de formalización, supuestos, convergencia y precisión. | El tópico es matemático o numérico. | No se implementan procedimientos matemáticos. | Bajo | Mantener |
| `analisis_notebook_datos_estadistica.md` | Revisión de fuentes, calidad, inferencia y comunicación de resultados. | Hay datos tabulares, EDA o estadística. | El tópico no usa datos/estadística. | Bajo | Mantener |
| `analisis_notebook_ia.md` | Revisión de tarea, particiones, baseline, evaluación y riesgos de IA. | Hay ML, DL, IA generativa o embeddings. | No se entrena/evalúa un modelo de IA. | Bajo | Mantener |
| `analisis_notebook_ciberseguridad.md` | Revisión defensiva, evidencia, seguridad y límites de abuso. | El tema es seguridad defensiva académica. | No existe temática de seguridad; nunca para ofensiva no autorizada. | Bajo | Mantener |
| `checklist_revision_notebook.md` | Verificación final de consistencia. | Cierre, entrega o auditoría. | Como sustituto del procedimiento de revisión. | Bajo, bajo demanda | Mantener |
| `README.md` | Router y límites de carga. | Inicio del dominio. | No aplica. | Bajo | Mejorar |

## 3. Evaluación detallada

Las puntuaciones (1–5) son juicio cualitativo sobre el contenido actual; no representan medición de rendimiento de modelos.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 4 | 5 | 5 | 4 | 5 | 3 | 2 | FUSIONAR |
| Análisis técnico-conceptual | 5 | 4 | 4 | 5 | 3 | 5 | 3 | 2 | FUSIONAR |
| Programación | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Matemáticas | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Datos/estadística | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| IA | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Ciberseguridad | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Checklist | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| README | 5 | 4 | 4 | 5 | 4 | 5 | 5 | 4 | MEJORAR |

## 4. Mapa de responsabilidades y fronteras

| Capa | Responsabilidad que debe conservar | Frontera |
|---|---|---|
| README | Routing, límites y carga selectiva. | No duplica el workflow. |
| Base consolidada | Workflow genérico de revisión, reglas académicas, procedimiento y formato. | No incluye criterios específicos de una disciplina. |
| Especialización | Controles que cambian por temática del notebook. | No repite mapeo de celdas, formato ni reglas generales. |
| Checklist | Evidencia de cierre verificable. | No instruye cómo efectuar el análisis. |

## 5. Redundancias detectadas

### P1-01 — Base y análisis técnico-conceptual

La superposición es alta y cualitativamente sustantiva: rol, alcance, mapeo de celdas, restricciones de no invención, cambios mínimos, reproducibilidad, criterios técnicos y formato de respuesta aparecen en ambas unidades. La información única del análisis genérico es necesaria y tiene destino definido: la base consolidada.

### P1-02 — Router con nomenclatura inexistente

La expresión ``Un archivo específico `02` a `06` `` no identifica rutas reales ni coincide con los nombres actuales. Debe reemplazarse por las cinco rutas explícitas y sus triggers.

### Repetición que se mantiene deliberadamente

Los cinco perfiles especializados declaran ``Además del análisis genérico`` y una lista de controles propios. No se consideran redundantes: programación cubre ejecución y pruebas; matemáticas, formalidad y estabilidad; datos, calidad e inferencia; IA, diseño experimental y evaluación; ciberseguridad, autorización, secretos y foco defensivo. Estas diferencias son necesarias y no deben quedar implícitas.

## 6. Análisis de los cinco perfiles de notebook

| Perfil | Conocimiento especializado que no debe quedar implícito | Evaluación |
|---|---|---|
| Programación | Orden de ejecución, dependencias, responsabilidades, complejidad, pruebas y manejo de errores. | Diferenciado; mantener. |
| Matemáticas | Dominio, dimensiones, signos, condiciones iniciales, tolerancias, convergencia y precisión. | Diferenciado; mantener. |
| Datos/estadística | Fuente, tipos, nulos, transformaciones, supuestos, incertidumbre y no causalidad. | Diferenciado; mantener. |
| IA | Particiones, leakage, baseline, métricas, overfitting, artefactos y evaluación de modelos generativos. | Diferenciado; mantener. |
| Ciberseguridad | Foco defensivo/autorizado, sanitización de secretos y evidencia, y prohibición de abuso. | Diferenciado y crítico; mantener. |

La alternativa sustentada es C: reglas comunes centralizadas + módulos especializados pequeños. No se justifica fusionar los cinco perfiles entre sí.

## 7. Checklist y carga selectiva

El checklist agrega valor como instrumento de cierre porque convierte los controles transversales en verificaciones observables. Su solapamiento con el workflow es funcional, no perjudicial: procedimiento durante la revisión versus control final. Debe permanecer independiente y cargarse solo para entrega, revisión o auditoría.

Tras el refactor, las rutas esperadas serán:

```text
Notebook general: README + base consolidada
Notebook con temática identificada: README + base consolidada + un perfil especializado
Cierre o auditoría: ruta anterior + checklist
```

No se requiere cargar más de un perfil especializado salvo que el material presente dos ámbitos que cambien de forma independiente los criterios de revisión.

## 8. Matriz de relaciones

| Componente A | Componente B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Base | Análisis técnico-conceptual | Altamente redundantes y potencialmente fusionables. | P1 | Fusionar en la base. |
| Base consolidada | Cinco perfiles | Dependiente/complementaria. | Baja | Mantener perfiles bajo demanda. |
| Perfiles entre sí | Independientes con procedimiento común. | Baja | No fusionar. |
| Base consolidada | Checklist | Complementaria. | Baja | Mantener checklist de cierre. |
| README | Perfiles | Router/referencia. | P1 | Actualizar rutas y triggers explícitos. |

## 9. Arquitectura actual y recomendada

```text
Actual
README → base + (análisis técnico-conceptual o perfil) → checklist

Recomendada
README → base consolidada → un perfil solo si cambia el criterio de revisión → checklist de cierre
```

Se mantiene `skills/academia/*.md` plano. No hay evidencia de que una migración a directorios `SKILL.md` reduzca contexto, mejore routing o preserve mejor los perfiles actuales.

## 10. Hallazgos y escalamiento

| Prioridad | Cantidad | Hallazgo |
|---|---:|---|
| P0 | 0 | Ninguno. |
| P1 | 2 | Redundancia base/análisis y referencia imprecisa del README. |
| P2 | 2 | Medir en tareas reales la carga consolidada; revisar referencias del router si cambian rutas futuras. |
| P3 | 0 | Ninguno. |

| ID | Decisión | Motivo | Impacto | Confianza | ¿REVISIÓN_TERRA_ALTA? |
|---|---|---|---|---|---|
| D-01 | Fusionar base y análisis genérico. | Son dos unidades, con destino explícito para todo contenido útil. | Medio | Alta | No |
| D-02 | Mantener los cinco perfiles y checklist. | Sus controles específicos tienen frontera clara. | Medio | Alta | No |
| D-03 | Mantener estructura plana. | No hay beneficio demostrado para migrar a `SKILL.md`. | Bajo | Alta | No |

## 11. Recomendación final

Refactorizar mínimamente: una fusión controlada, actualización del README, validación de cobertura y eliminación posterior del archivo migrado. No crear skills, no fusionar perfiles, no dividir por longitud y no cambiar la estructura de directorios.

# PLAN_EJECUCION_LUNA

El contrato ejecutable se entrega en `docs/plan_refactor_academia_luna_20260910.md`.

```text
HANDOFF_TO_LUNA

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
skills/academia/

Arquitectura aprobada:
README como router; instrucciones_base_academia como workflow genérico consolidado; un perfil especializado solo cuando el tópico lo requiera; checklist de cierre.

Plan:
docs/plan_refactor_academia_luna_20260910.md

Acciones READY:
5

Acciones BLOQUEADAS:
0

Nivel recomendado:
LUNA_MEDIUM para la fusión de contenido; LUNA_LOW para referencia, validación y eliminación condicionada.

Regla:
Ejecutar únicamente acciones READY y en orden de dependencias. No reauditar ni rediseñar. Ante ambigüedad, detener la acción y reportar BLOQUEADA.
```
