# Análisis espaciotemporal

## Propósito
Integrar series geoespaciales y covariables temporales sin incoherencias ni fuga temporal.

## USAR CUANDO
La pregunta depende de cambio, estacionalidad, seguimiento, series o covariables meteorológicas.

## NO USAR CUANDO
Solo existe una fecha relevante o la dimensión temporal no participa en la decisión.

## Entradas
Unidad espacial y temporal; período; frecuencia; fuentes; resolución temporal; reglas de agregación, unión y desfase; objetivo analítico; procedencia.

## Workflow
1. Definir unidad espacial, frecuencia, período y cobertura requeridos.
2. Comprobar fechas, resolución, zona temporal, faltantes y procedencia de cada fuente.
3. Alinear unidades y tiempos mediante una regla de unión/agregación explícita.
4. Revisar desfases, ventanas y uso de información futura.
5. Validar cobertura y consistencia; registrar supuestos y limitaciones.

## Salida
Dataset o serie espaciotemporal alineada, con regla temporal, procedencia y validación registradas.

## Validaciones
No inventar períodos, valores, resoluciones ni fuentes; no usar información futura en entrenamiento o evaluación; no confundir correlación temporal con causalidad.

## Conocimiento incluido
ERA5, resolución temporal, spatiotemporal y variables meteorológicas como referencias condicionadas al caso.

## Checklist
- [ ] Unidad, frecuencia y período declarados.
- [ ] Regla de unión/agregación y desfases documentados.
- [ ] Faltantes, cobertura y procedencia comprobados.
- [ ] Fuga temporal descartada y límites registrados.
