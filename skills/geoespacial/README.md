# Dominio geoespacial

## Propósito y alcance

Enrutador para análisis y workflows geoespaciales reproducibles. La arquitectura
se organiza en cinco skills CORE y tres SPECIALIZED; formatos, sensores,
índices, algoritmos y herramientas son conocimiento interno o referencias
condicionales, no skills independientes.

## Mapa de carga selectiva

### CORE

| Skill | USAR CUANDO |
|---|---|
| `preparacion-datos-geoespaciales/SKILL.md` | Se inspeccionen o transformen datos raster/vector, CRS, grillas o metadatos. |
| `teledeteccion-optica/SKILL.md` | Se procesen imágenes ópticas, bandas, nubes, compuestos o índices. |
| `analisis-terreno-proximidad/SKILL.md` | Se deriven variables de relieve o distancias. |
| `modelamiento-geoespacial/SKILL.md` | Existan objetivo, predictores y una decisión de modelamiento. |
| `reproducibilidad-geoespacial/SKILL.md` | Se creen datasets, modelos, análisis o entregables trazables. |

### SPECIALIZED

| Skill | USAR CUANDO |
|---|---|
| `catalogos-stac/SKILL.md` | La selección de assets se realice mediante STAC. |
| `analisis-espaciotemporal/SKILL.md` | La pregunta dependa de series, cambio o covariables temporales. |
| `deep-learning-geoespacial/SKILL.md` | Existan datos, recursos y baseline que justifiquen redes neuronales. |

## Carga y límites de evidencia

Carga este README y una skill primaria; añade solo dependencias concretas.

- Si la tarea crea un dataset derivado, análisis, modelo o entregable que deba repetirse o auditarse, carga además `reproducibilidad-geoespacial/SKILL.md`.
- Para seleccionar, comparar o evaluar familias generales de modelos supervisados, usa `modelamiento-geoespacial/SKILL.md` como skill primaria.
- Si una red neuronal ya está justificada por datos, recursos y baseline, usa `deep-learning-geoespacial/SKILL.md` como skill primaria; carga modelamiento solo si también se requiere comparación o diseño de familias generales fuera de su contrato.
- Carga otras skills solo cuando su trigger sea necesario para la tarea.

Distingue hechos, supuestos, resultados, recomendaciones y límites; no inventes CRS, fuentes, endpoints, disponibilidad, benchmarks, hiperparámetros, costos ni resultados. Los formatos, sensores y algoritmos se eligen según el caso y evidencia disponible. `cr2.md` no tiene significado asignado; no se interpreta.
