# PLAN_EJECUCION_LUNA

Proyecto: `C:/rutinas-local/gen-ai-skills-root/gen-ai-skills`  
Dominio: `skills/geoespacial/`  
Base de este contrato: auditoria del 2026-09-09. No reauditar ni redisenar.

## Precondicion de seguridad

El dominio contiene 59 placeholders de 0 bytes. El README raiz y el README del
dominio ordenan que no se usen como instrucciones operativas y que no se
renombren ni eliminen antes de confirmar contenido y autoria. Ninguna accion de
contenido esta aprobada hasta que se entregue y apruebe un brief que identifique
autor, proposito, contenido fuente, restricciones y criterio de aceptacion.

## BATCH 5 — Validacion de precondiciones

```yaml
action_id: A001
priority: P1
type: VALIDATE
execution_level: LUNA_LOW
status: READY
depends_on: []
files_to_load:
  - README.md
  - skills/geoespacial/README.md
  - skills/geoespacial/stac.md
source: skills/geoespacial/
target: skills/geoespacial/
objective: "Confirmar que el dominio sigue en estado preparatorio antes de cualquier accion posterior."
instructions:
  - "Verificar que README.md y skills/geoespacial/README.md siguen declarando el dominio no utilizable."
  - "Enumerar los Markdown bajo skills/geoespacial y verificar que existen 60 en total, con 59 de 0 bytes."
  - "Registrar el resultado en el informe de ejecucion; no editar, mover, renombrar, deprecar ni eliminar archivos."
must_preserve:
  - "Los 59 placeholders y sus rutas actuales."
  - "La declaracion de estado preparatorio."
must_remove: []
acceptance_criteria:
  - "El inventario reporta 60 archivos Markdown y 59 placeholders de 0 bytes."
  - "No hay cambios en skills/geoespacial/."
rollback:
  - "No aplica: accion de solo lectura."
```

## BATCH 2 — Contenido (no ejecutar)

```yaml
action_id: A002
priority: P1
type: REWRITE
execution_level: TERRA_REQUIRED
status: BLOQUEADA
depends_on:
  - A001
files_to_load:
  - skills/geoespacial/README.md
  - README.md
source: skills/geoespacial/
target: skills/geoespacial/
objective: "Formalizar solamente las capacidades geoespaciales sustentadas por contenido validado."
instructions:
  - "DETENER: falta un brief aprobado que identifique autoria, contenido fuente, alcance, restricciones, tareas objetivo y criterio de exito."
  - "No deducir contenido, fusiones, divisiones, destinos ni nombres a partir de los 59 nombres de archivo."
  - "Cuando exista ese insumo, solicitar una nueva decision arquitectonica Terra antes de editar."
must_preserve:
  - "Todo contenido validado que se entregue como fuente."
  - "La trazabilidad de cada placeholder original."
must_remove: []
acceptance_criteria:
  - "Existe brief aprobado y contenido fuente con autoria confirmada."
  - "Una auditoria posterior aprueba arquitectura y acciones concretas."
rollback:
  - "No iniciar cambios mientras la accion este BLOQUEADA."
content_contract:
  required_sections:
    - "No aplicable hasta contar con brief aprobado."
  concepts_to_preserve:
    - "No hay conceptos verificables en los placeholders actuales."
  duplicated_content_to_remove:
    - "Ninguno verificable."
  forbidden_changes:
    - "Inventar contenido tecnico o inferir responsabilidades desde nombres."
    - "Eliminar, renombrar o fusionar placeholders sin autorizacion posterior."
```

## Matriz de trazabilidad

| Archivo original | Accion | Archivo destino | Contenido preservado | Estado esperado |
|---|---|---|---|---|
| `skills/geoespacial/README.md` | A001; A002 bloqueada | Misma ruta | Estado preparatorio y criterio de formalizacion | Sin cambios |
+| `skills/geoespacial/alineamiento.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/alos.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/baseline.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/cog.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/cr2.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/dem.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/desbalance.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/distancia_caminos.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/distancia_poblados.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/dvc.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/era5.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/experimentos.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/geodesia.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/geojson.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/geopackage.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/geoparquet.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/landsat.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/lightgbm.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/lineage.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/mascaras_nubes.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/metadata.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/metricas.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/mlflow.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/modis.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/mosaicos.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/nbr.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/ndmi.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/ndvi.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/ndwi.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/normalizacion.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/orientacion.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/pendiente.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/precision_exactitud.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/proyecciones.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/random_forest.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/raster.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/recortes.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/redes_neuronales.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/reproducibilidad.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/reproyeccion.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/resampling.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/resolucion_espacial.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/resolucion_espectral.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/resolucion_temporal.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/rugosidad.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/sentinel2.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/shapefile.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/sistemas_coordenadas.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/spatiotemporal.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/srtm.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/stac.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/stac_pipeline.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/stack_bandas.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/validacion.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/variables_meteorologicas.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/vector.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/versionado_dataset.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/viirs.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |
| `skills/geoespacial/xgboost.md` | A001; A002 bloqueada | Misma ruta | Ruta y placeholder vacio | Sin cambios; no cargable |

Ningun archivo queda autorizado para desaparecer.

## Criterios globales de aceptacion

- Tras A001, existen los mismos 60 Markdown en `skills/geoespacial/`.
- No se modifico contenido, estructura ni referencias del dominio.
- El informe de ejecucion distingue A001 ejecutada de A002 BLOQUEADA.
- No se afirma ahorro de tokens, mejora de calidad ni arquitectura formal sin
  contenido validado y una auditoria posterior.

```text
HANDOFF_TO_LUNA

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
skills/geoespacial/

Arquitectura aprobada:
Mantener el dominio en preparacion: README de estado y 59 placeholders vacios
fuera de cualquier carga operativa. La arquitectura funcional futura no esta
aprobada.

Plan:
PLAN_EJECUCION_LUNA

Acciones READY:
1

Acciones BLOQUEADAS:
1

Nivel recomendado:
LUNA_LOW para A001, validacion mecanica de solo lectura.
TERRA_REQUIRED para A002; no ejecutar sin brief y decision posterior.

Regla:
Ejecutar unicamente acciones READY y en orden de dependencias.
No reauditar ni redisenar.
Ante ambiguedad: detener la accion y reportar BLOQUEADA.
```
