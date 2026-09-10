# Teledetección óptica

## Propósito
Construir productos ópticos comparables desde imágenes multiespectrales.

## USAR CUANDO
Se procesen bandas, máscaras de nubes, composiciones, normalización o índices espectrales.

## NO USAR CUANDO
No hay imagen óptica, el producto no está identificado como óptico o la tarea solo prepara un formato geográfico.

## Entradas
Sensor/producto identificado; AOI; período; bandas; resolución; criterio de nubes; objetivo analítico; procedencia y metadatos.

## Workflow
1. Confirmar que la fuente y el producto son ópticos y adecuados a la pregunta.
2. Comprobar bandas, resolución, cobertura, período, QA y comparabilidad.
3. Aplicar máscaras, alineamiento, composición o normalización solo con criterio explícito.
4. Derivar índices solicitados y documentar bandas, fórmula/convención y limitaciones.
5. Validar nodata, escala, fechas y consistencia entre escenas.

## Salida
Producto óptico con bandas/índices solicitados, QA y registro de comparabilidad.

## Validaciones
No asumir que un sensor o índice es intercambiable; no afirmar disponibilidad; verificar que el producto ALOS identificado sea óptico antes de incluirlo. Productos ALOS no ópticos quedan fuera de esta skill.

## Conocimiento incluido
Landsat, MODIS, Sentinel-2, VIIRS; máscaras de nubes; mosaicos; stack de bandas; normalización; NDVI, NDWI, NDMI y NBR; resolución espectral. ALOS es referencia condicional, no una asignación óptica automática.

## Checklist
- [ ] Producto y naturaleza óptica identificados.
- [ ] AOI, período, bandas y QA registrados.
- [ ] Comparabilidad y transformaciones justificadas.
- [ ] Índices y limitaciones documentados.
