# Catálogos STAC

## Propósito
Seleccionar assets geoespaciales desde STAC de forma reproducible.

## USAR CUANDO
La adquisición o selección de datos se realiza mediante un catálogo STAC.

## NO USAR CUANDO
Los datos ya fueron entregados con procedencia suficiente o la fuente no es STAC.

## Entradas
Catálogo y colección identificados; AOI; intervalo temporal; filtros; criterios de cobertura, calidad y selección; procedencia disponible.

## Workflow
1. Identificar catálogo, colección y criterios de búsqueda sin inventar endpoints.
2. Expresar AOI, intervalo temporal y filtros de forma reproducible.
3. Ejecutar o describir la consulta y registrar los assets devueltos.
4. Comprobar cobertura, fechas, metadatos y criterios de selección.
5. Entregar la lista de assets y sus limitaciones; separar descubrimiento de procesamiento.

## Salida
Consulta reproducible, assets seleccionados y registro de criterios/procedencia.

## Validaciones
No afirmar disponibilidad de catálogos, colecciones o endpoints no provistos; comprobar cobertura y metadatos; no procesar ópticamente dentro de este workflow.

## Conocimiento incluido
STAC y stac_pipeline como workflow de descubrimiento y selección.

## Checklist
- [ ] Catálogo, colección, AOI e intervalo declarados.
- [ ] Filtros y criterios registrados.
- [ ] Assets y metadatos comprobados.
- [ ] Descubrimiento separado del procesamiento.
