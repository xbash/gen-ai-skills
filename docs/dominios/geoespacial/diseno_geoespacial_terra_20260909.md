# Diseño de arquitectura mínima y suficiente: geoespacial

Fecha: 2026-09-09  
Alcance: diseño desde cero para `skills/geoespacial/`. No se creó ni modificó ningún archivo del dominio.

## Base de decisión

**Evidencia.** Los 59 Markdown candidatos son placeholders vacíos. El README raíz exige modularidad, carga selectiva y auditabilidad.  
**Inferencia.** Sus nombres cubren preparación de datos, teledetección, terreno, modelamiento, reproducibilidad, catálogos y series temporales. Son señales exploratorias, no skills existentes.  
**Recomendación.** Crear ocho skills por capacidad/workflow, con referencias compactas y checklist internos. No crear un archivo por formato, sensor, índice, algoritmo o herramienta.

## 1. Diagnóstico

La estructura actual es insuficiente y no operativa: faltan contenido, triggers, límites, inputs, outputs y validaciones. Como lista nominal está sobrefragmentada (59 candidatos), con solapamiento potencial, pero sin contenido que deba preservarse.

## 2. Capacidades fundamentales del dominio

1. Preparación y QA de datos raster/vector: CRS, unidades, extensión, resolución, grilla y metadatos.
2. Teledetección óptica: selección de producto, QA de nubes, bandas, compuestos e índices.
3. Derivación de terreno y proximidad: relieve, distancias, escala y unidades.
4. Modelamiento supervisado: baseline, partición espacial/temporal, métricas, desbalance y límites.
5. Reproducibilidad: fuente, versión, configuración, entorno, linaje y artefactos.
6. Descubrimiento reproducible de assets STAC cuando aplique.
7. Integración espaciotemporal y de covariables meteorológicas cuando la pregunta lo exija.
8. Deep learning geoespacial bajo demanda, con baseline y recursos explícitos.

## 3. Clasificación de candidatos

| Candidato | Tipo real | Utilidad | Frecuencia esperada | ¿Skill independiente? | Motivo |
|---|---|---:|---:|---|---|
| alineamiento.md | PARTE_DE_SKILL | Alta | Alta | No | Control de grilla |
| alos.md | FUENTE_DATOS | Media | Baja | No | Producto no identificado; solo se referencia en óptico si se confirma que el producto es óptico |
| baseline.md | PARTE_DE_SKILL | Alta | Alta | No | Comparación mínima |
| cog.md | FORMATO | Media | Media | No | Formato |
| cr2.md | REVISAR | N/E | N/E | No | Placeholder vacío y sigla ambigua; no hay evidencia verificable de su significado |
| dem.md | FUENTE_DATOS | Alta | Media | No | Insumo de relieve |
| desbalance.md | PARTE_DE_SKILL | Alta | Media | No | Criterio de entrenamiento |
| distancia_caminos.md | PARTE_DE_SKILL | Media | Media | No | Variable de proximidad |
| distancia_poblados.md | PARTE_DE_SKILL | Media | Media | No | Variable de proximidad |
| dvc.md | HERRAMIENTA | Media | Media | No | Herramienta opcional |
| era5.md | FUENTE_DATOS | Media | Media | No | Covariable temporal |
| experimentos.md | WORKFLOW | Alta | Media | No | Ejecución trazable |
| geodesia.md | CONCEPTO | Alta | Media | No | Medida y CRS |
| geojson.md | FORMATO | Media | Media | No | Formato |
| geopackage.md | FORMATO | Media | Media | No | Formato |
| geoparquet.md | FORMATO | Media | Media | No | Formato |
| landsat.md | FUENTE_DATOS | Alta | Media | No | Fuente |
| lightgbm.md | ALGORITMO | Media | Media | No | Alternativa de modelo |
| lineage.md | PARTE_DE_SKILL | Alta | Media | No | Trazabilidad |
| mascaras_nubes.md | PARTE_DE_SKILL | Alta | Media | No | QA óptico |
| metadata.md | PARTE_DE_SKILL | Alta | Alta | No | Contrato de datos |
| metricas.md | PARTE_DE_SKILL | Alta | Alta | No | Evaluación |
| mlflow.md | HERRAMIENTA | Media | Media | No | Herramienta opcional |
| modis.md | FUENTE_DATOS | Media | Baja | No | Fuente |
| mosaicos.md | PARTE_DE_SKILL | Media | Media | No | Producto raster |
| nbr.md | ALGORITMO | Media | Media | No | Índice opcional |
| ndmi.md | ALGORITMO | Media | Media | No | Índice opcional |
| ndvi.md | ALGORITMO | Alta | Alta | No | Índice opcional |
| ndwi.md | ALGORITMO | Media | Media | No | Índice opcional |
| normalizacion.md | PARTE_DE_SKILL | Media | Media | No | Comparabilidad |
| orientacion.md | PARTE_DE_SKILL | Media | Media | No | Derivado |
| pendiente.md | PARTE_DE_SKILL | Media | Media | No | En este contexto se trata provisionalmente como pendiente (slope) derivada de DEM |
| precision_exactitud.md | CONCEPTO | Alta | Media | No | Criterio de evaluación |
| proyecciones.md | CONOCIMIENTO_REFERENCIA | Alta | Alta | No | Decisión CRS |
| random_forest.md | ALGORITMO | Alta | Media | No | Alternativa de modelo |
| raster.md | CONCEPTO | Alta | Alta | No | Tipo de dato |
| recortes.md | PARTE_DE_SKILL | Alta | Alta | No | Operación |
| redes_neuronales.md | ALGORITMO | Media | Baja | No | Familia de métodos |
| reproducibilidad.md | WORKFLOW | Alta | Media | No | Capacidad transversal |
| reproyeccion.md | PARTE_DE_SKILL | Alta | Alta | No | Transformación |
| resampling.md | PARTE_DE_SKILL | Alta | Media | No | Transformación |
| resolucion_espacial.md | CONCEPTO | Alta | Alta | No | Escala |
| resolucion_espectral.md | CONCEPTO | Alta | Media | No | Bandas |
| resolucion_temporal.md | CONCEPTO | Alta | Media | No | Frecuencia |
| rugosidad.md | PARTE_DE_SKILL | Media | Baja | No | Derivado |
| sentinel2.md | FUENTE_DATOS | Alta | Alta | No | Fuente |
| shapefile.md | FORMATO | Media | Media | No | Formato legado |
| sistemas_coordenadas.md | CONOCIMIENTO_REFERENCIA | Alta | Alta | No | CRS |
| spatiotemporal.md | WORKFLOW | Alta | Media | No | Workflow |
| srtm.md | FUENTE_DATOS | Media | Media | No | Fuente DEM |
| stac.md | WORKFLOW | Media | Media | No | Descubrimiento de assets |
| stac_pipeline.md | WORKFLOW | Alta | Media | No | Consulta reproducible |
| stack_bandas.md | PARTE_DE_SKILL | Alta | Media | No | Preparación |
| validacion.md | PARTE_DE_SKILL | Alta | Alta | No | QA/evaluación |
| variables_meteorologicas.md | PARTE_DE_SKILL | Media | Media | No | Covariables |
| vector.md | CONCEPTO | Alta | Alta | No | Tipo de dato |
| versionado_dataset.md | PARTE_DE_SKILL | Alta | Media | No | Control de datos |
| viirs.md | FUENTE_DATOS | Media | Baja | No | Fuente |
| xgboost.md | ALGORITMO | Alta | Media | No | Alternativa de modelo |

## 4. Grupos potencialmente fusionables

```text
raster, vector, COG, GeoJSON, GeoPackage, GeoParquet, Shapefile, geodesia,
CRS, proyecciones, reproyección, recortes, resampling, alineamiento, metadata
  → preparacion-datos-geoespaciales

Sentinel-2, Landsat, MODIS, VIIRS, nubes, stack_bandas, mosaicos,
normalización, resolucion_espectral, NDVI, NDWI, NDMI, NBR
  → teledeteccion-optica

DEM, SRTM, pendiente, orientación, rugosidad, distancias, resolucion_espacial
  → analisis-terreno-proximidad

ALOS
  → referencia condicional en teledeteccion-optica solo si se identifica un
     producto óptico; fuera de esa condición no se incorpora a dicha skill

cr2
  → REVISAR: sin destino hasta identificar inequívocamente su significado

baseline, desbalance, métricas, precisión/exactitud, validación, RF, XGBoost,
LightGBM
  → modelamiento-geoespacial

DVC, MLflow, lineage, experimentos, reproducibilidad, versionado_dataset
  → reproducibilidad-geoespacial

STAC, stac_pipeline → catalogos-stac
spatiotemporal, ERA5, variables meteorológicas, resolucion_temporal
  → analisis-espaciotemporal
redes_neuronales → deep-learning-geoespacial
```

La frontera de cada skill es una decisión operativa y un output verificable. Los grupos no se fusionan más: preparación, teledetección, modelamiento y trazabilidad se activan en momentos distintos y cargar uno no debe obligar a cargar los demás.

## 5. Minimum Viable Skill Set

### CORE (5)

1. `preparacion-datos-geoespaciales`
2. `teledeteccion-optica`
3. `analisis-terreno-proximidad`
4. `modelamiento-geoespacial`
5. `reproducibilidad-geoespacial`

### SPECIALIZED (3)

1. `catalogos-stac`
2. `analisis-espaciotemporal`
3. `deep-learning-geoespacial`

### OPTIONAL

Ninguna. No hay evidencia para una novena skill. Las checklists y referencias necesarias van dentro de los ocho contratos para no multiplicar archivos.

## 6. Arquitectura propuesta

```text
skills/geoespacial/
├── README.md
├── preparacion-datos-geoespaciales/SKILL.md
├── teledeteccion-optica/SKILL.md
├── analisis-terreno-proximidad/SKILL.md
├── modelamiento-geoespacial/SKILL.md
├── reproducibilidad-geoespacial/SKILL.md
├── catalogos-stac/SKILL.md
├── analisis-espaciotemporal/SKILL.md
└── deep-learning-geoespacial/SKILL.md
```

No se crean carpetas de referencias, ejemplos o plantillas inicialmente: no hay evidencia de que aporten valor separado. Cada skill incorpora una sección compacta de referencias internas y checklist de cierre.

## 7. Contrato resumido de cada skill

| Skill | Propósito | USAR CUANDO | NO USAR CUANDO | Entradas | Salida |
|---|---|---|---|---|---|
| preparacion-datos-geoespaciales | Preparar raster/vector coherentes | inspeccionar, convertir, recortar, reproyectar, remuestrear o alinear | el dato ya está validado y solo se modela | archivos, AOI, CRS, unidades, grilla/escala | datos validados y contrato de grilla/CRS |
| teledeteccion-optica | Producir productos ópticos comparables | se usan bandas, nubes, mosaicos o índices | no hay imagen óptica | producto, AOI, período, bandas, QA | producto con QA y comparabilidad |
| analisis-terreno-proximidad | Derivar relieve y proximidad | la hipótesis usa DEM, pendiente, distancia o accesibilidad | esas variables no son pertinentes | DEM/redes, AOI, CRS métrico, escala | derivados y variables de proximidad |
| modelamiento-geoespacial | Evaluar modelos sin fuga espacial/temporal | hay objetivo, predictores y decisión | solo se prepara o consulta dato | objetivo, predictores, partición, métrica | modelo comparado y límites |
| reproducibilidad-geoespacial | Trazar datos, procesos y resultados | se crean datasets, análisis, modelos o entregables | la exploración es efímera | fuentes, versiones, configuración, artefactos | manifiesto de linaje |
| catalogos-stac | Seleccionar assets STAC reproduciblemente | la adquisición/selección usa STAC | los datos ya tienen procedencia suficiente | catálogo, colección, AOI, tiempo, filtros | consulta y assets registrados |
| analisis-espaciotemporal | Integrar series y covariables sin fuga | la pregunta usa cambio, estacionalidad o series | solo hay una fecha relevante | unidades, período, fuentes, agregación | dataset temporal alineado |
| deep-learning-geoespacial | Diseñar experimentos neuronales controlados | hay datos, recursos y baseline adecuados | un baseline simple basta o faltan particiones | tarea, datos, partición, baseline, recursos | experimento comparable y trazable |

Validaciones transversales a conservar dentro de los contratos: CRS y unidades explícitas; cobertura/AOI; resolución; nodata; procedencia; partición espacial/temporal cuando aplique; distinción de hechos, supuestos, resultados y límites.

## 8. Matriz de trazabilidad

| Candidato original | Destino propuesto | Motivo |
|---|---|---|
| alineamiento.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Control de grilla |
| alos.md | teledeteccion-optica / referencia condicional | Solo si el producto identificado corresponde al alcance óptico; no se presume por el nombre |
| baseline.md | modelamiento-geoespacial / conocimiento interno o referencia | Comparación mínima |
| cog.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Formato |
| cr2.md | REVISAR — sin migración | Sigla ambigua y archivo vacío; no existe evidencia verificable para asignarlo |
| dem.md | analisis-terreno-proximidad / conocimiento interno o referencia | Insumo de relieve |
| desbalance.md | modelamiento-geoespacial / conocimiento interno o referencia | Criterio de entrenamiento |
| distancia_caminos.md | analisis-terreno-proximidad / conocimiento interno o referencia | Variable de proximidad |
| distancia_poblados.md | analisis-terreno-proximidad / conocimiento interno o referencia | Variable de proximidad |
| dvc.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Herramienta opcional |
| era5.md | analisis-espaciotemporal / conocimiento interno o referencia | Covariable temporal |
| experimentos.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Ejecución trazable |
| geodesia.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Medida y CRS |
| geojson.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Formato |
| geopackage.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Formato |
| geoparquet.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Formato |
| landsat.md | teledeteccion-optica / conocimiento interno o referencia | Fuente |
| lightgbm.md | modelamiento-geoespacial / conocimiento interno o referencia | Alternativa de modelo |
| lineage.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Trazabilidad |
| mascaras_nubes.md | teledeteccion-optica / conocimiento interno o referencia | QA óptico |
| metadata.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Contrato de datos |
| metricas.md | modelamiento-geoespacial / conocimiento interno o referencia | Evaluación |
| mlflow.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Herramienta opcional |
| modis.md | teledeteccion-optica / conocimiento interno o referencia | Fuente |
| mosaicos.md | teledeteccion-optica / conocimiento interno o referencia | Producto raster |
| nbr.md | teledeteccion-optica / conocimiento interno o referencia | Índice opcional |
| ndmi.md | teledeteccion-optica / conocimiento interno o referencia | Índice opcional |
| ndvi.md | teledeteccion-optica / conocimiento interno o referencia | Índice opcional |
| ndwi.md | teledeteccion-optica / conocimiento interno o referencia | Índice opcional |
| normalizacion.md | teledeteccion-optica / conocimiento interno o referencia | Comparabilidad |
| orientacion.md | analisis-terreno-proximidad / conocimiento interno o referencia | Derivado |
| pendiente.md | analisis-terreno-proximidad / conocimiento interno | Pendiente (slope) como derivada de DEM, consistente con el grupo de terreno |
| precision_exactitud.md | modelamiento-geoespacial / conocimiento interno o referencia | Criterio de evaluación |
| proyecciones.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Decisión CRS |
| random_forest.md | modelamiento-geoespacial / conocimiento interno o referencia | Alternativa de modelo |
| raster.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Tipo de dato |
| recortes.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Operación |
| redes_neuronales.md | deep-learning-geoespacial / conocimiento interno o referencia | Familia de métodos |
| reproducibilidad.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Capacidad transversal |
| reproyeccion.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Transformación |
| resampling.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Transformación |
| resolucion_espacial.md | analisis-terreno-proximidad / conocimiento interno o referencia | Escala |
| resolucion_espectral.md | teledeteccion-optica / conocimiento interno o referencia | Bandas |
| resolucion_temporal.md | analisis-espaciotemporal / conocimiento interno o referencia | Frecuencia |
| rugosidad.md | analisis-terreno-proximidad / conocimiento interno o referencia | Derivado |
| sentinel2.md | teledeteccion-optica / conocimiento interno o referencia | Fuente |
| shapefile.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Formato legado |
| sistemas_coordenadas.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | CRS |
| spatiotemporal.md | analisis-espaciotemporal / conocimiento interno o referencia | Workflow |
| srtm.md | analisis-terreno-proximidad / conocimiento interno o referencia | Fuente DEM |
| stac.md | catalogos-stac / conocimiento interno o referencia | Descubrimiento de assets |
| stac_pipeline.md | catalogos-stac / conocimiento interno o referencia | Consulta reproducible |
| stack_bandas.md | teledeteccion-optica / conocimiento interno o referencia | Preparación |
| validacion.md | modelamiento-geoespacial / conocimiento interno o referencia | QA/evaluación |
| variables_meteorologicas.md | analisis-espaciotemporal / conocimiento interno o referencia | Covariables |
| vector.md | preparacion-datos-geoespaciales / conocimiento interno o referencia | Tipo de dato |
| versionado_dataset.md | reproducibilidad-geoespacial / conocimiento interno o referencia | Control de datos |
| viirs.md | teledeteccion-optica / conocimiento interno o referencia | Fuente |
| xgboost.md | modelamiento-geoespacial / conocimiento interno o referencia | Alternativa de modelo |

## 9. Skills que faltan

No se recomienda otra skill. Tres capacidades necesarias no estaban expresadas con claridad y deben ser secciones internas: QA espacial/topología básica en preparación; prevención de fuga espacial/temporal en modelamiento y análisis temporal; y adecuación/procedencia/licencia disponible de fuentes en STAC y reproducibilidad. Son controles de workflows existentes, no skills independientes.

## 10. Elementos eliminables

No se descarta ningún candidato. `pendiente.md` se conserva como derivada de terreno. `alos.md` queda como referencia condicional: solo se incorpora a teledetección óptica al identificar un producto óptico. `cr2.md` no se migra ni se elimina hasta aclarar su significado. Los restantes 56 candidatos no justifican archivos autónomos, pero se absorben como referencia o conocimiento interno. No deben persistirse tutoriales, fórmulas aisladas, catálogos exhaustivos, hiperparámetros por defecto ni comparativas no verificadas. Sí deben persistirse criterios de elección, restricciones, validaciones y trazabilidad.

## 11. Evaluación de eficiencia

| Skill | Valor operativo | Frecuencia | Contexto | Especificidad | Reutilización |
|---|---|---|---|---|---|
| preparacion-datos-geoespaciales | Alto | Alto | Medio | Alto | Alto |
| teledeteccion-optica | Alto | Alto | Medio | Alto | Alto |
| analisis-terreno-proximidad | Alto | Medio | Medio | Alto | Medio |
| modelamiento-geoespacial | Alto | Alto | Medio | Alto | Alto |
| reproducibilidad-geoespacial | Alto | Medio | Bajo | Alto | Alto |
| catalogos-stac | Alto | Medio | Bajo | Alto | Medio |
| analisis-espaciotemporal | Alto | Medio | Medio | Alto | Medio |
| deep-learning-geoespacial | Alto | Bajo | Medio | Alto | Medio |

La reducción nominal es de 59 candidatos a 8 skills y un README enrutador. El descenso de contexto esperado es cualitativamente alto por carga selectiva; no se afirman tokens, precisión ni calidad cuantificados sin medición. El riesgo es fusionar contenido especializado sin frontera; los anti-triggers y contratos lo limitan.

## 12. Recomendación final

- Candidatos actuales: 59.
- CORE propuestos: 5.
- SPECIALIZED propuestos: 3.
- Convertidos en referencias/conocimiento interno: 57, más `alos.md` como referencia condicional.
- Descartados: 0.
- En revisión sin migración ni eliminación: 1 (`cr2.md`).
- Decisiones que requieren revisión Terra High: 0.

El plan posterior está en `docs/plan_creacion_geoespacial_luna_20260909.md`.
