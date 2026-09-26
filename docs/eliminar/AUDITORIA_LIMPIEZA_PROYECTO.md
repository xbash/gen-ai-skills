# Auditoría de limpieza del proyecto

Fecha de auditoría: 2026-09-25
Repositorio auditado: `C:\rutinas-local\gen-ai-skills-root\gen-ai-skills`
Alcance: identificación estática, read-only, de residuos de iteraciones de desarrollo, con énfasis en análisis, planes, borradores, reportes, temporales y documentación obsoleta.

## Alcance y método

Se inspeccionaron la estructura del repositorio, el estado Git, nombres y tamaños de archivos, contenido inicial, referencias textuales y documentos de continuidad. No se ejecutaron scripts del proyecto ni se modificaron, movieron o eliminaron archivos.

La clasificación usa estas reglas:

- `MANTENER`: tiene uso normativo, operacional, de continuidad o una referencia vigente verificable.
- `REVISAR`: no participa en la operación cotidiana o parece derivado de una iteración cerrada, pero conserva trazabilidad, contexto o una ambigüedad que exige decisión humana.
- `ELIMINAR`: no tiene contenido útil ni uso actual verificable; la eliminación queda solo propuesta y requiere autorización posterior.

La evidencia es estática. La ausencia de referencias textuales no prueba por sí sola que un archivo carezca de valor histórico o de uso manual.

## Estado observado

- Git reporta `main...origin/main` y un cambio no versionado ajeno a esta auditoría: `AGENTS.md`. Se preserva y no se incluye como residuo candidato.
- Se encontraron 12 auditorías antiguas en `docs/archivos/` y 58 artefactos fechados de workflows en `docs/dominios/`.
- Los archivos de `docs/archivos/` no tienen referencias textuales fuera de sí mismos. Los archivos de `docs/dominios/` sí tienen al menos una referencia externa verificable en el historial/documentación (`CHANGELOG.md` referencia la normalización de visión por computadora).
- La mayoría de los artefactos fechados son informes de precheck, auditoría, diseño, plan, ejecución, validación o estado. Son útiles para reconstruir decisiones, pero no son módulos cargables ni código de ejecución.
- Hay cinco documentos Markdown raíz vacíos, dos prompts de dominio vacíos, seis plantillas de proveedor vacías y un archivo geoespacial vacío con significado deliberadamente no resuelto.

## Matriz de candidatos

| Ruta | Tipo | Uso actual | Evidencia | Propósito original | Clasificación | Riesgo | Acción propuesta |
|---|---|---|---|---|---|---|---|
| `docs/archivos/` | Directorio de archivo | No participa en carga de skills ni ejecución; contiene 12 auditorías fechadas | 12 archivos; 302 794 bytes; sin referencias externas verificables | Archivo histórico de auditorías generadas durante iteraciones | REVISAR | Medio: borrar perdería trazabilidad de decisiones y diagnósticos | Mantener congelado hasta que una persona decida conservarlo como archivo, moverlo a un archivo histórico externo o eliminarlo en bloque |
| `docs/archivos/auditoria_academia_20260909.md`, `auditoria_ciencia_ing_datos_20260909.md`, `auditoria_desarrollo_ia_20260909.md`, `auditoria_economia_20260909.md`, `auditoria_geoespacial_20260909.md`, `auditoria_ingeniería_software_20260909.md`, `auditoria_ingestigacion_gnral_20260909.md`, `auditoria_investigacion_ia_20260909.md`, `auditoria_operaciones_ti_20260909.md`, `auditoria_seguridad_appsec_20260909.md`, `auditoria_seguridad_opsec_20260909.md`, `auditoria_vision_computadora_20260909.md` | Informes Markdown fechados | No cargados por README ni scripts; uso manual histórico | Diagnósticos de dominios previos | REVISAR | Medio: pérdida de evidencia de iteraciones y posibles decisiones no trasladadas | Comparar contra `docs/dominios/`; conservar solo si sirven como trazabilidad o extraer un índice antes de eliminar |
| `docs/dominios/` | Directorio de archivo de workflows | No es una ruta de carga de skills; agrupa 58 informes fechados | 14 subdirectorios; 58 archivos; referencias textuales externas limitadas | Evidencia por dominio de prechecks, auditorías, planes, ejecución y estados | REVISAR | Alto si se elimina en bloque sin revisar referencias o decisiones pendientes | Auditar por dominio, conservar los documentos con decisiones o referencias activas y retirar duplicados solo después de verificación |
| `docs/dominios/academia/`: `auditoria_academia_terra_20260910.md`, `auditoria_post_refactor_academia_20260910.md`, `estado_academia_20260910.md`, `execution_report_academia_20260910.md`, `plan_refactor_academia_luna_20260910.md`, `precheck_academia_20260910.md` | Informes fechados de workflow | No cargados operativamente | 6 archivos; nombres de precheck, plan, auditoría, ejecución y estado | Diseñar, ejecutar y cerrar una iteración del dominio | REVISAR | Medio | Determinar si el `estado` o el reporte final son la única evidencia; conservar uno o un paquete reducido si se necesita historial |
| `docs/dominios/ciencia-ingenieria-datos/`: `auditoria_ciencia-ingenieria-datos_terra_20260910.md`, `estado_ciencia-ingenieria-datos_20260910.md`, `precheck_ciencia-ingenieria-datos_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos; patrón de precheck, auditoría y estado | Diagnóstico y cierre de iteración | REVISAR | Medio | Conservar solo si el cierre respalda decisiones vigentes; eliminar duplicados tras revisión humana |
| `docs/dominios/derecho/`: `auditoria_derecho_20260913.md`, `ejecucion_documentacion_raiz_20260911.md`, `estado_derecho_20260913.md`, `plan_actualizacion_documentacion_raiz_20260911.md`, `precheck_derecho_20260913.md`, `validacion_documentacion_raiz_20260911.md` | Informes fechados de workflow | No cargados operativamente | 6 archivos; incluyen plan y validación de documentación raíz | Iteración con plan, ejecución y validación | REVISAR | Alto: puede documentar cambios ya aplicados y criterios de cierre | Verificar contra Git y documentación actual; conservar evidencia de validación o consolidarla antes de retirar |
| `docs/dominios/desarrollo-ia/`: `auditoria_desarrollo-ia_terra_20260910.md`, `estado_desarrollo-ia_20260910.md`, `precheck_desarrollo-ia_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos | Diagnóstico de dominio | REVISAR | Medio | Revisar si contienen decisiones no reflejadas en `skills/desarrollo-ia/`; luego archivar o eliminar |
| `docs/dominios/economia-finanzas/`: `auditoria_economia-finanzas_terra_20260910.md`, `auditoria_post_refactor_economia-finanzas_20260910.md`, `estado_economia-finanzas_20260910.md`, `execution_report_economia-finanzas_20260910.md`, `plan_refactor_economia-finanzas_luna_20260910.md`, `precheck_economia-finanzas_20260910.md` | Informes fechados de workflow | No cargados operativamente | 6 archivos; incluye auditoría previa, post-refactor y ejecución | Diseñar, ejecutar y verificar refactor | REVISAR | Medio | Conservar el cierre final si se necesita trazabilidad; retirar precheck/plan redundantes solo con confirmación |
| `docs/dominios/geoespacial/`: `auditoria_geoespacial_terra_20260909.md`, `auditoria_post_refactor_geoespacial_20260909.md`, `diseno_geoespacial_terra_20260909.md`, `execution_report_geoespacial_20260909.md`, `plan_creacion_geoespacial_luna_20260909.md`, `plan_ejecucion_geoespacial_luna_20260909.md`, `plan_post_refactor_geoespacial_luna_20260909.md` | Diseño, planes e informes fechados | No cargados operativamente; algunos preservan restricciones explícitas | 7 archivos; varios mencionan que `cr2.md` no debe interpretarse ni eliminarse | Crear y cerrar la iteración geoespacial | REVISAR | Alto: contiene decisiones de preservación y límites de interpretación | Revisar conjuntamente con `skills/geoespacial/README.md`; no eliminar los documentos que sean la única evidencia del bloqueo de `cr2.md` |
| `docs/dominios/ingenieria-software/`: `auditoria_ingenieria-software_terra_20260910.md`, `estado_ingenieria-software_20260910.md`, `precheck_ingenieria-software_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos | Diagnóstico de dominio | REVISAR | Medio | Comparar contra `skills/ingenieria-software/`; conservar solo el cierre necesario |
| `docs/dominios/investiga-gnral/`: `auditoria_investigacion-general_terra_20260910.md`, `auditoria_post_refactor_investigacion-general_20260910.md`, `estado_investigacion-general_20260910.md`, `execution_report_investigacion-general_20260910.md`, `plan_refactor_investigacion-general_luna_20260910.md`, `precheck_investigacion-general_20260910.md` | Informes fechados de workflow | No cargados operativamente | 6 archivos; incluyen cierre post-refactor | Iteración de auditoría, refactor y validación | REVISAR | Medio | Retener la evidencia final o consolidarla; retirar derivados repetidos después de comprobar que no contienen decisiones únicas |
| `docs/dominios/investiga-ia/`: `auditoria_investigacion-ia_terra_20260910.md`, `estado_investigacion-ia_20260910.md`, `precheck_investigacion-ia_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos | Diagnóstico de dominio de investigación IA | REVISAR | Medio | Mantener temporalmente por trazabilidad metodológica; revisar si sus pendientes ya fueron cerrados |
| `docs/dominios/operaciones-tecnologia/`: `auditoria_operaciones-tecnologia_terra_20260910.md`, `estado_operaciones-tecnologia_20260910.md`, `execution_report_operaciones-tecnologia_20260910.md`, `plan_refactor_operaciones-tecnologia_luna_20260910.md`, `precheck_operaciones-tecnologia_20260910.md` | Informes fechados de workflow | No cargados operativamente | 5 archivos; incluye ejecución y estado | Diagnóstico, refactor y cierre | REVISAR | Medio | Conservar el reporte/estado final si respalda el README actual; retirar duplicados con autorización |
| `docs/dominios/seguridad-appsec/`: `auditoria_seguridad-appsec_20260910.md`, `estado_seguridad-appsec_20260910.md`, `precheck_seguridad-appsec_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos | Diagnóstico de dominio | REVISAR | Medio | Revisar decisiones de seguridad antes de retirar; no trasladar automáticamente recomendaciones históricas |
| `docs/dominios/seguridad-opsec/`: `auditoria_seguridad-opsec_20260910.md`, `estado_seguridad-opsec_20260910.md`, `precheck_seguridad-opsec_20260910.md` | Informes fechados de workflow | No cargados operativamente | 3 archivos | Diagnóstico de dominio | REVISAR | Medio | Igual que AppSec: conservar o consolidar solo después de verificar decisiones vigentes |
| `docs/dominios/vision-computadora/normalizacion_markdown_lf_20260910.md` | Informe fechado de normalización | Referenciado desde `CHANGELOG.md`; uso histórico verificable | Referencia externa comprobada; documenta una operación concreta de normalización | Evidencia de normalización de finales de línea | MANTENER | Bajo | Conservar mientras el changelog mantenga el enlace; si se archiva, actualizar el enlace en la misma operación |
| `docs/dominios/vision-computadora/auditoria_vision-por-computadora_20260910.md`, `estado_vision-por-computadora_20260910.md`, `precheck_vision-por-computadora_20260910.md` | Informes fechados de workflow | No son carga operativa | 3 archivos; sin uso operativo verificable | Precheck, auditoría y estado del dominio | REVISAR | Medio | Revisar por redundancia; conservar solo la evidencia de cierre o decisiones que no estén en la documentación vigente |
| `docs/estado_lenguaje-castellano_20260913.md`, `docs/precheck_lenguaje-castellano_20260913.md` | Estado y precheck fechados | No son módulos cargables; sirven como evidencia de una iteración reciente | Referencian el prompt y el dominio inspeccionado | Diagnóstico y cierre inicial del dominio | REVISAR | Medio | Conservar mientras el dominio siga en evolución; después consolidar el estado final y retirar el precheck si no tiene decisiones únicas |
| `docs/CONTEXT.md`, `docs/CONTEXTO_PROYECTO.md`, `docs/DECISIONS.md`, `docs/DECISIONES_TECNICAS.md`, `docs/HANDOFF.md`, `docs/PENDIENTES.md`, `docs/BITACORA_AGENTES.md`, `docs/BITACORA_CODEX.md`, `docs/REGISTRO_CAMBIOS.md` | Continuidad, decisiones y bitácoras | Uso actual explícito por agentes y documentación; varias referencias cruzadas | Contienen reglas de continuidad, pendientes, decisiones y registro; sus nombres aparecen referenciados | Preservar contexto entre sesiones y justificar cambios | MANTENER | Alto si se eliminan: pérdida de continuidad y trazabilidad | Mantener; resolver duplicidades solo mediante una consolidación autorizada y verificable |
| `docs/leeme-por-favor.txt` | Documento histórico de contexto | No tiene referencias textuales externas verificables, pero contiene contexto de proyecto y decisiones históricas | 14 142 bytes; describe objetivos, estructura y contexto de trabajo | Transferir contexto entre iteraciones/agentes | MANTENER | Medio: puede contener información desactualizada, pero su eliminación perdería contexto histórico | Mantener como histórico hasta contrastarlo con `CONTEXTO_PROYECTO.md`; luego decidir consolidación |
| `docs/architecture.md`, `docs/best-practices.md`, `docs/getting-started.md`, `docs/prompt-design.md`, `docs/roadmap.md` | Documentación Markdown vacía | No tienen contenido; las referencias encontradas solo los describen como vacíos o los listan como pendientes | Longitud 0; `docs/PENDIENTES.md`, `docs/CONTEXTO_PROYECTO.md` y `docs/REGISTRO_CAMBIOS.md` registran su estado vacío | Posibles documentos raíz reservados como placeholders | ELIMINAR | Medio: `roadmap.md` tiene historia de posible renombre desde `roadmap.md.txt`; borrar sin confirmar podría ocultar un cambio externo | Confirmar primero el caso `roadmap.md`; si no hay intención vigente, eliminar los cinco en una operación explícita y separada |
| `prompts/dominios/investiga-gnral/paso1-precheck.md`, `prompts/dominios/investiga-gnral/paso3-crea-router-modulos.md` | Prompts de workflow vacíos | No tienen instrucciones ejecutables; `paso3` no tiene referencias verificables | Longitud 0; el resto del workflow usa otros pasos/prompts | Reservas de pasos de una iteración de workflow | ELIMINAR | Bajo a medio: posible ruptura si un operador espera esos nombres manualmente | Confirmar que el workflow vigente no los requiere; eliminar solo después de revisar la guía de ejecución |
| `templates/chatgpt.md`, `templates/claude.md`, `templates/gemini.md`, `templates/lmstudio.md`, `templates/ollama.md`, `templates/openwebui.md` | Plantillas vacías | No contienen instrucciones; son nombres de destinos potenciales | Longitud 0; `docs/CONTEXTO_PROYECTO.md` las registra como vacías; el repositorio sí contiene otras plantillas no vacías | Plantillas de carga/contexto por proveedor | REVISAR | Medio: eliminar nombres puede romper expectativas de documentación futura, aunque no hay contenido que ejecutar | Decidir si son placeholders intencionales; si no lo son, eliminar o completar mediante una tarea separada, no durante limpieza automática |
| `skills/geoespacial/cr2.md` | Archivo Markdown vacío y ambiguo | No se carga; el README y documentos del dominio indican que no debe interpretarse ni eliminarse | Longitud 0; múltiples planes e informes registran explícitamente “no interpretar” y “no eliminar” | Placeholder cuyo significado no pudo verificarse | REVISAR | Alto si se elimina por automatismo: contradice una decisión explícita de preservación | Mantener sin cambios hasta identificar su significado con evidencia verificable; luego decidir |

## Plan de acción propuesto

1. Congelar esta auditoría como base de decisión. No ejecutar cambios sobre la base de la clasificación sin confirmación humana.
2. Resolver primero los casos ambiguos: `roadmap.md`, `skills/geoespacial/cr2.md`, las plantillas vacías y la retención deseada para `docs/archivos/` y `docs/dominios/`.
3. Si se autoriza limpieza, trabajar por lotes reversibles y explícitos: primero documentación vacía no ambigua; después prompts vacíos; por último archivos históricos redundantes.
4. Antes de cada lote, comprobar referencias textuales, estado Git y diferencias respecto de la base actual. No hacer staging, commit, push ni publicación como parte de esta auditoría.
5. Después de cada lote, verificar enlaces internos, existencia de rutas mencionadas por prompts, contenido de continuidad y `git diff --check`.
6. No eliminar ni reinterpretar `cr2.md` sin evidencia externa o decisión humana específica.

## Resumen

### Cantidad de elementos por categoría

El conteo considera archivos individuales y los dos directorios de archivo como elementos candidatos; las filas agrupadas de la matriz enumeran sus integrantes.

| Categoría | Cantidad | Composición |
|---|---:|---|
| MANTENER | 11 | 9 documentos de continuidad/decisiones/bitácoras, `docs/leeme-por-favor.txt` y `docs/dominios/vision-computadora/normalizacion_markdown_lf_20260910.md` |
| REVISAR | 80 | `docs/archivos/` y `docs/dominios/`, 69 informes fechados incluidos, 2 documentos de lenguaje, 6 plantillas vacías y `skills/geoespacial/cr2.md` |
| ELIMINAR | 7 | 5 documentos raíz vacíos y 2 prompts de workflow vacíos |
| **Total** | **98** | Incluye 2 directorios y 96 archivos candidatos |

### Principales residuos detectados

- Concentración de informes fechados de iteraciones en `docs/archivos/` y `docs/dominios/`; no son carga operativa, pero contienen evidencia histórica.
- Duplicación de fases de workflow: precheck, auditoría, plan, ejecución, estado y validación para varios dominios.
- Cinco documentos raíz vacíos y dos prompts vacíos sin contenido útil verificable.
- Seis plantillas vacías que parecen placeholders, pero cuya intención futura no está resuelta.
- Un placeholder geoespacial deliberadamente ambiguo (`cr2.md`) que no debe tratarse como residuo eliminable automático.

### Casos ambiguos que requieren decisión humana

- Si `docs/archivos/` y `docs/dominios/` deben conservarse como archivo histórico, consolidarse o eliminarse.
- Si `docs/leeme-por-favor.txt` debe seguir siendo una fuente histórica o integrarse en la documentación de continuidad.
- Si `docs/roadmap.md` fue un renombre intencional de `docs/roadmap.md.txt` y si corresponde conservarlo vacío.
- Si las seis plantillas de proveedor son reservas intencionales o residuos de una iteración incompleta.
- Qué significa `skills/geoespacial/cr2.md`; hasta contar con evidencia, la decisión documentada es preservarlo sin interpretación.
- Si alguno de los prompts vacíos forma parte de un flujo manual no detectable mediante referencias textuales.

## Límite de la auditoría

Esta es una auditoría estática y de trazabilidad local. No demuestra que un archivo nunca sea usado manualmente, ni sustituye una revisión de los operadores que mantienen los workflows. La eliminación queda únicamente como propuesta y no se realizó ningún cambio destructivo.
