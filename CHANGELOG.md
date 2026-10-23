# Changelog

Registrar cambios públicos o cambios verificables de comportamiento o documentación. No registrar comandos transitorios, estados de chat ni auditorías sin efecto documentado.

## [Unreleased]

### Added

- Dominio `skills/skill-globales/`: fuente única de las skills globales que todo agente debe tener (8 skills), con `README.md` y el script `sincronizar_skills_en_proyecto.ps1`, que las copia a `.agents/`, `.claude/` y `.gemini/` (versionadas) o al perfil de usuario.
- Skill `alinear-rectores-proyecto`: detecta y alinea los archivos rectores con los cambios desde el último corte, antes de consolidar la sesión.
- `.editorconfig` y `.gitattributes` (LF y UTF-8 sin BOM) y la sección «Flujo de cierre» en `AGENTS.md`.
- `.gitignore` en la raíz (secretos y configuración local, artefactos generados, bases locales, entornos, herramientas locales y archivos del sistema).

### Changed

- Las skills globales se movieron desde `examples/` a `skills/skill-globales/`; su contenido es agnóstico a proveedores y herramientas.
- `auditar-contratos-proyecto` incorpora contratos rectores de continuidad por nivel, nombres en inglés y criterio de terminaciones de línea; `planificar-cambios` fija `PLAN.md` como plan canónico; `retomar-sesion-proyecto`, `consolidar-sesion-proyecto` y `precheck-publica-repo` cierran huecos de fechas, historial y carpetas de agentes.
- `README.md` incluye `skill-globales` en la lista de dominios y en la estructura; `examples/README.md` y el README de `precheck-publica-repo` apuntan a la nueva ubicación.
- `docs/archivados/` se agrega a `.gitignore` y se quita del índice: el material histórico queda solo en el equipo local. Se eliminaron `docs/archivados/eliminar/` y `docs/archivados/sesiones/`, y las rutas de usuario y un correo personal se depuraron del árbol (el historial ya publicado los conserva).
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
