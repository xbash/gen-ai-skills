# AGENTS.md

## Propósito

`gen-ai-skills` es una biblioteca de instrucciones Markdown reutilizables. Usa
este archivo como router: carga el contexto mínimo suficiente para la tarea y
no asumas que todos los dominios, ejemplos o checklists se deben leer.

## Reglas obligatorias

- No inventes datos, métricas, resultados experimentales, benchmarks, costos,
  tiempos, capacidades, compatibilidades, fuentes ni citas.
- Distingue hechos verificados, supuestos, inferencias, recomendaciones,
  riesgos, limitaciones y pendientes cuando corresponda.
- Antes de modificar, identifica la ruta canónica, revisa el estado Git y
  preserva cambios ajenos.
- No hagas staging, commit, push, publicación ni borrados sin autorización
  explícita.
- Mantén archivos de texto en UTF-8 sin BOM, LF, newline final y sin espacios
  finales, según `.editorconfig` y `.gitattributes`.

## Carga progresiva

1. Identifica el dominio bajo `skills/` y lee su `README.md`.
2. Carga la instrucción base del dominio.
3. Añade un módulo principal según la tarea y complementos solo por una
   dependencia concreta.
4. Usa el checklist únicamente para cierre, revisión o cuando sea necesario.

No crees `SKILL.md`, subdirectorios ni fusiones por uniformidad estética.

## Investigación y evaluación de IA

Para investigación, diseño experimental, evaluación de modelos o benchmarks,
usa `skills/investigacion-ia/README.md` como router. Carga siempre
`instrucciones_base_ia_investiga.md` y selecciona, según corresponda,
`diseno_metodologico_experimentos_ia_reglas.md`,
`evaluacion_benchmarks_metricas_reglas.md` y/o
`reproducibilidad_open_science_reglas.md`.

Al reportar una evaluación, conserva la tarea, condiciones, artefactos usados,
métricas observadas, limitaciones y amenazas a la comparabilidad. No presentes
resultados exploratorios como generalizables o causales.
