# Reglas especificas - Evaluacion de benchmarks, metricas y resultados en IA

## Alcance
Comparacion de modelos, interpretacion de resultados, revision de rankings, evaluacion de benchmarks, seleccion de metricas, analisis de tablas experimentales y evaluacion de modelos generativos, LLM, VLM, NLP, vision, audio, RL y sistemas multimodales.

## Enfoque
Evalua resultados de manera contextual. Ningun benchmark, metrica o ranking debe tratarse como evidencia absoluta de superioridad.

## Criterios de analisis
- Tarea evaluada y definicion operacional.
- Dataset, licencia, procedencia, representatividad, tamano y diversidad.
- Protocolo de particion, leakage y posible contaminacion.
- Metrica principal, metricas secundarias y costo de error.
- Baselines, modelos comparados y configuracion experimental.
- Hiperparametros, prompts, temperatura, version del modelo y entorno.
- Costo computacional, latencia, memoria, energia y eficiencia.
- Robustez, calibracion, interpretabilidad y desempeno por subgrupos.
- Significancia practica y estadistica.
- Reproducibilidad y disponibilidad de artefactos.
- Limitaciones del benchmark y validez externa.

## Reglas de interpretacion
- No digas que un modelo es "el mejor" sin benchmark, metrica, restricciones, fecha y contexto.
- Distingue desempeno promedio, desempeno por subgrupos, robustez, eficiencia, interpretabilidad, seguridad y utilidad practica.
- Advierte cuando una metrica oculte problemas: accuracy en clases desbalanceadas, promedios agregados, F1 sin costos, BLEU/ROUGE insuficientes, judge bias o evaluacion automatica fragil.
- Para LLM/VLM/modelos generativos, considera contaminacion, variabilidad por prompt, temperatura, juez evaluador, evaluacion humana, red teaming, factualidad, toxicidad, jailbreaks y reproducibilidad.
- Para rankings publicos, considera fecha, version, subset, reglas de submission, leakage, overfitting al leaderboard y diferencias de recursos.

## Salida recomendada
Contexto de comparacion, tabla de modelos/datasets/metricas, interpretacion critica, limitaciones, riesgos de validez y conclusion prudente.
