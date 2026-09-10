# Auditoría post-refactor: geoespacial

Fecha: 2026-09-09  
Alcance: contenido actual de `skills/geoespacial/`. No se modificó el dominio.

## Evidencia y límite

**Evidencia.** Hay ocho `SKILL.md`, un README con ocho enlaces internos resolubles y `cr2.md` de 0 bytes. Cada skill tiene propósito, triggers, entradas, workflow, salida, validaciones, conocimiento incluido y checklist; su extensión está entre 178 y 231 palabras.  
**Límite.** Auditoría estática: no prueba rendimiento de modelos ni ahorro cuantificado de tokens. `cr2.md` no se interpreta.

## 1. Resumen ejecutivo

- Skills auditadas: 8; auxiliares: README y `cr2.md` pendiente.
- Estado: **APROBADO_CON_MEJORAS**.
- La implementación reemplazó 59 placeholders por ocho capacidades operativas y redujo sobrefragmentación.
- No hay tutoriales extensos, defaults, benchmarks, endpoints, especificaciones de fabricante ni una skill por concepto.
- Dos mejoras justificadas se concentran en el README: trigger de reproducibilidad y frontera modelamiento/deep learning.

## 2. Inventario funcional

| Skill | Propósito | USAR CUANDO | Costo | Estado |
|---|---|---|---|---|
| preparacion-datos-geoespaciales | Preparar raster/vector. | Hay transformación, CRS, grilla o metadatos. | MEDIO | Operativa |
| teledeteccion-optica | Producir producto óptico comparable. | Hay bandas, nubes, compuestos o índices. | MEDIO | Operativa |
| analisis-terreno-proximidad | Derivar relieve y proximidad. | Hay DEM, slope, orientación, rugosidad o distancia. | MEDIO | Operativa |
| modelamiento-geoespacial | Evaluar modelo supervisado. | Hay objetivo, predictores y decisión. | MEDIO | Operativa |
| reproducibilidad-geoespacial | Trazar procesos y artefactos. | Se crean artefactos repetibles/auditables. | BAJO | Transversal |
| catalogos-stac | Seleccionar assets STAC. | La adquisición usa STAC. | BAJO | Especializada |
| analisis-espaciotemporal | Integrar series sin fuga. | Hay cambio, series o covariables temporales. | MEDIO | Especializada |
| deep-learning-geoespacial | Diseñar experimento neuronal. | Datos, recursos y baseline lo justifican. | MEDIO | Especializada |
| README.md | Enrutar la carga. | Se elige skill/dependencia. | BAJO | Auxiliar |
| cr2.md | Ninguno verificable. | No activar. | BAJO | Pendiente/REVISAR |

## 3. Evaluación detallada

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---|
| preparacion-datos-geoespaciales | 5 | 4 | 5 | 5 | 4 | 5 | 4 | 4 | MANTENER |
| teledeteccion-optica | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | MANTENER |
| analisis-terreno-proximidad | 4 | 4 | 5 | 5 | 5 | 4 | 5 | 5 | MANTENER |
| modelamiento-geoespacial | 5 | 5 | 4 | 4 | 4 | 5 | 4 | 4 | MANTENER |
| reproducibilidad-geoespacial | 5 | 4 | 5 | 3 | 5 | 5 | 4 | 4 | MANTENER |
| catalogos-stac | 4 | 5 | 5 | 5 | 5 | 4 | 5 | 5 | MANTENER |
| analisis-espaciotemporal | 5 | 5 | 5 | 5 | 4 | 4 | 4 | 4 | MANTENER |
| deep-learning-geoespacial | 4 | 5 | 4 | 4 | 4 | 4 | 4 | 4 | MANTENER |
| README.md | 5 | 3 | 4 | 3 | 5 | 5 | 5 | 5 | MANTENER_CON_CAMBIOS_MENORES |

`cr2.md` no es skill y no recibe puntuación.

## 4. Problemas detectados

### P1 — reproducibilidad no es dependencia explícita

README permite `README + una skill + dependencias concretas`. Reproducibilidad indica que debe activarse cuando se creen datasets, análisis, modelos o entregables repetibles/auditables, pero ninguna regla del router convierte esa condición en dependencia concreta. Una carga literal de skill primaria puede omitir el control transversal. La mejora requerida es una regla de router, no una fusión ni cambio de skill.

### P2 — frontera modelamiento/deep learning en el router

Ambas skills incluyen baseline, partición, métricas y fuga. Esa repetición es necesaria para autonomía de deep learning y no justifica fusionarlas. Falta indicar qué skill es primaria cuando una red neuronal ya está justificada y cuándo sumar modelamiento para comparar familias generales.

### Redundancia, cobertura y densidad

La repetición de CRS/AOI/nodata entre preparación, terreno y óptica es necesaria para autonomía. La procedencia en STAC, temporal y reproducibilidad tiene fines distintos. No hay redundancia que deba centralizarse. Las funciones de los candidatos anteriores están cubiertas por workflows; no se exige literalidad de cada nombre.

## 5. Matriz de relaciones

| Skill A | Skill B | Relación | Severidad | Acción |
|---|---|---|---|---|
| preparación | óptica | Complementarias | Baja | Mantener reglas locales |
| preparación | terreno | Complementarias | Baja | Mantener CRS/unidades locales |
| modelamiento | deep learning | Parcialmente redundantes | Media | Aclarar skill primaria en README |
| modelamiento | espaciotemporal | Complementarias | Baja | Cargar ambas solo si se modela una serie |
| reproducibilidad | todas | Dependiente transversal | Alta | Añadir trigger de router |
| STAC | óptica | Complementarias | Baja | Mantener descubrimiento separado de procesamiento |

## 6. Arquitectura objetivo

```text
implementación actual
README + 5 CORE + 3 SPECIALIZED + cr2 pendiente
        ↓
arquitectura objetivo
misma estructura; README con dos reglas explícitas de enrutamiento
```

No se justifica fusionar, dividir, reubicar ni crear skills.

## 7. Decisiones que requieren revisión adicional

| ID | Decisión | Motivo | Impacto | Confianza | ¿REVISIÓN_TERRA_ALTA? |
|---|---|---|---|---|---|
| D001 | Editar README para activar reproducibilidad en artefactos persistentes. | Trigger transversal no materializado. | Alto | Alta | No |
| D002 | Aclarar modelamiento/deep learning en README. | Router incompleto ante solapamiento controlado. | Medio | Alta | No |
| D003 | Mantener cr2 sin interpretar ni eliminar. | Sigue vacío y ambiguo. | Bajo | Alta | No |

No hay decisiones REVISIÓN_TERRA_ALTA.

## 8. Fidelidad de implementación

| Requisito | Implementación real | Resultado |
|---|---|---|
| 5 CORE + 3 SPECIALIZED | Ocho skills en las rutas aprobadas. | Correcto |
| README router | Mapa y ocho enlaces existentes. | Correcto con mejoras de trigger |
| ALOS condicional | Óptica exige producto ALOS identificado como óptico. | Correcto |
| cr2 pendiente | Vacío; README y preparación prohíben interpretarlo. | Correcto |
| Sin skill SAR/radar | Ninguna creada; deep learning lo prohíbe. | Correcto |
| Limpieza | 58 placeholders eliminados; cr2 permanece. | Correcto |
| Contenido no autorizado | No observado. | Correcto |

## 9. Carga selectiva y fronteras

README + una skill es razonable para la mayoría de tareas. Para artefactos persistentes debe sumarse reproducibilidad. Deep learning puede ser primaria una vez justificado; modelamiento se suma solo para comparar/diseñar familias generales. STAC/óptica y preparación/terreno conservan fronteras claras. No existe ambigüedad significativa que exija segunda refactorización estructural.

## 10. Comparación antes/después

| Dimensión | Antes | Después | Resultado |
|---|---|---|---|
| Fragmentación | 59 placeholders vacíos. | 8 capacidades + router + cr2 pendiente. | Mejora alta |
| Activación selectiva | Inexistente. | Triggers y anti-triggers. | Mejora alta |
| Cobertura | Nominal. | Workflows operativos. | Mejora alta |
| Redundancia | No evaluable. | Local y mayormente necesaria. | Mejora |
| Densidad | Nula. | 178--231 palabras orientadas a decisión. | Mejora alta |
| Mantenibilidad | Sin contratos. | Fronteras uniformes. | Mejora alta |
| Costo de contexto | Ruido de placeholders. | Carga selectiva; sin medición. | Mejora cualitativa |
| Riesgo de ambigüedad | Alto. | Bajo, con dos reglas de router pendientes. | Mejora |

### Conclusión arquitectónica

```text
actual: README + 5 CORE + 3 SPECIALIZED + cr2 pendiente
  ↓
objetivo: misma estructura; README con dos reglas explícitas de enrutamiento
```

No se justifica fusionar, dividir, reubicar ni crear skills.

### Detalle de decisiones

| ID | Decisión | Impacto | Confianza | ¿REVISIÓN_TERRA_ALTA? |
|---|---|---|---|---|
| D001 | Editar README para activar reproducibilidad en artefactos persistentes. | Alto | Alta | No |
| D002 | Aclarar modelamiento/deep learning en README. | Medio | Alta | No |
| D003 | Mantener cr2 sin interpretar ni eliminar. | Bajo | Alta | No |

No hay decisiones REVISIÓN_TERRA_ALTA.

## 11. Impacto y recomendación final

| Cambio | Contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Trigger de reproducibilidad | = | ↑ | ↑ | Bajo |
| Frontera modelamiento/deep learning | = | ↑ | ↑ | Bajo |

P0: 0. P1: 1. P2: 1. P3: 0.  
Se requiere `PLAN_EJECUCION_LUNA` para dos ajustes mínimos de README; no se modifican skills ni arquitectura.
