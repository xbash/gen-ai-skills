# PLAN_EJECUCION_LUNA

Proyecto: `C:/rutinas-local/gen-ai-skills-root/gen-ai-skills`  
Diseño aprobado: `docs/diseno_geoespacial_terra_20260909.md`  
Dominio: `skills/geoespacial/`

Ejecutar solo acciones `READY`, en orden de dependencias. No rediseñar ni inferir contenido desde placeholders. Las acciones de redacción son `LUNA_MEDIUM` y no pueden agregar datos, fuentes, disponibilidad, rendimiento, costos, tiempos ni recomendaciones no verificadas.

## BATCH 1 — estructura y README

```yaml
action_id: A001
priority: P1
type: MKDIR
execution_level: LUNA_LOW
status: READY
depends_on: []
files_to_load:
  - "docs/plan_creacion_geoespacial_luna_20260909.md"
target: skills/geoespacial/
objective: "Crear los ocho directorios aprobados."
instructions:
  - "Crear solo los ocho directorios de la arquitectura 5 CORE + 3 SPECIALIZED."
must_preserve:
  - "Todos los placeholders existentes."
must_remove:
  []
acceptance_criteria:
  - "Existen los ocho directorios destino."
rollback:
  - "Eliminar solo directorios nuevos y vacíos si el lote falla."
```

```yaml
action_id: A002
priority: P1
type: REWRITE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
  - "skills/geoespacial/README.md"
target: skills/geoespacial/README.md
objective: "Convertir README en enrutador de carga selectiva."
instructions:
  - "Reescribir solo conforme al contrato."
  - "No declarar operativos los placeholders durante la transición."
must_preserve:
  - "Ruta README.md."
  - "Modularidad, auditabilidad y no invención."
must_remove:
  - "Declaración de dominio solo con placeholders."
acceptance_criteria:
  - "Lista 5 CORE y 3 SPECIALIZED con rutas/triggers."
  - "Indica cargar README más una skill aplicable."
rollback:
  - "Restaurar contenido previo de README."
content_contract:
  required_sections:
  - "Propósito y alcance"
  - "Mapa CORE/SPECIALIZED con triggers"
  - "Carga selectiva y límites de evidencia"
  concepts_to_preserve:
  - "Arquitectura 5 CORE + 3 SPECIALIZED"
  duplicated_content_to_remove:
  - "Reglas técnicas duplicadas"
  forbidden_changes:
  - "Crear novena skill"
  - "Presentar placeholders como instrucciones"
```

## BATCH 2 — cinco CORE

```yaml
action_id: A003
priority: P1
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001, A002]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/preparacion-datos-geoespaciales/SKILL.md
objective: "Preparar y validar raster/vector"
instructions:
  - "Redactar exclusivamente el contrato de preparacion-datos-geoespaciales."
must_preserve:
  - "CRS, unidades, AOI, grilla, nodata y metadatos"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "alineamiento, COG, geodesia, GeoJSON, GeoPackage, GeoParquet, metadata, proyecciones, raster, recortes, reproyeccion, resampling, Shapefile, sistemas de coordenadas, vector"
  duplicated_content_to_remove:
  - "Tutoriales, defaults y tablas exhaustivas"
  forbidden_changes:
  - "No interpretar cr2.md"
```

```yaml
action_id: A004
priority: P1
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001, A002]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/teledeteccion-optica/SKILL.md
objective: "Crear productos ópticos comparables"
instructions:
  - "Redactar exclusivamente el contrato de teledeteccion-optica."
must_preserve:
  - "AOI, período, bandas, QA de nubes y comparabilidad"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "Landsat, MODIS, Sentinel-2, VIIRS, máscaras de nubes, mosaicos, bandas, normalización, NDVI, NDWI, NDMI, NBR, resolución espectral"
  duplicated_content_to_remove:
  - "Tutoriales, defaults y tablas exhaustivas"
  forbidden_changes:
  - "No incluir ALOS sin producto óptico identificado"
```

```yaml
action_id: A005
priority: P1
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001, A002]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/analisis-terreno-proximidad/SKILL.md
objective: "Derivar terreno y proximidad"
instructions:
  - "Redactar exclusivamente el contrato de analisis-terreno-proximidad."
must_preserve:
  - "CRS métrico, unidades, escala, fuente y método"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "DEM, SRTM, pendiente, orientación, rugosidad, distancia a caminos/poblados, resolución espacial"
  duplicated_content_to_remove:
  - "Tutoriales, defaults y tablas exhaustivas"
  forbidden_changes:
  - "No eliminar pendiente.md de trazabilidad"
```

```yaml
action_id: A006
priority: P1
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001, A002]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/modelamiento-geoespacial/SKILL.md
objective: "Modelar y validar sin fuga"
instructions:
  - "Redactar exclusivamente el contrato de modelamiento-geoespacial."
must_preserve:
  - "Baseline, partición espacial/temporal y métrica justificada"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "baseline, desbalance, métricas, precisión/exactitud, validación, Random Forest, XGBoost, LightGBM"
  duplicated_content_to_remove:
  - "Tutoriales, defaults y tablas exhaustivas"
  forbidden_changes:
  - "No imponer validación aleatoria"
```

```yaml
action_id: A007
priority: P1
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A001, A002]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/reproducibilidad-geoespacial/SKILL.md
objective: "Trazar fuentes, procesos y resultados"
instructions:
  - "Redactar exclusivamente el contrato de reproducibilidad-geoespacial."
must_preserve:
  - "Fuente, versión, configuración, entorno, linaje y artefactos"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "DVC, MLflow, experimentos, lineage, reproducibilidad, versionado dataset"
  duplicated_content_to_remove:
  - "Tutoriales, defaults y tablas exhaustivas"
  forbidden_changes:
  - "No exigir DVC o MLflow"
```

## BATCH 3 — tres SPECIALIZED

```yaml
action_id: A008
priority: P2
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A002, A003, A004, A005, A006, A007]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/catalogos-stac/SKILL.md
objective: "Seleccionar assets STAC reproduciblemente"
instructions:
  - "Redactar exclusivamente el contrato de catalogos-stac."
must_preserve:
  - "Catálogo, colección, AOI, tiempo, filtros y assets"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "STAC, stac_pipeline"
  duplicated_content_to_remove:
  - "Contenido no necesario del workflow"
  forbidden_changes:
  - "No inventar endpoints o colecciones"
```

```yaml
action_id: A009
priority: P2
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A002, A003, A004, A005, A006, A007]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/analisis-espaciotemporal/SKILL.md
objective: "Integrar series sin fuga temporal"
instructions:
  - "Redactar exclusivamente el contrato de analisis-espaciotemporal."
must_preserve:
  - "Frecuencia, período, unión, desfase y procedencia"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "ERA5, resolución temporal, spatiotemporal, variables meteorológicas"
  duplicated_content_to_remove:
  - "Contenido no necesario del workflow"
  forbidden_changes:
  - "No usar información futura"
```

```yaml
action_id: A010
priority: P2
type: CREATE
execution_level: LUNA_MEDIUM
status: READY
depends_on: [A002, A003, A004, A005, A006, A007]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/deep-learning-geoespacial/SKILL.md
objective: "Experimentar redes con controles geoespaciales"
instructions:
  - "Redactar exclusivamente el contrato de deep-learning-geoespacial."
must_preserve:
  - "Datos, partición, baseline, métricas, recursos y parada"
must_remove:
  []
acceptance_criteria:
  - "Incluye propósito, USAR CUANDO, NO USAR CUANDO, entradas, workflow, salida, validaciones, conocimiento incluido y checklist."
rollback:
  - "Eliminar solo este archivo creado antes de dependencias posteriores."
content_contract:
  required_sections:
  - "Propósito"
  - "USAR CUANDO"
  - "NO USAR CUANDO"
  - "Entradas"
  - "Workflow"
  - "Salida"
  - "Validaciones"
  - "Conocimiento incluido"
  - "Checklist"
  concepts_to_preserve:
  - "redes neuronales"
  duplicated_content_to_remove:
  - "Contenido no necesario del workflow"
  forbidden_changes:
  - "No crear skill SAR/radar"
```

## BATCH 4 — validación

```yaml
action_id: A011
priority: P1
type: VALIDATE
execution_level: LUNA_LOW
status: READY
depends_on: [A002, A003, A004, A005, A006, A007, A008, A009, A010]
files_to_load:
  - "skills/geoespacial/README.md"
  - "skills/geoespacial/preparacion-datos-geoespaciales/SKILL.md"
  - "skills/geoespacial/teledeteccion-optica/SKILL.md"
  - "skills/geoespacial/analisis-terreno-proximidad/SKILL.md"
  - "skills/geoespacial/modelamiento-geoespacial/SKILL.md"
  - "skills/geoespacial/reproducibilidad-geoespacial/SKILL.md"
  - "skills/geoespacial/catalogos-stac/SKILL.md"
  - "skills/geoespacial/analisis-espaciotemporal/SKILL.md"
  - "skills/geoespacial/deep-learning-geoespacial/SKILL.md"
  - "docs/diseno_geoespacial_terra_20260909.md"
target: skills/geoespacial/
objective: "Validar arquitectura antes de limpieza."
instructions:
  - "Comprobar las nueve rutas y secciones obligatorias."
  - "Comprobar que ALOS no se presenta como óptico sin producto identificado."
  - "Comprobar que cr2.md no fue incorporado, interpretado ni eliminado."
  - "Comprobar trazabilidad y ausencia de skills por concepto."
must_preserve:
  - "Arquitectura 5 CORE + 3 SPECIALIZED."
  - "cr2.md bloqueado."
must_remove:
  []
acceptance_criteria:
  - "Todas las comprobaciones son PASS."
  - "No hay referencias rotas entre README y los ocho SKILL.md."
rollback:
  - "No continuar a BATCH 5 si alguna comprobación falla."
```

## BATCH 5 — eliminación de placeholders

```yaml
action_id: A012
priority: P1
type: DELETE
execution_level: LUNA_LOW
status: READY
depends_on: [A011]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
  - "skills/geoespacial/alineamiento.md"
  - "skills/geoespacial/alos.md"
  - "skills/geoespacial/baseline.md"
  - "skills/geoespacial/cog.md"
  - "skills/geoespacial/dem.md"
  - "skills/geoespacial/desbalance.md"
  - "skills/geoespacial/distancia_caminos.md"
  - "skills/geoespacial/distancia_poblados.md"
  - "skills/geoespacial/dvc.md"
  - "skills/geoespacial/era5.md"
  - "skills/geoespacial/experimentos.md"
  - "skills/geoespacial/geodesia.md"
  - "skills/geoespacial/geojson.md"
  - "skills/geoespacial/geopackage.md"
  - "skills/geoespacial/geoparquet.md"
  - "skills/geoespacial/landsat.md"
  - "skills/geoespacial/lightgbm.md"
  - "skills/geoespacial/lineage.md"
  - "skills/geoespacial/mascaras_nubes.md"
  - "skills/geoespacial/metadata.md"
  - "skills/geoespacial/metricas.md"
  - "skills/geoespacial/mlflow.md"
  - "skills/geoespacial/modis.md"
  - "skills/geoespacial/mosaicos.md"
  - "skills/geoespacial/nbr.md"
  - "skills/geoespacial/ndmi.md"
  - "skills/geoespacial/ndvi.md"
  - "skills/geoespacial/ndwi.md"
  - "skills/geoespacial/normalizacion.md"
  - "skills/geoespacial/orientacion.md"
  - "skills/geoespacial/pendiente.md"
  - "skills/geoespacial/precision_exactitud.md"
  - "skills/geoespacial/proyecciones.md"
  - "skills/geoespacial/random_forest.md"
  - "skills/geoespacial/raster.md"
  - "skills/geoespacial/recortes.md"
  - "skills/geoespacial/redes_neuronales.md"
  - "skills/geoespacial/reproducibilidad.md"
  - "skills/geoespacial/reproyeccion.md"
  - "skills/geoespacial/resampling.md"
  - "skills/geoespacial/resolucion_espacial.md"
  - "skills/geoespacial/resolucion_espectral.md"
  - "skills/geoespacial/resolucion_temporal.md"
  - "skills/geoespacial/rugosidad.md"
  - "skills/geoespacial/sentinel2.md"
  - "skills/geoespacial/shapefile.md"
  - "skills/geoespacial/sistemas_coordenadas.md"
  - "skills/geoespacial/spatiotemporal.md"
  - "skills/geoespacial/srtm.md"
  - "skills/geoespacial/stac.md"
  - "skills/geoespacial/stac_pipeline.md"
  - "skills/geoespacial/stack_bandas.md"
  - "skills/geoespacial/validacion.md"
  - "skills/geoespacial/variables_meteorologicas.md"
  - "skills/geoespacial/vector.md"
  - "skills/geoespacial/versionado_dataset.md"
  - "skills/geoespacial/viirs.md"
  - "skills/geoespacial/xgboost.md"
target: skills/geoespacial/
objective: "Eliminar los 58 placeholders con destino definido."
instructions:
  - "Confirmar A011 PASS."
  - "Eliminar solo los 58 archivos enumerados de 0 bytes."
  - "No eliminar cr2.md."
must_preserve:
  - "README.md y ocho SKILL.md."
  - "skills/geoespacial/cr2.md."
must_remove:
  - "skills/geoespacial/alineamiento.md"
  - "skills/geoespacial/alos.md"
  - "skills/geoespacial/baseline.md"
  - "skills/geoespacial/cog.md"
  - "skills/geoespacial/dem.md"
  - "skills/geoespacial/desbalance.md"
  - "skills/geoespacial/distancia_caminos.md"
  - "skills/geoespacial/distancia_poblados.md"
  - "skills/geoespacial/dvc.md"
  - "skills/geoespacial/era5.md"
  - "skills/geoespacial/experimentos.md"
  - "skills/geoespacial/geodesia.md"
  - "skills/geoespacial/geojson.md"
  - "skills/geoespacial/geopackage.md"
  - "skills/geoespacial/geoparquet.md"
  - "skills/geoespacial/landsat.md"
  - "skills/geoespacial/lightgbm.md"
  - "skills/geoespacial/lineage.md"
  - "skills/geoespacial/mascaras_nubes.md"
  - "skills/geoespacial/metadata.md"
  - "skills/geoespacial/metricas.md"
  - "skills/geoespacial/mlflow.md"
  - "skills/geoespacial/modis.md"
  - "skills/geoespacial/mosaicos.md"
  - "skills/geoespacial/nbr.md"
  - "skills/geoespacial/ndmi.md"
  - "skills/geoespacial/ndvi.md"
  - "skills/geoespacial/ndwi.md"
  - "skills/geoespacial/normalizacion.md"
  - "skills/geoespacial/orientacion.md"
  - "skills/geoespacial/pendiente.md"
  - "skills/geoespacial/precision_exactitud.md"
  - "skills/geoespacial/proyecciones.md"
  - "skills/geoespacial/random_forest.md"
  - "skills/geoespacial/raster.md"
  - "skills/geoespacial/recortes.md"
  - "skills/geoespacial/redes_neuronales.md"
  - "skills/geoespacial/reproducibilidad.md"
  - "skills/geoespacial/reproyeccion.md"
  - "skills/geoespacial/resampling.md"
  - "skills/geoespacial/resolucion_espacial.md"
  - "skills/geoespacial/resolucion_espectral.md"
  - "skills/geoespacial/resolucion_temporal.md"
  - "skills/geoespacial/rugosidad.md"
  - "skills/geoespacial/sentinel2.md"
  - "skills/geoespacial/shapefile.md"
  - "skills/geoespacial/sistemas_coordenadas.md"
  - "skills/geoespacial/spatiotemporal.md"
  - "skills/geoespacial/srtm.md"
  - "skills/geoespacial/stac.md"
  - "skills/geoespacial/stac_pipeline.md"
  - "skills/geoespacial/stack_bandas.md"
  - "skills/geoespacial/validacion.md"
  - "skills/geoespacial/variables_meteorologicas.md"
  - "skills/geoespacial/vector.md"
  - "skills/geoespacial/versionado_dataset.md"
  - "skills/geoespacial/viirs.md"
  - "skills/geoespacial/xgboost.md"
acceptance_criteria:
  - "Los 58 archivos ya no existen."
  - "cr2.md existe y sigue sin interpretación."
  - "No se eliminó archivo creado por A002-A010."
rollback:
  - "Restaurar solo placeholders eliminados desde control de versiones."
```

```yaml
action_id: A013
priority: P1
type: DELETE
execution_level: LUNA_LOW
status: BLOQUEADA
depends_on: [A011]
files_to_load:
  - "docs/diseno_geoespacial_terra_20260909.md"
  - "skills/geoespacial/cr2.md"
target: skills/geoespacial/cr2.md
objective: "Resolver cr2.md tras identificación verificable."
instructions:
  - "No ejecutar: falta identificación inequívoca."
must_preserve:
  - "cr2.md y su estado no interpretado."
must_remove:
  []
acceptance_criteria:
  - "Existe evidencia verificable y decisión posterior aprobada."
rollback:
  - "No aplica mientras esté bloqueada."
```

## Handoff

Acciones READY: 12.  
Acciones BLOQUEADAS: 1.  
A013 no se ejecuta hasta contar con evidencia verificable sobre `cr2.md`.

