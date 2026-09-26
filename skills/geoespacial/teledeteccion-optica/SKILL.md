# Teledetección óptica

## Propósito
Construir productos ópticos comparables desde imágenes multiespectrales, incluyendo índices de vegetación, condición superficial e indicadores de fuego activo o área quemada.

## USAR CUANDO
Se procesen bandas, máscaras de nubes, composiciones, normalización o índices espectrales. También cuando se necesite interpretar productos de teledetección en contexto de incendios: fuego activo, área quemada o condición de vegetación.

## NO USAR CUANDO
No hay imagen óptica, el producto no está identificado como óptico, o la tarea solo prepara un formato geográfico sin análisis espectral.

## Entradas
Sensor y producto identificados; AOI; período; bandas requeridas; resolución; criterio de nubosidad; objetivo analítico; procedencia y metadatos.

## Workflow

### 1. Identificar fuente y producto
Confirmar que la fuente es óptica y adecuada a la pregunta. Los sensores ópticos capturan energía reflejada en el espectro visible e infrarrojo; no ven a través de nubes ni de humo denso. El humo de incendio puede enmascarar la superficie igual que las nubes.

### 2. Gestionar nubosidad
La nubosidad es el principal problema en teledetección óptica para análisis de incendios, donde el humo agrava la situación. Para Sentinel-2:
- Usar la banda SCL (Scene Classification Layer) o QA60 para enmascarar nubes y cirros.
- Documentar el porcentaje de píxeles válidos (sin nube ni humo) para el AOI y período.
- Si la cobertura válida es insuficiente, evaluar composición temporal (ej. mediana de imágenes del mes, máximo de NDVI en ventana de 16 días). Documentar el criterio de composición.

### 3. Índices espectrales relevantes
Los índices combinan bandas para destacar una propiedad superficial. Siempre documentar: sensor, bandas usadas y fórmula exacta.

**Índices de vegetación y humedad:**
- **NDVI** (Normalized Difference Vegetation Index): (NIR − Red) / (NIR + Red). Valores altos indican vegetación densa y activa; valores bajos pueden indicar suelo desnudo, vegetación seca, área quemada o nieve.
- **NDWI** (Normalized Difference Water Index): (Green − NIR) / (Green + NIR). Sensible al contenido de agua en vegetación y cuerpos de agua superficiales.
- **NDMI** (Normalized Difference Moisture Index): (NIR − SWIR) / (NIR + SWIR). Relacionado con humedad de la vegetación; útil como proxy de condición del combustible vegetal antes de un evento de incendio.

**Índices relacionados con fuego y área quemada:**
- **NBR** (Normalized Burn Ratio): (NIR − SWIR2) / (NIR + SWIR2). Las áreas quemadas presentan NIR bajo (pérdida de vegetación) y SWIR2 alto (carbono, suelo expuesto), lo que produce valores NBR bajos o negativos.
- **dNBR** (delta NBR = NBR_pre − NBR_post): mide el cambio antes y después de un evento de fuego. Valores altos de dNBR indican mayor severidad de la quema. Requiere dos imágenes comparables: la imagen post debe ser posterior al evento; la imagen pre debe ser de una época similar del año para minimizar efectos estacionales.

Para Sentinel-2: NIR = B8 (10 m) o B8A (20 m), SWIR = B11 (20 m), SWIR2 = B12 (20 m). Usar B8A cuando se combina con SWIR para trabajar a resolución uniforme de 20 m y evitar remuestrear.

### 4. Distinguir ignición, fuego activo y área quemada
Esta distinción es fundamental para cualquier análisis de incendios. Son tres fenómenos distintos que no deben tratarse como equivalentes:

| Concepto | Qué representa | Fuente típica | Limitación clave |
|---|---|---|---|
| **Ignición** | Inicio del incendio: lugar y momento en que comienza | Registros oficiales (CONAF, SENAPRED) | Precisión espacial y temporal variable; el instante exacto rara vez está registrado |
| **Fuego activo** | Anomalía térmica activa: llama o brasa en el momento de la observación satelital | VIIRS I-Band 375 m, MODIS Fire | No es el instante de inicio; puede corresponder a propagación horas o días después |
| **Área quemada** | Superficie afectada después del evento; tierra que ya ardió | dNBR (Sentinel-2/Landsat), MODIS Burned Area, EFFIS | Representa daño y extensión, no inicio; se construye post-evento |

Usar cada fuente según su naturaleza: ninguna reemplaza directamente a la otra para etiquetar ignición.

### 5. Interpretar VIIRS para fuego activo
VIIRS I-Band 375 m (NASA Earthdata) detecta anomalías térmicas de alta temperatura en la superficie. Atributos disponibles por detección: coordenadas del centroide del pixel, fecha y hora UTC de adquisición, nivel de confianza (low/nominal/high) y FRP (Fire Radiative Power, indicador de intensidad).

Limitaciones relevantes:
- El timestamp es de la pasada del satélite, no del inicio del incendio.
- Un pixel de 375 m puede contener fuego en solo una fracción de su área.
- La nubosidad y el humo denso impiden la detección.
- Una detección puede corresponder a propagación activa, no a la ignición original.
- Fuegos pequeños o de baja intensidad pueden no ser detectados.

Uso metodológico adecuado: evidencia auxiliar para confirmar o contrastar eventos; no asignar automáticamente etiqueta de ignición a partir de una detección VIIRS.

### 6. Área quemada como referencia posterior
Productos de área quemada (dNBR, MODIS Burned Area, EFFIS Rapid Damage Assessment) muestran dónde ardió la vegetación. Sirven para:
- Confirmar la extensión del evento registrado.
- Contrastar con registros oficiales de incendio.
- Construir variables de antecedente de quema (¿ese sector había ardido antes?).

No reemplazan la etiqueta de ignición porque representan el resultado acumulado del incendio, no su punto de inicio.

### 7. Validar cobertura y calidad
Verificar: nodata, escala radiométrica, fechas de captura, porcentaje de cobertura válida (sin nube ni humo) y consistencia entre escenas del mismo período.

## Salida
Producto óptico con bandas o índices solicitados, QA de nubosidad y registro de comparabilidad. Para análisis de incendios: distinción documentada entre ignición, fuego activo y área quemada.

## Validaciones
- No asumir que un índice es intercambiable entre sensores sin verificar bandas y fórmula exacta.
- No tratar detecciones VIIRS como ignición exacta.
- No calcular dNBR sin especificar fechas pre y post evento y criterio de selección de imágenes.
- No afirmar disponibilidad de datos sin verificar acceso.
- No combinar productos de distintos sensores como si fueran equivalentes sin justificarlo.
- Productos ALOS no ópticos quedan fuera de esta skill.

## Conocimiento incluido
Landsat, MODIS, Sentinel-2 (bandas, resolución, revisita, nubosidad), VIIRS I-Band 375 m (fuego activo, FRP, confianza); índices NDVI, NDWI, NDMI, NBR, dNBR; bandas de Sentinel-2 para fuego (B8A, B11, B12); composición temporal; SCL/QA60; distinción ignición/fuego activo/área quemada; EFFIS como referencia de área quemada.

## Checklist
- [ ] Fuente y naturaleza óptica del producto identificadas.
- [ ] AOI, período, bandas y porcentaje de cobertura válida (sin nubes/humo) registrados.
- [ ] Sensor, bandas y fórmula de cada índice documentados.
- [ ] Distinción entre ignición, fuego activo y área quemada declarada y aplicada.
- [ ] VIIRS usado como evidencia auxiliar, no como etiqueta de ignición directa.
- [ ] dNBR calculado con fechas pre/post explícitas y criterio de selección de imágenes.
- [ ] Limitaciones documentadas.
