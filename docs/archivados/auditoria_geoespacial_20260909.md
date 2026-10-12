# Auditoria tecnica y funcional: dominio geoespacial

Fecha: 2026-09-09  
Repositorio: \`C:\rutinas-local\gen-ai-skills\gen-ai-skills\`  
Alcance: \`skills/geoespacial\`

## Trazabilidad y alcance

Se inspeccionaron todos los archivos existentes bajo \`skills/geoespacial\`.

- Archivos totales: 60.
- Archivos no vacios: 1, \`README.md\`, de 750 bytes.
- Archivos vacios: 59.
- Skills operativas verificables: 0.
- \`AGENTS.md\` o \`AGENTS.override.md\` aplicable al dominio: no encontrado.
- \`SKILL.md\` dentro del dominio: no encontrado.
- No se modificaron los placeholders ni el README del dominio.

La evidencia funcional disponible consiste unicamente en el contenido del README y
en los nombres de los placeholders. Un nombre permite formular una hipotesis de
tema, pero no demuestra que exista una skill, regla, dependencia o procedimiento.

## 1. Resumen ejecutivo

El dominio geoespacial esta en preparacion y no es utilizable actualmente como
biblioteca de instrucciones. El README lo declara explicitamente y los 59
archivos restantes tienen longitud cero.

No es posible evaluar validamente claridad, cobertura, redundancia, calidad
metodologica, portabilidad o activacion de cada supuesto modulo porque no hay
contenido que analizar. Tampoco es posible afirmar que exista
sobrefragmentacion funcional: solo existe sobrefragmentacion nominal.

La principal oportunidad es definir primero una arquitectura minima y un conjunto
pequeno de skills base antes de completar los placeholders. La optimizacion de
tokens no debe comenzar eliminando nombres: primero debe establecerse que
contenido operativo se necesita realmente.

Recomendacion global: mantener el dominio como reservado, no cargarlo como
contexto operativo y formalizarlo por fases. No declarar utilizables los archivos
actuales.

## 2. Inventario funcional

Todos los siguientes archivos son placeholders vacios. El posible tema se
infiere solo de su nombre y no constituye una funcion verificada.

| Skill nominal | Proposito real verificable | Usar cuando | Estado | Recomendacion |
|---|---|---|---|---|
| \`alineamiento.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`alos.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`baseline.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`cog.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`cr2.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`dem.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`desbalance.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`distancia_caminos.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`distancia_poblados.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`dvc.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`era5.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`experimentos.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`geodesia.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`geojson.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`geopackage.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`geoparquet.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`landsat.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`lightgbm.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`lineage.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`mascaras_nubes.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`metadata.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`metricas.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`mlflow.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`modis.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`mosaicos.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`nbr.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`ndmi.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`ndvi.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`ndwi.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`normalizacion.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`orientacion.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`pendiente.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`precision_exactitud.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`proyecciones.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`random_forest.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`raster.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`recortes.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`redes_neuronales.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`reproducibilidad.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`reproyeccion.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`resampling.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`resolucion_espacial.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`resolucion_espectral.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`resolucion_temporal.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`rugosidad.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`sentinel2.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`shapefile.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`sistemas_coordenadas.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`spatiotemporal.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`srtm.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`stac.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`stac_pipeline.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`stack_bandas.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`validacion.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`variables_meteorologicas.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`vector.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`versionado_dataset.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`viirs.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |
| \`xgboost.md\` | Ninguno | No activar | Placeholder vacio | DEPRECAR |

Aqui \`DEPRECAR\` significa marcar como no utilizable y conservar temporalmente
para una decision posterior; no significa borrar automaticamente.

## 3. Evaluacion detallada

No existe contenido suficiente para puntuar conocimiento, claridad o calidad
operativa de los placeholders. La siguiente puntuacion de estado aplica a los
59 archivos vacios:

| Dimension | Puntaje | Interpretacion |
|---|---:|---|
| Utilidad | 1 | No hay reglas que puedan cambiar una respuesta |
| Especificidad | 1 | El nombre sugiere un tema, pero no aporta conocimiento |
| Claridad | 1 | No existen instrucciones evaluables |
| Aplicabilidad | 1 | No existe activador ni limite operativo |
| Densidad | 1 | No existe contenido informativo |
| Reutilizacion | 1 | No existe procedimiento reutilizable |
| Mantenibilidad | 2 | Es facil conservar un archivo vacio, pero no mantener una skill inexistente |
| Redundancia | 5 | No hay contenido duplicado; esto no compensa la ausencia de valor |

La puntuacion evalua el estado actual del archivo, no la importancia del tema
nombrado.

El README del dominio tiene valor operativo medio como documento de estado:
declara que el dominio esta en preparacion, evita cargar placeholders y establece
criterios minimos de formalizacion. Recomendacion: MANTENER_CON_CAMBIOS_MENORES.
La mejora menor seria reemplazar “archivos numerados” por “placeholders
existentes”, porque los nombres actuales no son numerados.

## 4. Problemas detectados

### Redundancias

No se pueden verificar redundancias de contenido porque 59 archivos estan
vacios. Si todos se completaran independientemente, existiria alto riesgo de
repetir reglas sobre coordenadas, raster/vector, validacion, reproducibilidad y
metadatos.

### Solapamientos potenciales

Son inferencias nominales, no relaciones verificadas:

- \`sistemas_coordenadas\`, \`proyecciones\`, \`reproyeccion\`, \`alineamiento\`,
  \`geodesia\`.
- \`raster\`, \`vector\`, \`geojson\`, \`geopackage\`, \`geoparquet\`,
  \`shapefile\`.
- \`resolucion_espacial\`, \`resolucion_espectral\`,
  \`resolucion_temporal\`, \`resampling\`.
- \`sentinel2\`, \`landsat\`, \`modis\`, \`viirs\`, \`alos\`, \`srtm\`,
  \`dem\`, \`era5\`.
- \`ndvi\`, \`ndmi\`, \`ndwi\`, \`nbr\`, \`pendiente\`, \`orientacion\`,
  \`rugosidad\`.
- \`mlflow\`, \`dvc\`, \`lineage\`, \`versionado_dataset\`,
  \`reproducibilidad\`, \`experimentos\`.
- \`random_forest\`, \`lightgbm\`, \`xgboost\`, \`redes_neuronales\`.
- \`metricas\`, \`precision_exactitud\`, \`validacion\`, \`baseline\`,
  \`desbalance\`.

No conviene fusionar ahora. Primero debe definirse contenido, usuario objetivo y
unidad de activacion de cada grupo.

### Exceso de contexto

El costo actual de contexto de los placeholders es bajo, pero su valor tambien
es nulo. Cuando se completen, cargar los 59 archivos seria una mala estrategia.
El README debe dirigir a una skill principal y a complementos condicionados.

### Ambiguedad

- No hay \`Usar cuando\` ni \`No usar cuando\`.
- No se distingue conocimiento geoespacial, formato de datos, sensor, algoritmo,
  metrica y proceso de investigacion.
- No existen contratos de entrada/salida ni criterios de aceptacion.
- No existe version, fuente, dependencia o alcance por archivo.

### Fragmentacion

Existe fragmentacion nominal extrema: 59 posibles temas para cero skills
operativas. Todavia no hay evidencia para determinar la granularidad futura.

### Problemas arquitectonicos

- Falta una skill base del dominio.
- Falta una regla transversal geoespacial.
- Falta una estrategia de seleccion entre datos, analisis espacial,
  teledeteccion, ML geoespacial y reproducibilidad.
- Falta un README funcional con mapa de carga selectiva.
- No hay contenido validado para evaluar portabilidad entre agentes.

## 5. Matriz de relaciones

Las relaciones siguientes son potenciales y se basan en nombres. No son
dependencias actuales.

| Skill A | Skill B | Relacion | Severidad | Accion |
|---|---|---|---|---|
| \`sistemas_coordenadas\` | \`proyecciones\` | Potencialmente fusionables | Alta | Definir CRS y proyeccion antes de separar |
| \`proyecciones\` | \`reproyeccion\` | Dependientes | Media | Separar concepto de procedimiento |
| \`raster\` | \`vector\` | Independientes | Baja | Mantener separadas si aportan reglas distintas |
| \`geojson\` | \`geopackage\` | Independientes | Baja | Agrupar solo si el contenido es de formatos |
| \`dem\` | \`srtm\` | Dependientes | Media | DEM como producto; SRTM como fuente |
| \`sentinel2\` | \`landsat\` | Parcialmente redundantes | Media | Crear reglas comunes de sensores |
| \`modis\` | \`viirs\` | Parcialmente redundantes | Media | Crear reglas comunes de sensores |
| \`ndvi\` | \`ndmi\` | Parcialmente redundantes | Media | Centralizar reglas de indices |
| \`mosaicos\` | \`recortes\` | Complementarias | Baja | Definir orden del pipeline |
| \`alineamiento\` | \`stack_bandas\` | Complementarias | Alta | Validar grids antes de apilar |
| \`resampling\` | \`resolucion_espacial\` | Dependientes | Alta | Separar diagnostico de operacion |
| \`dvc\` | \`versionado_dataset\` | Parcialmente redundantes | Media | Distinguir herramienta de procedimiento |
| \`mlflow\` | \`lineage\` | Complementarias | Baja | Distinguir tracking de procedencia |
| \`metricas\` | \`validacion\` | Parcialmente redundantes | Alta | Definir metrica versus protocolo |
| \`precision_exactitud\` | \`validacion\` | Complementarias | Media | Definir calidad posicional versus validacion |
| \`random_forest\` | \`xgboost\` | Independientes | Baja | Mantener solo con contenido especifico |

## 6. Propuesta de arquitectura objetivo

### Estructura actual

\`\`\`text
geoespacial/
├── README.md
└── 59 placeholders tematicos vacios
\`\`\`

### Estructura propuesta inicial

\`\`\`text
geoespacial/
├── README.md
├── base/
│   ├── instrucciones_base_geoespacial.md
│   └── reglas_transversales_geoespacial.md
├── datos_formatos/
├── referencia_espacial/
├── teledeteccion/
├── analisis_raster_vectorial/
├── modelamiento_geoespacial/
├── experimentacion_reproducibilidad/
└── validacion/
\`\`\`

Esta es una propuesta de diseño, no una instruccion para crear todos esos
archivos ahora.

La skill base deberia definir unidad espacial, CRS, resolucion, extension
temporal, fuentes, incertidumbre, leakage espacial/temporal, reproducibilidad,
licencias, privacidad y criterios de validacion.

La regla transversal deberia centralizar controles comunes y no repetir
explicaciones extensas de sensores, formatos o algoritmos.

## 7. Acciones recomendadas

### P0 - Criticas

1. Mantener los placeholders marcados como no utilizables.
2. No presentarlos como skills completas ni cargarlos automaticamente.
3. Confirmar si el dominio cubrira GIS, teledeteccion, modelamiento, cartografia,
   geodesia, geoprocesamiento o una combinacion.

### P1 - Alto impacto

1. Crear una instruccion base pequena y una regla transversal.
2. Definir cinco a siete familias funcionales antes de completar archivos.
3. Redactar un README con matriz de seleccion y regla de modulo principal.
4. Decidir si sensores, formatos y algoritmos seran skills independientes o
   perfiles dentro de skills superiores.

### P2 - Optimizacion

1. Centralizar CRS, resolucion, leakage, trazabilidad y validacion comun.
2. Evitar una skill por cada indice, sensor o algoritmo si solo requiere una
   ficha corta.
3. Separar procedimiento portable de comandos especificos de GDAL, rasterio,
   xarray, geopandas, STAC, DVC o MLflow.

### P3 - Opcional

- Agregar ejemplos de composicion de contexto.
- Agregar metadatos de version y fuentes por skill.
- Crear validacion automatica de enlaces, archivos vacios y encabezados.

## 8. Estimacion de impacto

Las flechas son estimaciones de diseño, no mediciones.

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
|---|---|---|---|---|
| Mantener placeholders fuera de carga | = | = | ↑ | Bajo |
| Crear base y transversales | ↑ inicialmente | ↑↑ | ↑↑ | Medio |
| Crear matriz de routing | ↓↓ en uso selectivo | ↑ | ↑↑ | Bajo |
| Agrupar reglas comunes de referencia espacial | ↓↓ | ↑ | ↑↑ | Medio |
| Agrupar perfiles de sensores | ↓ media | =/↑ | ↑ | Medio |
| Crear una skill por placeholder | ↑↑↑ | No demostrado | ↓ | Alto |
| Separar herramienta de procedimiento | = | ↑ | ↑↑ | Bajo |
| Añadir casos de validacion funcional | ↑ durante pruebas | ↑↑ | ↑ | Bajo |

## 9. Skills candidatas a modificacion

### Mantener intactas

- \`README.md\`, salvo ajustes menores de terminologia.
- Todos los placeholders, mientras se confirma autoria y destino.

### Compactar

No hay contenido de skills que compactar.

### Fusionar

No fusionar archivos vacios. Las posibles fusiones se decidiran despues de
redactar contenido minimo y observar solapamientos reales.

### Dividir

No dividir archivos vacios.

### Reubicar

La reubicacion futura podria seguir las familias propuestas, pero no debe
realizarse antes de confirmar el modelo del dominio.

### Eliminar o deprecar

Recomendacion principal para cada placeholder: \`DEPRECAR\` como no utilizable,
conservandolo temporalmente. Eliminar requiere confirmar que el nombre no
corresponde a trabajo pendiente del usuario.

## 10. Plan de refactorizacion

1. Confirmar alcance y usuarios objetivo.
2. Clasificar los 59 nombres por familias, sin editar aun los archivos.
3. Seleccionar tres casos de uso representativos.
4. Crear base y reglas transversales con contenido minimo validado.
5. Redactar primero las skills de mayor valor operativo.
6. Mantener sensores, formatos y algoritmos como complementos solo si cambian la
   respuesta o el procedimiento.
7. Añadir \`Usar cuando\`, \`No usar cuando\`, entradas, salidas, validacion y
   limitaciones a cada skill.
8. Revisar solapamientos despues de tener contenido real.
9. Ejecutar validacion funcional con un LLM y registrar archivos cargados,
   activacion, respuesta, errores y limitaciones.
10. Medir contexto en configuraciones equivalentes antes de afirmar mejoras.

## Limitaciones

- No se puede evaluar conocimiento geoespacial de los placeholders.
- No se puede confirmar autoria, intencion o destino por el nombre.
- No se puede medir calidad de respuestas porque no hay skills operativas.
- No se puede demostrar ahorro de tokens.
- Las relaciones entre nombres son inferencias, no dependencias observadas.

## Conclusion

El dominio esta sano como espacio reservado, pero no como biblioteca utilizable.  
La mayor ineficiencia es la fragmentacion nominal sin contenido operativo.  
La mayor oportunidad es definir una base, reglas transversales y familias de uso.  
No recomiendo completar los 59 archivos de forma independiente.  
Recomiendo formalizar primero tres casos de uso y medir la carga de contexto.  
La mejor relacion calidad/tokens probablemente vendra de routing selectivo y  
de centralizar reglas espaciales comunes, sujeto a validacion posterior.  

