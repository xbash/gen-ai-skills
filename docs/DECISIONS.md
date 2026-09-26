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

## Decisiones de sesión — 2026-09-25 (AGENTS.md)

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

## Decisiones de sesión — 2026-09-26 (README.md raíz — plan completo)

1. El README raíz debe incluir una sección «Conceptos clave» que defina brevemente cada tipo de artefacto; es información orientada al usuario nuevo, no copia de `AGENTS.md`.
2. «Uso recomendado» se reemplaza por «Uso básico» con pasos accionables y un ejemplo con rutas verificadas; no se inventan comandos ni funcionalidades.
3. `templates/` se referencia desde el README con los archivos verificados; `estado_dominio_skills.md` queda excluido por uso no determinado.
4. `checklists/` está vacío; se mantiene en el árbol marcado como en desarrollo.
5. `desarrollo-ia` tiene 6 subdirectorios y se marca como dominio compuesto igual que `geoespacial`.
6. `fotografias` existe como dominio real con README.md; la lista de dominios está sincronizada.
7. `leeme-por-favor.txt` es ayuda memoria personal del usuario; no tiene valor documental para el proyecto.
8. La descripción de `docs/` en el README refleja la estructura real: `archivos/`, `dominios/`, `eliminar/`.
9. «Documentación adicional» va antes de «Workflow de mantenimiento»; este último se aclara como sección para mantenedores/contribuidores.
10. No se hizo commit, push ni publicación en esta sesión.

## Decisiones de sesión — 2026-09-25 (README.md raíz)

1. El `README.md` raíz no debe contener reglas operacionales de agentes; estas
   pertenecen a `AGENTS.md`.
2. El `README.md` raíz no debe reproducir la arquitectura interna de dominios;
   esta pertenece a `CONTRIBUTING.md`.
3. Las secciones de criterios de calidad, convención de dominios y workflow
   detallado se remueven del README cuando ya están cubiertas por otros archivos
   de autoridad (`AGENTS.md`, `CONTRIBUTING.md`, archivos de workflow).
4. La sección "Skills operacionales" no aporta valor adicional a la lista de
   dominios cuando el propio README del dominio documenta su propósito.
5. `CONTRIBUTING.md` y `SECURITY.md` deben referenciarse explícitamente desde
   el README raíz, ya que son fuentes de autoridad declaradas en `AGENTS.md`.
6. La versión vigente del workflow es `v1.1.md`; las referencias a `v1.md` en
   documentos raíz deben actualizarse al detectarse.
