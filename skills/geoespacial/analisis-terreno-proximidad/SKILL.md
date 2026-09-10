# Análisis de terreno y proximidad

## Propósito
Derivar variables de relieve y proximidad con unidades, escala y método explícitos.

## USAR CUANDO
La pregunta use DEM, pendiente (slope), orientación, rugosidad, distancia a caminos o distancia a poblados.

## NO USAR CUANDO
Relieve y proximidad no son pertinentes para la pregunta ni para los predictores.

## Entradas
DEM y/o capas de referencia; AOI; CRS métrico apropiado; escala, vecindad y definición de distancia; propósito.

## Workflow
1. Comprobar fuente, cobertura, resolución, CRS y unidades.
2. Definir escala y vecindad de los derivados.
3. Derivar pendiente, orientación, rugosidad y distancias según definiciones explícitas.
4. Validar bordes, nodata, unidades, cobertura y coherencia espacial.
5. Registrar fuente, método, parámetros elegidos y límites.

## Salida
Capas derivadas y variables de proximidad validadas y trazables.

## Validaciones
No tratar derivados como evidencia causal; no imponer radios, umbrales o resoluciones universales; documentar método de distancia y CRS métrico.

## Conocimiento incluido
DEM, SRTM, pendiente, orientación, rugosidad, distancia a caminos, distancia a poblados y resolución espacial.

## Checklist
- [ ] Fuente, CRS, unidades y escala declarados.
- [ ] Pendiente/slope diferenciada de otras variables.
- [ ] Método de distancia y nodata comprobados.
- [ ] Limitaciones y supuestos registrados.
