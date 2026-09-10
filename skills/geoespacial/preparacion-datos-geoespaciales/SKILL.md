# Preparación de datos geoespaciales

## Propósito
Preparar y verificar datos raster y vector para un uso analítico explícito.

## USAR CUANDO
Se inspeccionen, conviertan, recorten, reproyecten, remuestreen o alineen datos, o deban comprobarse CRS, grilla, nodata o metadatos.

## NO USAR CUANDO
El dato ya está validado y la tarea solo requiere modelamiento, catálogo STAC o análisis temporal.

## Entradas
Archivos raster/vector; AOI; CRS y unidades conocidas o por determinar; resolución/grilla objetivo; propósito analítico; metadatos disponibles.

## Workflow
1. Inspeccionar geometría, extensión, CRS, unidades, resolución, nodata, atributos y metadatos.
2. Definir AOI, CRS de trabajo, unidades, resolución y grilla según la tarea.
3. Transformar mediante recorte, reproyección, remuestreo, conversión o alineamiento solo cuando esté justificado.
4. Validar cobertura, geometría, valores, atributos, grilla y metadatos.
5. Registrar decisiones y limitaciones.

## Salida
Datos preparados, contrato de CRS/grilla y registro de QA.

## Validaciones
No asumir CRS ni unidades; comprobar compatibilidad de extensión y resolución; distinguir conversión de pérdida de información; verificar nodata y referencias.

## Conocimiento incluido
Raster, vector, COG, GeoJSON, GeoPackage, GeoParquet, Shapefile, geodesia, sistemas de coordenadas, proyecciones, reproyección, recortes, resampling, alineamiento y metadata. `cr2.md` es ambiguo y no se interpreta.

## Checklist
- [ ] AOI, CRS, unidades y resolución declarados.
- [ ] Transformaciones justificadas y reproducibles.
- [ ] Nodata, cobertura, atributos y metadatos comprobados.
- [ ] Supuestos y límites separados de hechos.
