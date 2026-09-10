# Modelamiento geoespacial

## Propósito
Diseñar y evaluar modelos supervisados respetando estructura espacial y temporal.

## USAR CUANDO
Existan variable objetivo, predictores y una decisión o predicción que evaluar.

## NO USAR CUANDO
Solo se preparen datos, se consulte un catálogo o se derive un índice sin ajuste de modelo.

## Entradas
Objetivo; predictores; unidad espacial; partición; métrica; criterio de uso; fuente y fecha; restricciones.

## Workflow
1. Definir objetivo, unidad de análisis y alcance de generalización.
2. Establecer baseline y partición espacial/temporal apropiada; revisar fuga y desbalance.
3. Seleccionar familias de modelo solo como alternativas justificadas.
4. Evaluar con métricas pertinentes y reportar incertidumbre, errores y límites.
5. Registrar configuración, datos, evaluación y decisión.

## Salida
Modelo comparado con baseline, evaluación reproducible y límites de generalización.

## Validaciones
No imponer validación aleatoria; no inventar hiperparámetros ni rankings; distinguir precisión de exactitud y resultado de recomendación; comprobar fuga espacial/temporal.

## Conocimiento incluido
Baseline, desbalance, métricas, precisión/exactitud, validación, Random Forest, XGBoost y LightGBM.

## Checklist
- [ ] Objetivo y unidad definidos.
- [ ] Baseline, partición y fuga revisados.
- [ ] Métricas justificadas y límites reportados.
- [ ] Configuración y resultados trazados.
