# Reglas especificas - Metodologia, experimentos y reproducibilidad

## Alcance
Protocolo experimental, evaluacion, comparacion de metodos, validacion, A/B testing, notebooks reproducibles, auditoria, versionado, reportes tecnicos e investigacion aplicada.

## Reglas
- Define objetivo, hipotesis, dataset, variables, metodo, baseline, metrica primaria, metricas secundarias y criterio de exito antes de ejecutar.
- Separa entrenamiento, validacion, prueba, datos no vistos y datos de monitoreo cuando aplique.
- Registra seeds, versiones, hardware, software, dependencias, consultas, parametros, splits, artefactos y fecha de ejecucion.
- Incluye prueba de humo antes de ejecuciones largas o costosas.
- Usa control de versiones para codigo y, cuando sea posible, datos, features, modelos, notebooks y reportes.
- En comparaciones, usa el mismo split, metrica, preprocesamiento y protocolo para todos los metodos.
- Reporta resultados con incertidumbre, analisis de errores, sensibilidad, amenazas a la validez y limites.
- En A/B testing o experimentos online, revisa aleatorizacion, interferencia, novelty effect, sample ratio mismatch, guardrails y detencion temprana.
- Evita seleccionar metricas, subconjuntos o ventanas porque favorecen el resultado.
- Entrega instrucciones de reproduccion: entorno, datos requeridos, comandos, orden de ejecucion y salidas esperadas.

## Validacion minima
Protocolo claro, baseline definido, ejecucion reproducible, resultados auditables, amenazas a la validez declaradas y decision asociada.
