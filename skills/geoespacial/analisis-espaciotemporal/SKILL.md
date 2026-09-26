# Análisis espaciotemporal

## Propósito
Integrar series geoespaciales y covariables temporales de múltiples fuentes en una unidad de análisis común, sin incoherencias de escala, frecuencia ni fuga temporal.

## USAR CUANDO
La pregunta depende de cambio, estacionalidad, seguimiento, series o covariables meteorológicas. También cuando deba construirse una unidad de análisis compuesta como celda-día u otra combinación espaciotemporal.

## NO USAR CUANDO
Solo existe una fecha relevante o la dimensión temporal no participa en la decisión analítica.

## Entradas
Unidad espacial y temporal; período y frecuencia de cada fuente; reglas de agregación, unión y desfase; objetivo analítico; procedencia.

## Workflow

### 1. Definir la unidad de análisis espaciotemporal
Establecer explícitamente: unidad espacial (celda de grilla, polígono, punto), unidad temporal (día, hora, ventana de N horas) y clave de identificación de cada observación. Ejemplo: celda de 200 m × 200 m para una fecha determinada (celda-día). Esta definición determina todas las decisiones de agregación que siguen.

### 2. Inventariar frecuencias y resoluciones por fuente
Para cada fuente registrar: resolución espacial nativa, frecuencia de actualización, zona horaria de los timestamps y cobertura disponible. Las fuentes no pueden combinarse sin armonizar estas dimensiones primero.

Fuentes de referencia habituales para Chile:
- **ERA5** (ECMWF Reanalysis v5): reanálisis atmosférico global, grilla ~31 km, frecuencia horaria desde 1940. Variables: temperatura 2m, viento a 10m, humedad relativa, precipitación. Al integrarla a una grilla comunal de 200 m, se requiere interpolación espacial o asignación de valor de celda ERA5 más cercana; documentar la decisión.
- **Sentinel-2**: resolución 10-20 m, revisita ~5 días por satélite (~2-3 días combinado), afectado por nubosidad y humo.
- **VIIRS I-Band 375 m**: detecciones diarias (hasta 2 veces/día) de anomalías térmicas. Timestamp en UTC; convertir a hora local antes de asignar a un día calendario.
- **Registros de incendios (CONAF)**: fecha y localización con precisión variable; pueden incluir hora o solo fecha.

### 3. Definir reglas de agregación temporal
Especificar cómo se resume cada variable desde su frecuencia nativa a la frecuencia de la unidad de análisis. Documentar por cada variable: función de agregación, ventana temporal, zona horaria usada y criterio de tratamiento de faltantes.

Ejemplos para variables ERA5 agregadas a día:
- Temperatura: máxima diaria o promedio de las horas de mayor riesgo (ej. 12:00-18:00 hora local).
- Humedad relativa: mínima diaria.
- Precipitación: suma acumulada en las últimas 24 h.
- Viento: máxima racha diaria o promedio.

No existe una regla universal; la elección depende de la relación esperada entre la variable y el fenómeno modelado.

### 4. Definir ventanas temporales y desfases
Si la predicción es a corto plazo (ej. 24-72 h), las covariables deben corresponder a información disponible antes de la ventana de predicción. Definir explícitamente:
- Qué variables se usan y hasta qué momento temporal.
- Si se incluyen rezagos (lag features): temperatura del día anterior, precipitación acumulada en 7 días, etc.
- Si se excluye información del propio día del evento para evitar fuga.

### 5. Prevenir fuga temporal (data leakage)
La fuga temporal ocurre cuando se usa información del futuro —relativa al momento de predicción— en el entrenamiento o evaluación. Riesgos habituales:
- Variables satelitales del mismo día del evento que podrían incluir información posterior al inicio del incendio.
- Timestamps en UTC sin conversión a hora local, lo que desplaza artificialmente la asignación de variables al día.
- Joins por fecha sin verificar que la información estaba disponible antes del evento.

Separar estrictamente: información disponible antes del evento vs. información del evento mismo.

### 6. Alinear y unir fuentes en la unidad de análisis
Una vez que cada fuente tiene la frecuencia y resolución objetivo, unirlas mediante la clave espaciotemporal. Verificar:
- Que el join no genera duplicados (un identificador espaciotemporal → un único registro).
- Que no se pierden observaciones por diferencias en la clave de join.
- Que la cobertura de cada fuente es suficiente para el período de análisis.
- Que los faltantes están identificados y su causa es conocida (sin observación, nubosidad, fuente no disponible para ese período).

### 7. Validar cobertura y consistencia
- Porcentaje de celdas-día con dato completo por fuente y período.
- Distribución de valores por variable: detectar saltos, valores implausibles o patrones artificiales.
- Verificar estacionalidad esperada (temperatura en verano vs. invierno en el hemisferio sur).
- Comprobar que las fechas están en la zona horaria correcta y que no hay duplicados por conversión de huso.

## Salida
Dataset o serie espaciotemporal con clave de unidad de análisis, reglas de agregación documentadas, procedencia y validación de cobertura y fuga temporal.

## Validaciones
- No inventar períodos, valores, resoluciones ni fuentes.
- No usar información futura en entrenamiento o evaluación.
- No confundir correlación temporal con causalidad.
- Documentar zona horaria de cada fuente antes de cualquier join temporal.
- No combinar fuentes con distintas resoluciones sin agregar primero.
- No asumir que ERA5 a 31 km representa variabilidad local a 200 m; documentar la decisión de asignación.

## Conocimiento incluido
ERA5 (reanálisis atmosférico global, resolución ~31 km, frecuencia horaria), Sentinel-2 (frecuencia y limitaciones por nubosidad), VIIRS (anomalías térmicas diarias, UTC), unidad celda-día, ventanas de predicción a corto plazo (24-72 h), fuga temporal (data leakage), lag features, agregación temporal (máxima, mínima, suma, promedio), join espaciotemporal, zona horaria.

## Checklist
- [ ] Unidad espacial, temporal y clave de observación definidas explícitamente.
- [ ] Frecuencia, resolución espacial y zona horaria de cada fuente registradas.
- [ ] Regla de agregación temporal documentada por variable.
- [ ] Ventana temporal y desfases definidos; información disponible antes del evento verificada.
- [ ] Fuga temporal revisada: variables del propio evento excluidas si corresponde.
- [ ] Join validado: sin duplicados ni pérdida de observaciones.
- [ ] Cobertura, faltantes y distribución de valores comprobados.
