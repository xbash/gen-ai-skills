# Plan de enriquecimiento — investigacion-general, investigacion-ia, ciencia-ingenieria-datos

**Fecha:** 2026-09-26  
**Estado:** Pendiente de ejecución  
**Ejecutor esperado:** Haiku (razonamiento bajo — solo insertar, no razonar)

---

## Reglas de ejecución

- Leer el archivo antes de modificar. Confirmar que el ancla existe tal cual está escrita.
- Agregar el contenido AL FINAL del archivo, después de la última línea existente.
- No eliminar, reordenar ni modificar ninguna línea existente.
- Respetar el estilo Markdown del archivo (encabezados `##`, listas con `-`, bloques de código).
- No hacer commit, no hacer push.
- Al terminar, ejecutar `git diff --stat` y reportar resultado.

---

## Sub-plan 1 — `skills/investigacion-general/diseno_metodologico_datos_reglas.md`

**Ancla a verificar:** `## Salida recomendada`  
**Acción:** agregar al final del archivo.

```markdown

## Datos geoespaciales y series de tiempo espaciales

Aplicar cuando la unidad de análisis tenga coordenadas (celda-grilla, punto, polígono) o cuando los datos provengan de fuentes raster, vectoriales o satelitales.

### CRS y granularidad

- Declarar el sistema de referencia de coordenadas (CRS) de cada fuente: EPSG, unidad, datum y proyección. Las fuentes con CRS distintos deben reproyectarse a un CRS común antes de cualquier join o análisis conjunto.
- Documentar granularidad espacial (resolución de celda o escala del polígono) y temporal (diaria, mensual) como parte de la definición de la unidad de análisis.

### Leakage espaciotemporal

- En datos con autocorrelación espacial, el random split invalida la evaluación: celdas vecinas comparten contexto, por lo que el modelo aprende del entorno del punto de prueba.
- Separar train/valid/test simultáneamente por bloque espacial (tile, comuna, región) **y** por período cronológico. Nunca asignar celdas contiguas a conjuntos distintos sin separación espacial explícita.
- Spatial cross-validation: usar bloques espaciales no contiguos como folds (blocked spatial CV). Para series de tiempo: expanding window o blocked time series split.

### Eventos raros y desbalance extremo

- Declarar la tasa de la clase positiva (p. ej., 1 ignición en 1000 celdas-día). Justificar métricas de evaluación proporcionales al desbalance: F1, PR-AUC, Average Precision. Evitar accuracy como métrica primaria en clases muy desbalanceadas.
- Aplicar sobremuestreo (SMOTE, RandomOverSampler) solo en el conjunto de entrenamiento, nunca en validación ni test.
```

---

## Sub-plan 2 — `skills/investigacion-ia/diseno_metodologico_experimentos_ia_reglas.md`

**Ancla a verificar:** `## Salida recomendada`  
**Acción:** agregar al final del archivo.

```markdown

## Datasets geoespaciales en investigación IA

Aplicar cuando el dataset tenga coordenadas, fechas de evento y fuentes raster o satelitales como variables de entrada.

### Protocolo de partición espacio-temporal

- La unidad de análisis georreferenciada (celda-día, polígono-semana) requiere separar train/valid/test respetando contigüidad espacial **y** orden temporal de forma simultánea. El random split introduce leakage por autocorrelación espacial y temporal.
- Usar bloques espaciales (tile, comuna) como unidad de asignación a conjuntos; dentro de cada conjunto, respetar el orden cronológico.

### Leakage de features desde fuentes externas

- Verificar que cada feature de celda-día esté disponible **antes** del evento en el horizonte de predicción declarado. ERA5 tiene un delay de publicación de ~5 días; Sentinel-2 tiene revisita de 5 días con posible cobertura de nubes; CONAF publica registros con latencia variable.
- Documentar el delay efectivo de cada fuente y ajustar el horizonte de predicción (24-72 h) a lo que es operacionalmente disponible.

### Baseline mínimo para datasets de ignición

- Clasificador de frecuencia base: predecir siempre la clase mayoritaria (no-ignición); establece el piso de métricas.
- Modelo logístico con variables meteorológicas simples (temperatura máxima, humedad relativa, velocidad del viento): baseline interpretable antes de modelos complejos.
- Reportar F1, PR-AUC y AP para cada baseline; cualquier modelo propuesto debe superarlos con el mismo split y protocolo.
```

---

## Sub-plan 3 — `skills/investigacion-ia/reproducibilidad_open_science_reglas.md`

**Ancla a verificar:** `## Salida recomendada`  
**Acción:** agregar al final del archivo.

```markdown

## Reproducibilidad en datos geoespaciales y pipelines IA

### Estándares de publicación abierta para datos geoespaciales

- **STAC (OGC 25-004):** catálogo de artefactos geoespaciales versionado. Publicar cada tile o dataset como STAC Item con metadatos de cobertura espacial, rango de fechas, CRS, resolución, licencia y enlace de descarga. Permite que terceros descubran y repliquen el dataset sin instrucciones ad-hoc.
- **COG (OGC 21-026):** formato Cloud-Optimized GeoTIFF para raster; acceso parcial por bounding box sin descargar el archivo completo.
- **GeoParquet:** formato tabular con geometría integrada y CRS declarado; reemplaza CSV con columnas lat/lon y permite predicados espaciales en DuckDB y geopandas.

### Versionado de datos y tracking de experimentos

- **DVC (Data Version Control):** rastrear versiones de datasets geoespaciales sin commitear archivos grandes en Git; usar remote storage en Zenodo, S3 o local. Registrar `dvc.yaml` con el pipeline y `params.yaml` con hiperparámetros.
- **MLflow / Weights & Biases:** logging de métricas, parámetros, artefactos y splits por fold; permite comparar corridas y auditar qué configuración produjo cada resultado.
- Registrar: semillas, versión de cada fuente de datos, período cubierto, CRS, splits espaciales y temporales, y métricas por fold.
```

---

## Sub-plan 4 — `skills/ciencia-ingenieria-datos/etica_privacidad_gobernanza_datos_reglas.md`

**Ancla a verificar:** `## Validacion minima`  
**Acción:** agregar al final del archivo.

```markdown

## Datos geoespaciales y privacidad en investigación chilena

### Marco legal aplicable (Chile)

- **Ley 19.628** (vigente): protección de datos de carácter personal; aplica a registros de campo con propietarios, nombres o RUT asociados a coordenadas de ignición.
- **Ley 21.719** (en tramitación): modernización de la ley de datos personales; anticipa principios de minimización, finalidad y proporcionalidad más estrictos.
- Datos de ignición con coordenadas precisas combinados con registros catastrales pueden identificar predios y propietarios: aplicar los principios de minimización y finalidad antes de publicar.

### Tratamiento de coordenadas sensibles

- Evaluar si las coordenadas brutas de inicio de incendio son necesarias para el objetivo declarado (metodología reproducible a escala comunal) o si la grilla de 200 m es suficiente.
- Si se publican coordenadas brutas: aplicar **spatial jitter** (desplazamiento aleatorio ≤ resolución de celda) o agregar solo a nivel de grilla antes de publicar.
- Nunca incluir nombres de propietarios, RUT, direcciones ni datos de campo con identificadores en el repositorio o dataset público.

### Clasificación de sensibilidad para datasets de investigación

| Nivel | Contenido | Tratamiento |
|---|---|---|
| Público | Grilla agregada, índices, métricas por celda sin identificadores | Publicable en Zenodo/Figshare |
| Uso restringido | Coordenadas brutas de ignición sin datos personales | Disponible bajo solicitud con protocolo de uso |
| Privado | Registros con propietarios, RUT o datos de campo identificables | No publicar; anonimizar antes de cualquier uso |
```

---

## Sub-plan 5 — `skills/ciencia-ingenieria-datos/mineria_analitica_pipeline_reglas.md`

**Ancla a verificar:** `## Validacion minima`  
**Acción:** agregar al final del archivo.

```markdown

## Pipeline geoespacial

Aplicar cuando el pipeline procese datos raster, vectoriales o tabulares con coordenadas geográficas.

### Etapas adicionales respecto a pipeline tabular

1. **Ingesta:** verificar CRS, resolución, período, extensión y licencia de cada fuente raster o vectorial.
2. **Reproyección:** definir CRS común del proyecto (p. ej., EPSG:32719 para Chile zona 19S); reproyectar todas las fuentes antes de cualquier join espacial.
3. **Recorte y remuestreo:** clip por bounding box o polígono del área de estudio; reproject_match para igualar resolución y grilla entre fuentes.
4. **Enmascaramiento nodata:** aplicar máscara de nodata antes de calcular estadísticas; propagar la máscara a los features derivados.
5. **Validación de geometrías:** `is_valid()` en datos vectoriales; registrar y reparar geometrías inválidas antes de joins espaciales.

### Validaciones específicas del pipeline geoespacial

- CRS declarado y consistente entre todas las fuentes unidas.
- Solapamiento temporal entre fuentes verificado: confirmar que el período cubierto por cada fuente cubre el rango de fechas del dataset.
- Resolución espacial documentada y consistente tras el remuestreo.
- Nodata enmascarado y no tratado como cero ni como valor válido.

### Formatos y contratos de datos geoespaciales

- **GeoParquet:** formato de pipeline para tabular con geometría; preserva CRS, soporta predicados espaciales con DuckDB y geopandas; reemplaza CSV con lat/lon.
- **STAC como contrato de datos:** usar `pystac-client` para descubrir y filtrar colecciones externas (Sentinel-2, ERA5); documentar colección, período, AOI y resolución en el contrato de ingesta.
- Documentar linaje: para cada feature derivado, registrar fuente, período, transformación aplicada y CRS resultante.
```

---

## Criterios de aceptación globales

1. `git diff --stat` muestra exactamente 5 archivos modificados.
2. Ningún archivo perdió contenido (solo líneas `+`, ninguna `-` en contenido previo).
3. Los 5 archivos terminan con newline final.
4. No hay commit, no hay push.
