# Changelog

Registrar cambios públicos o cambios verificables de comportamiento o documentación. No registrar comandos transitorios, estados de chat ni auditorías sin efecto documentado.

## [Unreleased]

### Changed

- Actualización de documentación y prompts del workflow por dominio, con separación Planner → Executor → Validator.
- Normalización de los archivos Markdown del proyecto a finales de línea LF. La ejecución documentada se encuentra en `docs/dominios/vision-computadora/normalizacion_markdown_lf_20260910.md`.

## [geoespacial-v1.0] - 2026-09-09

### Changed

- Refactorización de `geoespacial` a un router con cinco skills CORE y tres skills SPECIALIZED.
- Cierre documentado de la auditoría post-refactor y de la ejecución del dominio.

## 2026-07-07

- Normalizacion general de los 18 dominios bajo `skills/`.
- Incorporacion de README por dominio con descripcion, mapa de archivos, recomendacion de uso y principios.
- Refuerzo de dominios tecnicos: desarrollo IA, investigacion IA, vision por computadora, ciencia/ingenieria de datos, ingenieria de software, operaciones, seguridad operacional y AppSec.
- Refuerzo de dominios humanisticos y profesionales: derecho, medicina, bienestar, economia/finanzas, lenguaje, historia, filosofia, arte musical, desarrollo humano y fotografias.
- Creacion de `chatgpt` para dominios con muchos archivos o que requieren una version compacta.
- Consolidacion de criterios de prudencia para dominios sensibles: salud, bienestar, derecho, finanzas, seguridad y fotografia documental.

## 2026-07-06

- Estructura inicial del repositorio.
- Primer conjunto de dominios, instrucciones base y checklists.
