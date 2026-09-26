# Reproducibilidad geoespacial

## Propósito
Hacer trazables las fuentes, transformaciones, ejecuciones y artefactos geoespaciales para que el dataset, análisis o modelo pueda reconstruirse, auditarse y reutilizarse.

## USAR CUANDO
Se creen datasets derivados, pipelines, modelos o entregables geoespaciales que deban repetirse, auditarse o compartirse.

## NO USAR CUANDO
La actividad sea una exploración efímera sin artefacto reutilizable.

## Entradas
Fuentes y procedencia; versiones y fechas de descarga; configuración del pipeline; entorno de ejecución; transformaciones aplicadas; artefactos generados; decisiones metodológicas.

## Workflow

### 1. Registrar fuentes
Para cada fuente: nombre, productor, versión, URL o mecanismo de acceso, fecha de descarga, licencia y limitaciones de uso. No inventar disponibilidad ni versiones.

### 2. Separar capas de datos
Mantener tres capas distintas:
- **Datos crudos**: tal como llegan de la fuente; no modificar nunca.
- **Datos intermedios**: normalizados, reproyectados, recortados.
- **Datos analíticos**: integrados, con variables derivadas y etiquetas.

Esta separación permite auditar el pipeline y actualizar variables sin reconstruir todo desde cero.

### 3. Documentar el linaje por variable
Por cada variable en el dataset final, registrar: fuente original → operación de transformación → parámetros usados → unidad de análisis resultante → metadatos mínimos (unidades, escala, nodata, CRS). El linaje debe permitir rastrear cualquier variable hasta su fuente.

### 4. Documentar incertidumbre en etiquetas
Si el dataset incluye etiquetas construidas a partir de fuentes imperfectas, registrar por etiqueta: fuente usada, regla de asignación, nivel de confianza y tipo de incertidumbre (espacial, temporal, semántica, de observación). No tratar etiquetas imperfectas como verdad absoluta; documentar qué representa cada etiqueta y qué no representa.

### 5. Elaborar el datasheet del dataset
Documentar según el marco de Gebru et al. adaptado a datos geoespaciales:
- **Motivación**: para qué se construyó, quién lo construyó y en qué contexto.
- **Composición**: variables, unidad de análisis, cobertura espacial y temporal, distribución de clases.
- **Proceso de recolección**: fuentes, fechas de descarga, mecanismos de acceso.
- **Preprocesamiento**: transformaciones aplicadas, reglas de integración, decisiones de QA/QC.
- **Usos previstos y no previstos**: qué tareas puede apoyar y cuáles quedan explícitamente fuera.
- **Limitaciones y sesgos**: cobertura incompleta, errores en fuentes, desbalance de clases, incertidumbre de etiquetas.

### 6. Registrar entorno y versiones
Documentar: versión del dataset (fecha y parámetros de construcción), sistema operativo, versiones de Python y librerías clave (rasterio, geopandas, pandas, scikit-learn, GDAL). Usar archivo de dependencias (requirements.txt, environment.yml o pyproject.toml). DVC facilita versionar datos pesados y asociar código con artefactos, pero no es obligatorio.

### 7. Verificar reproducibilidad
Comprobar que otra ejecución del pipeline desde las fuentes y la configuración registradas produce el mismo resultado. Documentar explícitamente los pasos que no son reproducibles automáticamente: acceso restringido, cambios en la fuente aguas arriba, latencia o intervención manual requerida.

## Salida
- Manifiesto de linaje: fuentes → transformaciones → artefactos.
- Datasheet del dataset.
- Metadatos geoespaciales por capa (CRS, grilla, cobertura, resolución).
- Entorno documentado y procedimiento ejecutable.

## Validaciones
- No mezclar capas de datos (crudo, intermedio, analítico).
- No prometer reproducibilidad sin tener los insumos completos.
- No tratar etiquetas con incertidumbre como verdad absoluta.
- Separar lo reproducible automáticamente de lo que requiere intervención manual.
- DVC y MLflow son opciones, no requisitos.

## Conocimiento incluido
Linaje de datos, datasheet (Gebru et al. 2018), separación de capas crudo/intermedio/analítico, versionado de dataset, DVC, STAC metadata como mecanismo de trazabilidad, documentación de incertidumbre en etiquetas geoespaciales, entorno reproducible.

## Checklist
- [ ] Fuentes: nombre, versión, fecha, licencia y limitaciones registradas.
- [ ] Tres capas de datos separadas: crudo, intermedio, analítico.
- [ ] Linaje documentado por variable: fuente → transformación → metadatos.
- [ ] Incertidumbre de etiquetas declarada con regla, nivel de confianza y tipo.
- [ ] Datasheet completado: composición, usos previstos y limitaciones.
- [ ] Entorno y dependencias registrados.
- [ ] Pasos no reproducibles identificados y documentados.
