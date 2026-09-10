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

Carga este README y solo la skill aplicable, más dependencias concretas que su
contrato solicite. No cargues todo el dominio por defecto. Distingue hechos,
supuestos, resultados, recomendaciones y límites; no inventes CRS, fuentes,
endpoints, disponibilidad, benchmarks, hiperparámetros, costos ni resultados.
Los formatos, sensores y algoritmos se eligen según el caso y evidencia
disponible. `cr2.md` no tiene significado asignado; no se interpreta.
