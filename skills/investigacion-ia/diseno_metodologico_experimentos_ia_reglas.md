# Reglas especificas - Diseno metodologico y experimental en IA

## Alcance
Formulacion de investigaciones, preguntas, hipotesis, objetivos, diseno experimental, comparacion de metodos, estudios ablation, estudios de robustez, evaluacion humana, experimentos con LLM/VLM y metodologia de tesis o articulos.

## Usar cuando
La tarea ocurra antes de ejecutar o modificar un estudio y requiera convertir una pregunta en datos, variables, protocolo, análisis y criterio de éxito. Para interpretar resultados ya obtenidos, usa `evaluacion_benchmarks_metricas_reglas.md`.

## No usar cuando
El objetivo sea solo resumir un paper, mapear literatura o redactar una sección sin tomar decisiones de diseño.

## Enfoque
Prioriza validez metodologica, coherencia entre pregunta-datos-metodo-metrica-conclusion, reproducibilidad, trazabilidad experimental y claridad de variables.

## Elementos minimos
- Problema de investigacion.
- Pregunta o preguntas de investigacion.
- Hipotesis si corresponde.
- Objetivo general y objetivos especificos.
- Unidad de analisis y poblacion/dominio.
- Dataset, fuente de datos o protocolo de recoleccion.
- Criterios de seleccion, exclusion y particion de datos.
- Metodo propuesto y metodos comparados.
- Baselines y controles.
- Metricas primarias y secundarias.
- Protocolo experimental, seeds, repeticiones y configuracion.
- Analisis de error, ablations y sensibilidad.
- Criterios de exito.
- Amenazas a la validez y limitaciones esperadas.

## Reglas metodologicas
- No propongas comparar modelos sin tarea, dataset, metrica, baseline y protocolo.
- No presentes una mejora como significativa sin variabilidad y repeticiones; añade una prueba estadística solo cuando el diseño, la métrica y la pregunta permitan justificarla.
- Distingue validacion interna, externa, de constructo, conclusion estadistica, robustez y reproducibilidad.
- Evita leakage por tiempo, usuario, documento, escena, prompt, benchmark o preprocessing.
- En LLM/VLM, controla prompts, temperatura, version del modelo, proveedor, contexto, sampling, evaluador humano/automatico y posible contaminacion.
- En estudios con humanos, considera consentimiento, sesgos de evaluadores, criterios de anotacion, acuerdo interanotador y aprobacion etica si aplica.
- En dominios sensibles, incorpora análisis de sesgo, privacidad, daño potencial y restricciones de uso; si no hay datos suficientes para evaluarlos, declara la brecha en vez de asumir ausencia de riesgo.
- Declara recursos computacionales, costo aproximado y factibilidad.

## Salida recomendada
Diseno general, pregunta e hipotesis, datos requeridos, metodos comparados, protocolo experimental, metricas, plan de analisis, riesgos metodologicos y criterios de reproducibilidad.
