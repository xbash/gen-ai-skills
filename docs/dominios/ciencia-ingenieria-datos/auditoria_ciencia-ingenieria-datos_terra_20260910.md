# Auditoría de dominio — ciencia-ingenieria-datos

Fecha: 20260910  
Tipo: AUDITORÍA DE DOMINIO FUNCIONAL  
Evidencia principal: contenido real y actual de `skills/ciencia-ingenieria-datos/`.

## 1. Resumen ejecutivo

- Módulos operativos auditados: 12.
- Componentes auxiliares auditados: 3.
- Estado: APROBADO_CON_MEJORAS.
- P0: 0; P1: 0; P2: 2; P3: 0.
- Ambigüedad significativa: no.
- Plan de ejecución Luna: no requerido.

El dominio es funcional, con una base, controles transversales, once módulos temáticos y un checklist de cierre. Cada módulo operativo contiene alcance, trigger, límite de uso, reglas aplicables y validación mínima. La arquitectura soporta carga selectiva: base, normalmente controles transversales, un módulo principal y complementos solo ante dependencia concreta.

La repetición de calidad, trazabilidad, leakage, privacidad, reproducibilidad o incertidumbre aparece como control aplicado en distintos riesgos; no se constató redundancia perjudicial que justifique fusionar o eliminar conocimiento. No se registran mediciones de tokens ni tareas de evaluación representativas, por lo que no se infiere una optimización cuantitativa adicional.

## 2. Inventario funcional

| Componente | Propósito real | USAR CUANDO | Costo | Estado |
|---|---|---|---|---|
| `instrucciones_base_cied.md` | Rol, alcance, rigor, prácticas de datos y formato de respuesta. | Siempre como entrada del dominio. | Medio | Operativo base |
| `reglas_transversales_cied.md` | Controles comunes de problema, evidencia, datos, evaluación y privacidad. | Se requieran controles comunes junto a la base. | Bajo | Auxiliar transversal |
| `fundamentos_matematicos_estadisticos_reglas.md` | Supuestos, fórmulas, simulación, optimización e incertidumbre. | Se justifiquen, deriven o interpreten métodos cuantitativos. | Bajo | Operativo |
| `programacion_algoritmos_software_reglas.md` | Código, notebooks, algoritmos, pruebas y empaquetado para datos. | Se diseñe, revise o corrija software para datos. | Bajo | Operativo |
| `bases_datos_almacenamiento_recuperacion_reglas.md` | Modelado, almacenamiento, consulta y recuperación. | Se decida cómo almacenar, consultar o recuperar datos. | Bajo | Operativo |
| `analisis_estadistico_modelamiento_reglas.md` | EDA, inferencia, regresión, series, causalidad y A/B testing. | La tarea sea análisis estadístico aplicado. | Bajo | Operativo |
| `ml_dl_ia_reglas.md` | Selección, entrenamiento y evaluación de ML/DL/IA aplicada. | Se modelen datos con ML, DL, embeddings o IA generativa. | Bajo | Operativo |
| `big_data_sistemas_distribuidos_reglas.md` | Batch, streaming, paralelismo y operación distribuida. | Volumen, velocidad, latencia o resiliencia lo justifiquen. | Bajo | Operativo |
| `mineria_analitica_pipeline_reglas.md` | Transformaciones, calidad, contratos y pipelines. | Se transforme, publique u opere dato recurrente. | Bajo | Operativo |
| `nlp_vision_audiovisual_reglas.md` | Riesgos y validaciones de texto, documentos, imagen, audio y video. | La modalidad cambie adquisición, partición, extracción o evaluación. | Bajo | Operativo |
| `visualizacion_comunicacion_datos_reglas.md` | Visualización, BI, comunicación e interpretación para decisión. | Se comunique, monitoree o apoye una decisión. | Bajo | Operativo |
| `metodologia_experimentos_reproducibilidad_reglas.md` | Protocolo, comparabilidad y reproducibilidad experimental. | Se ejecute, compare o audite un experimento. | Bajo | Operativo |
| `etica_privacidad_gobernanza_datos_reglas.md` | Privacidad, gobierno, linaje, acceso, sesgos y uso responsable. | Haya datos sensibles, acceso, cumplimiento o decisiones automatizadas. | Bajo | Operativo |
| `checklist_ciencia_ingenieria_datos.md` | Verificación de cierre. | Cierre, revisión técnica o auditoría. | Bajo, bajo demanda | Auxiliar |
| `README.md` | Router, catálogo y límites de carga. | Punto de entrada del dominio. | Medio | Auxiliar |

## 3. Evaluación detallada

Las puntuaciones son juicio cualitativo de contenido, no medición de desempeño de modelos.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| Base | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 4 | MANTENER |
| Transversal | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Fundamentos | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Programación | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Bases de datos | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Análisis estadístico | 5 | 5 | 4 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| ML/DL/IA | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Big data | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Minería/pipelines | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| NLP/visión/audiovisual | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Visualización | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 | MANTENER |
| Metodología/reproducibilidad | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Ética/gobernanza | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| Checklist | 5 | 4 | 5 | 5 | 5 | 5 | 5 | 4 | MANTENER |
| README | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 5 | MANTENER |

## 4. Relaciones y fronteras

| Componente A | Componente B | Relación | Severidad | Acción |
|---|---|---|---|---|
| Fundamentos | Análisis estadístico | Complementaria. | Baja | Mantener: justificación cuantitativa versus aplicación analítica. |
| Análisis estadístico | ML/DL/IA | Parcialmente solapada en evaluación. | Baja | Mantener: inferencia/causalidad/series versus modelamiento predictivo. |
| Minería/pipelines | Bases de datos | Complementaria. | Baja | Mantener: flujo/calidad versus almacenamiento/recuperación. |
| Minería/pipelines | Big data | Dependiente solo con restricciones de escala. | Baja | Activar big data solo por volumen, latencia o resiliencia. |
| ML/DL/IA | NLP/visión/audiovisual | Complementaria. | Baja | Mantener: modelo general versus criterios de modalidad. |
| Metodología | Análisis estadístico / ML/DL/IA | Complementaria de experimento. | Baja | Activar cuando se ejecute, compare o audite. |
| Ética/gobernanza | Bases de datos / ML/DL/IA | Complementaria de riesgo. | Baja | Activar por datos sensibles, acceso, cumplimiento o decisión automatizada. |
| Base | Transversal | Complementaria con controles comunes relacionados. | Baja | Mantener capas separadas: alcance/formato versus controles verificables. |
| Checklist | Base/transversal | Complementaria de cierre. | Baja | Mantener bajo demanda. |

## 5. Problemas y oportunidades

### Redundancia y solapamiento

La evidencia no muestra redundancia perjudicial. Los módulos especializados repiten controles de manera contextual: por ejemplo, el leakage se adapta a análisis, pipelines, ML y modalidades; privacidad se adapta a gobierno, bases de datos, IA y datos multimodales. Ese solapamiento es necesario para una carga autónoma y no demuestra que corresponda una fusión.

### Fragmentación y arquitectura

No hay módulos que representen únicamente una herramienta o concepto. Las fronteras responden a capacidades reutilizables. La estructura plana con nombres descriptivos y README router es suficiente; no hay evidencia de beneficio al migrar a directorios `SKILL.md`.

### Contexto y carga selectiva

La carga recomendada no obliga a cargar módulos especializados no pertinentes. La base y la capa transversal constituyen una política explícita del dominio; su posible ajuste solo debería evaluarse con tareas representativas y un criterio de calidad, no mediante recorte estático.

## 6. Arquitectura objetivo

```text
README (router)
  → instrucciones_base_cied
  → reglas_transversales_cied cuando apliquen controles comunes
  → un módulo temático principal
  → complementos solo por dependencia concreta
  → checklist solo para cierre o auditoría
```

La arquitectura objetivo coincide con la actual.

## 7. Hallazgos y decisiones

| Prioridad | Cantidad | Hallazgo |
|---|---:|---|
| P0 | 0 | Sin pérdida de contenido crítico, referencias rotas detectables ni errores metodológicos. |
| P1 | 0 | Sin cambio estructural o de contenido de alto impacto justificado. |
| P2 | 2 | Evaluar carga con tareas representativas; revisar duplicados literales solo si aparecen tras mantenimiento futuro. |
| P3 | 0 | Ninguno. |

| ID | Decisión | Motivo | Impacto | Confianza | ¿REVISIÓN_TERRA_ALTA? |
|---|---|---|---|---|---|
| Ninguna | No hay decisión arquitectónica abierta. | Fronteras claras y contenido especializado preservado. | — | Alta | No |

# PLAN_EJECUCION_LUNA

**NO REQUERIDO.** No existen P0, P1 ni ambigüedad significativa. Las oportunidades P2 requieren evidencia de uso o medición antes de proponer cambios.

```text
HANDOFF_TO_LUNA

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
skills/ciencia-ingenieria-datos/

Arquitectura aprobada:
README como router; base; controles transversales; un módulo temático principal; complementos concretos; checklist de cierre.

Plan:
PLAN_EJECUCION_LUNA: NO REQUERIDO

Acciones READY:
0

Acciones BLOQUEADAS:
0

Regla:
No ejecutar refactorización. Mantener el dominio como candidato a STABLE y abordar P2 solo con evidencia nueva.
```
