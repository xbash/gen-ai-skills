# Decisiones vigentes

Fecha de corte: 2026-09-09

## Organización

1. La unidad organizativa es `skills/<dominio>/`.
2. Los nombres descriptivos sin numeración son canónicos.
3. `pack-chatgpt/` no forma parte de la arquitectura y no debe recrearse.
4. Las reglas comunes se separan de módulos temáticos y checklists.

## Carga de contexto

1. Cargar la instrucción base del dominio.
2. Cargar la regla transversal cuando la tarea sea operativa o metodológicamente compleja.
3. Seleccionar un módulo principal y solo los complementarios necesarios.
4. Cargar el checklist al cierre o durante una revisión, no por defecto.

## `desarrollo-ia`

- `base/`: rol, límites, selección y controles comunes.
- `modelamiento/`: modelos y paradigmas de aprendizaje.
- `sistemas_generativos/`: LLM, NLP y multimodalidad.
- `ciclo_de_vida/`: datos, experimentación, MLOps, serving y testing.
- `seguridad/`: seguridad y gobernanza responsable.
- `validacion/`: checklist de cierre.
- RL y algoritmos evolutivos permanecen separados por diferencia de formulación y evaluación.

## Calidad y portabilidad

- Las reglas transversales son dueñas de controles comunes; los módulos especializados conservan excepciones propias del dominio.
- `testing` es dueño de pruebas, regresiones y aceptación.
- `seguridad` es dueño de amenazas y controles de seguridad.
- `mlops` es dueño del ciclo operativo.
- `datos_experimentos` es dueño de trazabilidad experimental y comparabilidad.
- Los archivos de texto deben usar UTF-8 sin BOM y LF, según `.gitattributes` y `.editorconfig`.

## Pendientes técnicos

- Ejecutar validación funcional con casos representativos usando un LLM.
- Medir carga de contexto y tokens antes/después.

## Fuera de alcance de esta sesión

- Commit, push, release o publicación.
- Restauración de archivos numerados o packs eliminados.
- Decisiones sobre placeholders de `geoespacial` y otros pendientes generales del repositorio.

## Decisiones de esta sesión — 2026-09-25

1. `AGENTS.md` es la superficie normativa para instrucciones persistentes de
   agentes; no se usa como README, bitácora, changelog ni continuidad.
2. La carga de contexto sigue siendo progresiva: router/README, base, módulo
   principal, complementos por dependencia y checklist solo para revisión o
   cierre.
3. La selección de modelos se expresa por complejidad: Luna para operaciones
   deterministas o acotadas; Terra para arquitectura, análisis transversal y
   decisiones sustantivas; Terra High solo mediante gate explícito.
4. La documentación histórica y operacional bajo `docs/` no se transforma
   automáticamente en reglas permanentes.
5. La modificación se limita a `AGENTS.md`; no se autorizaron acciones Git ni
   cambios en los archivos no rastreados preexistentes.
