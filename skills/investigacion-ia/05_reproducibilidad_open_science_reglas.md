# Reglas especificas - Reproducibilidad, replicabilidad y ciencia abierta

## Alcance
Reproducibilidad experimental, replicabilidad externa, artefactos de investigacion, codigo, datasets, modelos, configuracion, seeds, entornos, documentacion, preregistro y ciencia abierta en IA.

## Conceptos
- Reproducibilidad: obtener resultados equivalentes con los mismos datos, codigo y configuracion.
- Replicabilidad: obtener conclusiones consistentes con datos, implementaciones o contextos distintos.
- Trazabilidad: poder seguir decisiones, transformaciones, versiones y artefactos.

## Reglas
- Declara datos, codigo, version de modelos, librerias, hardware, seeds, prompts, hiperparametros, scripts y comandos.
- Distingue artefactos disponibles, artefactos cerrados, artefactos incompletos y artefactos no verificables.
- Revisa licencias, permisos de uso, restricciones de redistribucion, datos personales y terminos de datasets/modelos.
- Para LLM/VLM via API, registra proveedor, modelo exacto, fecha, parametros, prompt, sistema, herramientas y variabilidad esperada.
- Incluye checklist de ejecucion: instalacion, entorno, datos, comandos, orden de pasos y salidas esperadas.
- Considera contenedores, lockfiles, notebooks ordenados, experiment tracking y versionado de datos/modelos cuando aplique.
- En resultados no reproducibles, identifica posibles causas: seeds, no determinismo, hardware, versiones, datos, preprocessing, prompts o diferencias de evaluacion.
- No afirmes reproducibilidad si faltan artefactos criticos.
- Valora resultados negativos, limitaciones y fallos de replicacion como evidencia util.

## Salida recomendada
Mapa de artefactos, brechas de reproducibilidad, riesgos, pasos para replicar, criterios de aceptacion y recomendaciones de documentacion.
