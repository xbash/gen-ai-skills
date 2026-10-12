# Plan de integración de skills globales de ingeniería de software

**Plan ID:** IS-GLOBAL-20261011

**Estado global:** DONE

**Modalidad registrada:** ejecución autorizada por acción. IS-01 a IS-06 están completadas; IS-06B se ejecutó tras autorización explícita.
**Fuente técnica rectora:** `skills/ingenieria-software/` de este repositorio.

## Objetivo y alcance

Preparar dos skills globales diferenciadas: `ingenieria-software` para orientación, diseño, implementación y verificación; `auditoria-software` para revisión estructurada de artefactos existentes. Ambas deben seleccionar las reglas técnicas del dominio rector, conservar la precedencia de instrucciones locales y coordinarse con `planificar-cambios` sin duplicar su contrato de planificación.

Incluye los paquetes de distribución bajo `examples/`, las instalaciones globales de ambas skills y las referencias de `~/.codex/AGENTS.md`. Excluye cambios técnicos generales en el dominio, cambios en el proyecto de tesis y dependencias nuevas. El retiro de los nombres antiguos se ejecuta como acción separada IS-06.

## Evidencia y diagnóstico

1. `skills/ingenieria-software/README.md` enruta tareas a `instrucciones_base_dev.md`, módulos temáticos, `checklist_codigo_dev.md` y `ciclo-vida/`. El dominio es funcional y ya separa reglas técnicas, proceso y verificación. Sus archivos tienen cambios previos en el árbol de trabajo; preservarlos.
2. Las instalaciones `~/.codex/skills/usar-reglas-dev/SKILL.md` y `~/.codex/skills/revisar-codigo-dev/SKILL.md` son idénticas por SHA-256 a `examples/usar-reglas-dev/SKILL.md` y `examples/revisar-codigo-dev/SKILL.md`, respectivamente. Por tanto, los `examples/` de primer nivel son la fuente de distribución observada; la instalación global es la copia activa. La procedencia histórica no se infiere del hash.
3. Cada instalación contiene un segundo `.md` idéntico a su `SKILL.md`. Son copias redundantes observadas, no fuentes rectoras independientes. `examples/gen-ia-codex/` contiene variantes anteriores con los mismos nombres, documentadas por `examples/README.md`; requieren sincronización o una declaración explícita de legado antes del retiro.
4. `usar-reglas-dev` remite al README/base/módulos del dominio, pero también reitera sus invariantes técnicos. Debe quedar como adaptador de activación y flujo, sin convertir sus resúmenes en una fuente técnica paralela.
5. `revisar-codigo-dev` repite ampliamente `checklist_codigo_dev.md`. Su `agents/openai.yaml` invoca `$checklist-codigo-dev`, nombre distinto del `name` real. La nueva skill de auditoría debe conservar hallazgos priorizados, evidencia, incertidumbre y recomendación de decisión, y obtener la pauta técnica del dominio.
6. `~/.codex/AGENTS.md` activa `usar-reglas-dev` en cuatro referencias y `planificar-cambios` en las tareas de planificación. Una actualización de esas referencias es necesaria después de activar el nuevo nombre; la coordinación de modalidades ya es suficiente. `planificar-cambios/SKILL.md` respeta contratos locales y solo permite artefactos de plan, por lo que es compatible.
7. `mgtr-ti-tesis-fase-1/AGENTS.md` exige su copia local `skills/ingenieria-software/instrucciones_base_dev.md`, que tiene el mismo hash que la base de este repositorio en la inspección actual. Los AGENTS subordinados de `revisar-docs`, `revisar-indices` y `revisar-webs` complementan la raíz y remiten a `planificar-cambios`. Ninguno referencia los nombres antiguos. No requieren cambios. Las reglas concretas de tesis —Python 3.12, pytest, `argparse`, UTF-8, privacidad, logs y contratos— conservan precedencia en ese proyecto.
8. No se encontró contrato local vigente para el formato de este plan ni para un registro JSONL de este repositorio. El fallback `docs/PLAN.md` colisiona en Windows con `docs/plan.md`, archivo rastreado que ya estaba eliminado en el árbol de trabajo. Para preservar esa eliminación previa, este plan usa `docs/PLAN_integracion_skills_globales_20261011.md`; el registro usa `logs/planificacion.jsonl`. No se sobrescribe un plan ajeno.

## Precedencia y límites de contenido

Jerarquía propuesta: instrucciones de mayor prioridad y AGENTS aplicables → reglas locales del proyecto/componente → dominio rector para criterios técnicos reutilizables → adaptador global para selección y formato de trabajo. La skill `planificar-cambios` gobierna el artefacto de planificación y cede ante contratos locales. `auditoria-software` entrega una evaluación y no implementa correcciones por el solo hecho de auditar. Una revisión de seguridad especializada conserva su alcance propio; la auditoría general solo identifica riesgos sustentados por evidencia.

No editar `skills/ingenieria-software/`, el AGENTS de este repositorio ni los cuatro AGENTS de tesis: la evidencia no muestra una brecha que requiera cambiarlos. No convertir el prompt específico `auditar_codigo_contra_skill.md` en regla general; contiene una ruta de otro proyecto.

## Acciones secuenciadas

### IS-01 — Adaptador de ingeniería

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** dar al nuevo nombre un disparador claro sin duplicar el dominio.
- **Archivos/rutas:** futuro `examples/ingenieria-software/SKILL.md` y `agents/openai.yaml`; contenido vigente de `examples/usar-reglas-dev/` como insumo preservado.
- **Cambio concreto:** crear el paquete nuevo con `name: ingenieria-software`; mantener modalidades ANALIZAR/PLANIFICAR/IMPLEMENTAR/VERIFICAR, selección progresiva del README/base/módulo/checklist y cierre basado en evidencia. Sustituir listas técnicas repetidas por referencias a archivos reales del dominio. El prompt del agente debe invocar `$ingenieria-software`.
- **Dependencias/precondiciones:** ninguna; comparar antes el contenido actual para no perder A01–A03.
- **Validación:** inspección de frontmatter, `agents/openai.yaml`, rutas referidas, búsqueda de reglas duplicadas y `git diff --check`.
- **Aceptación:** nombre, prompt y directorio coinciden; los cuatro modos y las salvaguardas de autorización siguen presentes; el adaptador identifica la fuente rectora y no introduce criterios técnicos nuevos.
- **Rollback/riesgo:** restaurar paquete anterior desde Git; riesgo de omitir una salvaguarda al reducir texto.

### IS-02 — Adaptador de auditoría

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** mantener una segunda skill útil sin reproducir el checklist técnico.
- **Archivos/rutas:** futuro `examples/auditoria-software/SKILL.md` y `agents/openai.yaml`; contenido vigente de `examples/revisar-codigo-dev/` como insumo preservado.
- **Cambio concreto:** crear el paquete con `name: auditoria-software`; describir auditoría de código, scripts, configuración y pipelines, reporte de hallazgos por severidad/evidencia, preguntas y pruebas faltantes. Enrutar a README, base, módulo pertinente y `checklist_codigo_dev.md` del dominio; indicar solo lectura por defecto y separación entre auditoría y corrección. Corregir el prompt a `$auditoria-software`.
- **Dependencias/precondiciones:** IS-01 para concordar la frontera entre las dos skills.
- **Validación:** inspección de frontmatter y prompt, revisión de cobertura frente al checklist rector, búsqueda de nombre inexistente y `git diff --check`.
- **Aceptación:** la auditoría produce hallazgos priorizados y trazables; no activa implementación implícita; no mantiene una segunda copia de la pauta técnica.
- **Rollback/riesgo:** restaurar paquete anterior desde Git; riesgo de perder cobertura si se elimina una regla que no existe en el dominio, por lo que debe comprobarse punto por punto antes de recortar.

### IS-03 — Distribución y referencias del repositorio

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** evitar que los ejemplos documenten nombres incompatibles con los paquetes nuevos.
- **Archivos/rutas:** `examples/gen-ia-codex/{usar-reglas-dev,revisar-codigo-dev}/SKILL.md` y sus `agents/openai.yaml`, `examples/README.md`; paquetes antiguos de primer nivel tras IS-01/02.
- **Cambio concreto:** documentar un único par canónico de paquetes nuevos en `examples/README.md`. Actualizar las variantes `gen-ia-codex` para que remitan de modo explícito a esos paquetes o, si siguen distribuyéndose, sincronizar nombre, prompt y routing; no dejar dos variantes activas divergentes. Mantener los paquetes antiguos como compatibilidad temporal hasta IS-06, sin borrarlos en este paso.
- **Dependencias/precondiciones:** IS-01 e IS-02 terminadas; verificar consumidores de `examples/gen-ia-codex` antes de elegir referencia frente a copia sincronizada.
- **Validación:** `rg -n 'usar-reglas-dev|revisar-codigo-dev|checklist-codigo-dev' examples` y comprobación de cada uso restante como legado documentado; `git diff --check`.
- **Aceptación:** un lector del README identifica los paquetes canónicos y no instala accidentalmente una variante desactualizada; todas las variantes activas tienen nombre y prompt coherentes.
- **Rollback/riesgo:** restaurar solo los ejemplos editados; riesgo de romper integraciones que usen rutas de ejemplo antiguas.

### IS-04 — Activación global y coordinación

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** activar ambos nombres globales y actualizar el disparador de ingeniería.
- **Archivos/rutas:** futuros `~/.codex/skills/{ingenieria-software,auditoria-software}/`; `~/.codex/AGENTS.md`.
- **Cambio concreto:** después de validar IS-01–03, instalar los paquetes globales desde las fuentes canónicas con respaldos verificables; reemplazar solo las cuatro referencias de `usar-reglas-dev` en AGENTS global por `ingenieria-software`. Mantener intacta la coordinación con `planificar-cambios` y conservar las skills antiguas durante compatibilidad. La carga y activación funcional se verifica en IS-05.
- **Dependencias/precondiciones:** IS-01–03 aceptadas; autorización explícita de implementación y permiso de escritura global; snapshot/backup y comprobación de que las rutas destino no contienen trabajo ajeno. Satisfechas en esta ejecución.
- **Validación:** inspección de `name`, prompts y referencias; comparación SHA-256 de fuentes, instalaciones y respaldos; comprobación de que AGENTS global contiene las referencias nuevas y conserva `planificar-cambios`; verificación de que las skills antiguas siguen instaladas. La disponibilidad de un listado de skills se puede consultar sin activar una tarea; la carga y selección funcional quedan para IS-05.
- **Aceptación:** las instalaciones coinciden por hash con los paquetes canónicos; AGENTS global usa `ingenieria-software`, conserva `planificar-cambios` y las skills antiguas siguen presentes. IS-04 no declara activación funcional; su reconocimiento en tareas reales corresponde a IS-05.
- **Rollback/riesgo:** revertir AGENTS global y desactivar copias nuevas, restaurando paquetes originales desde respaldo; riesgo de interrupción por permisos, caché o referencias externas.
- **Observación de referencia:** `../../skills/ingenieria-software/README.md` no resuelve desde el directorio global instalado. El adaptador indica buscar el dominio en el proyecto/contexto; esa ruta fuente existe en este repositorio. Confirmar esta selección en IS-05.

### IS-05 — Verificación funcional y precedencia local

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** demostrar que la migración funciona en tareas reales antes de retirar alias.
- **Archivos/rutas:** sesiones efímeras sin escritura en proyectos; evidencia inicial y consolidada documentada en este plan y en eventos append-only de `logs/planificacion.jsonl`.
- **Cambio concreto:** probar en sesiones nuevas (a) consulta breve de implementación que seleccione `ingenieria-software` y cargue solo base + módulo pertinente; (b) auditoría de parche que seleccione `auditoria-software`, priorice hallazgos y no edite; (c) solicitud de planificación que active `planificar-cambios` y preserve modo solo plan; (d) tarea en `mgtr-ti-tesis-fase-1` que aplique su AGENTS raíz/subordinado y contratos locales sin sustituirlos por defaults globales; (e) tarea técnica desde un directorio ajeno a este repositorio y al proyecto de tesis para comprobar portabilidad del enrutamiento sin proporcionar manualmente la ruta rectora. Registrar prompts, archivos realmente cargados y resultados observados; separar señales runtime de declaraciones del modelo y no atribuir ahorro de tokens sin medición.
- **Dependencias/precondiciones:** IS-04 aceptada y entorno de prueba disponible; tareas/fixtures sin datos sensibles.
- **Validación:** revisión manual de salidas y trazabilidad de instrucciones, junto con búsquedas estáticas de nombres y referencias.
- **Aceptación:** T01–T05 aprobadas en sesiones nuevas y solo lectura. Se distinguen las lecturas observadas de skills del hecho de que el CLI no expone un evento autoritativo de selección automática. En T05 se encontró el dominio desde un directorio externo, con la limitación de que la memoria global no se aisló.
- **Rollback/riesgo:** restaurar el estado global anterior; riesgo de que una prueba estática o una sesión con caché oculte fallas de activación.

### IS-06 — Retiro controlado de nombres antiguos

- **Prioridad/estado:** P1 / DONE.
- **Objetivo/justificación:** completar el renombrado sin dejar rutas ambiguas.
- **Archivos/rutas:** `~/.codex/skills/{usar-reglas-dev,revisar-codigo-dev}/`; `examples/{usar-reglas-dev,revisar-codigo-dev}/`; referencias activas comprobadas en AGENTS, prompts y ejemplos.
- **Cambio concreto:** inventariar consumidores externos y referencias activas, acordar ventana de compatibilidad, verificar IS-05 en sesiones nuevas y retirar las instalaciones antiguas y, solo cuando corresponda, los paquetes antiguos de distribución. Archivar respaldo fuera de las rutas activas de skills; no eliminar material histórico ni nombres usados por consumidores sin decisión explícita.
- **Dependencias/precondiciones:** IS-05 aprobada (**DONE**); análisis IS-06A revisado; autorización explícita para retirar los cuatro directorios concedida. Se revisaron las superficies locales accesibles; no es posible demostrar ausencia de consumidores externos no observables. La lectura heredada de T05 se resolvió retirando el paquete y comprobando la auditoría canónica en una sesión nueva.
- **Validación:** búsqueda completa de nombres antiguos en superficies activas, comprobación de descubrimiento de nuevos nombres y ausencia de activación de los viejos; `git diff --check` para cambios rastreados.
- **Aceptación:** no queda referencia activa sin destino resuelto; nombres nuevos funcionan; respaldos y procedimiento de reversión probados; consumidores conocidos migrados o retenidos bajo compatibilidad documentada.
- **Rollback/riesgo:** restaurar las cuatro carpetas desde `~/.codex\backups\IS-GLOBAL-20261011\IS-06B-backup-20261011T211024\payload\`, verificar `manifest.json`, reiniciar sesión y repetir pruebas funcionales. La restauración simulada en `rollback-validation/` pasó; persiste riesgo de consumidores externos no observables.

## Comprobaciones transversales y cierre

- Antes de cualquier ejecución: `git status --short` y comparación de hashes de fuente/distribución/instalación; preservar el trabajo previo no relacionado.
- Para cada cambio Markdown/YAML: frontmatter válido, `name` igual al directorio, `default_prompt` con el mismo nombre, UTF-8 sin BOM, LF, newline final, rutas existentes y `git diff --check`.
- La validación estática comprueba referencias y formato. La validación funcional requiere las cinco tareas de IS-05 aprobadas con resultados observados; la selección automática se informa solo hasta donde la expone la traza del CLI.
- Migración completa solo si IS-01–06 están aceptadas, ambos nombres nuevos funcionan en una sesión limpia, AGENTS global no apunta a un nombre retirado, los consumidores conocidos fueron atendidos, las reglas de tesis conservan precedencia y existe rollback verificable.
- Si el usuario decide mantener compatibilidad indefinida, IS-06 se sustituirá por una decisión documentada; no declarar «retiro completado».

## Pendientes y riesgos

El árbol de trabajo contiene numerosos cambios previos, incluidos archivos del dominio; se conservaron. No hay evidencia de todos los posibles consumidores externos de los nombres antiguos, por lo que no se afirma su ausencia absoluta. La escritura global se realizó después de crear y verificar el respaldo. La redundancia interna de `.md` en la instalación antigua se conserva dentro del respaldo para rollback. No se modificaron los AGENTS de tesis ni `planificar-cambios`.

## Registro de ejecución — IS-05 (resultado inicial)

**Fecha:** 2026-10-11 (America/Santiago). Este apartado conserva el diagnóstico inicial, cuando IS-05 quedó BLOCKED por T01–T03 y T05. Se usaron sesiones nuevas `codex exec --ephemeral --json --sandbox read-only`. El CLI no expone un evento autoritativo de selección automática. La traza inicial informó `failed to load skill ... planificar-cambios/SKILL.md: missing YAML frontmatter delimited by ---`; la instalación global y la fuente fueron corregidas/verificadas posteriormente, según las entradas de seguimiento.

| Prueba | Prompt literal | Directorio | Skill/archivos observados | Resultado esperado y observado | Estado |
|---|---|---|---|---|---|
| T01 | “Analiza técnicamente este fragmento Python sin modificar ni ejecutar nada: `def ratio(total, count): return total / count`. Explica supuestos, riesgo, evidencia del código y validaciones pendientes. Indica si consultaste instrucciones técnicas y cuáles.” | `<ruta-local>\gen-ai-skills-root\gen-ai-skills` | La traza registra lectura de `~/.codex\skills\ingenieria-software\SKILL.md`, `skills/ingenieria-software/README.md`, `instrucciones_base_dev.md` y `checklist_codigo_dev.md`. No hay evento explícito de selección; el resultado dice haber usado la skill. | Respuesta estática identificó división por cero y pruebas pendientes, sin editar ni ejecutar. Las reglas pertinentes se leyeron. Selección automática no acreditada independientemente. | NO VERIFICABLE |
| T02 | “Audita en modo estrictamente de solo lectura este fragmento; no lo ejecutes ni modifiques archivos: `def obtener_usuario(conn, user_id):\n    consulta = f\"SELECT * FROM users WHERE id = {user_id}\"\n    return conn.execute(consulta).fetchone()` Prioriza hallazgos, cita evidencia exacta, incertidumbres, pruebas pendientes y recomendación final. Indica los archivos de instrucciones técnicos que realmente consultaste.” | `<ruta-local>\gen-ai-skills-root\gen-ai-skills` | La traza registra lectura de la skill global de auditoría/ingeniería y del README, base, checklist, SQL y seguridad del dominio. No hay evento autoritativo de selección; el mensaje “Aplicaré `auditoria-software`” es autodeclaración. | Reportó riesgo de interpolación SQL con evidencia, incertidumbres y pruebas pendientes; no ejecutó el fragmento ni modificó archivos. Activación no acreditada independientemente. | NO VERIFICABLE |
| T03 | “Quiero planificar una modificación hipotética de un CLI: agregar una opción --version que muestre la versión y termine. No implementes ni guardes archivos; responde en pantalla con análisis breve, acciones atómicas y pruebas. Explica qué instrucciones gobiernan la planificación y si hay algún conflicto entre planificación y reglas técnicas.” | `<ruta-local>\gen-ai-skills-root\gen-ai-skills` | Runtime reporta explícitamente que `planificar-cambios/SKILL.md` no pudo cargarse por falta de frontmatter delimitado por `---`; comandos consultaron archivos de ingeniería y el AGENTS global. | Produjo un plan solo en respuesta y no modificó archivos, pero la skill que debía gobernar la planificación no se cargó. | FALLIDA |
| T04 | “En este proyecto, realiza una tarea estrictamente de solo lectura: identifica qué contratos e instrucciones prevalecen para revisar documentación dentro de revisar-docs. No edites ni ejecutes scripts. Cita los AGENTS y documentos que efectivamente consultes, y distingue reglas raíz de reglas subordinadas.” | `<ruta-local>\mgtr-ti-tesis-fase-1` (reintento con `--skip-git-repo-check`; primer intento se detuvo por directorio no confiable) | La traza registra lectura del AGENTS raíz y subordinado `revisar-docs/AGENTS.md`, además de contratos y documentos del componente. | Identificó precedencia raíz/subordinado y límites documentales; afirmó y la traza no muestra edición ni ejecución de scripts. Se preservó solo lectura. | APROBADA |
| T05 | “Analiza técnicamente este fragmento Python sin modificar ni ejecutar nada: `def ratio(total, count): return total / count`. Indica evidencia, supuestos, riesgos y validaciones pendientes, así como las reglas técnicas consultadas. No enumeres archivos ni proporciones rutas del dominio.” | `<ruta-local>` (`--skip-git-repo-check`) | La traza muestra que encontró y leyó base, pruebas/calidad y checklist del dominio rector fuera de su directorio; el descubrimiento usó contexto/memoria global y no una ruta dada por el prompt. No hay evento autoritativo de selección de la skill. | El enrutamiento localizó reglas sin ruta proporcionada y respondió sin modificaciones. No se aisló si la portabilidad depende de la memoria disponible y la selección automática no es observable. | NO VERIFICABLE |

**Limitaciones y diagnóstico:** la comprobación de activación de T01/T02/T05 no puede cerrarse con los eventos expuestos por el CLI. T03 sí reveló un problema de carga de `planificar-cambios` que impide satisfacer su criterio obligatorio. T04 es una comprobación de precedencia de instrucciones, no evidencia de activación de la skill global. No se modificaron skills, AGENTS globales/locales, código, paquetes ni instalaciones. La sesión inicial fallida de T01 (sin escalación) y el primer intento de T04 (directorio no confiable) no produjeron prueba funcional; se registraron los reintentos exitosos. No se ejecutaron pruebas de código.

**Diagnóstico/propuestas iniciales (histórico al 2026-10-11T20:45-03:00):** se propuso corregir el frontmatter de `planificar-cambios`, repetir pruebas y buscar telemetría. La corrección del frontmatter y las verificaciones posteriores quedaron registradas en el seguimiento de C02–C04. El CLI sigue sin exponer un evento independiente de selección; las pruebas aprobadas se sustentan en lecturas observadas de archivos de skill y reglas, no en una señal de telemetría inexistente. IS-06 continúa pendiente de autorización y precondiciones propias.

## Cierre consolidado — IS-05 (C02–C04)

**Fecha:** 2026-10-11 (America/Santiago). **Estado final:** DONE. Los resultados iniciales anteriores se conservan como historial; esta matriz registra los resultados definitivos posteriores. Las pruebas C03/C04 fueron implícitas (sin `$skill` en el prompt) salvo C02/T03, que invocó explícitamente `$planificar-cambios`. El CLI expone comandos de lectura de archivos, pero no una señal independiente de selección automática; por ello no se equipara la respuesta del agente con dicha señal.

| Prueba | Sesión/directorio e invocación | Lecturas observadas y alcance de AGENTS | Resultado funcional | Selección automática y limitaciones | Estado |
|---|---|---|---|---|---|
| T01 | C03, sesión `<id-sesion-omitido>`; `<ruta-local>\gen-ai-skills-root\gen-ai-skills`. Prompt implícito: análisis estático de `def ratio(total, count): return total / count`. | Se leyó la skill global `ingenieria-software/SKILL.md` y los archivos rectores `README.md`, `instrucciones_base_dev.md`, `pruebas_calidad_reglas.md` y `checklist_codigo_dev.md`. AGENTS global y del repositorio son aplicables por ubicación; la traza no presenta evento individual de lectura. | Identificó división por cero, supuestos y validaciones pendientes; no ejecutó ni modificó archivos. | La lectura del SKILL y del dominio está en la traza bajo prompt implícito. No existe evento dedicado de selección automática. | APROBADA |
| T02 | C03, sesión `<id-sesion-omitido>`; mismo directorio. Prompt implícito: auditoría de solo lectura de una consulta SQL interpolada. | Se observaron lecturas de `auditoria-software/SKILL.md` e `ingenieria-software/SKILL.md`, además de exploración/lectura de reglas rectoras. La respuesta enumera README, base, checklist, SQL y seguridad; la salida de algunos eventos quedó truncada, por lo que no se atribuye telemetría individual a cada archivo. AGENTS global y del repositorio aplican por ubicación; su lectura separada no se expone. | Reportó riesgo de inyección con evidencia, incertidumbres, validación pendiente y recomendación; no ejecutó código ni modificó archivos. | Lectura de las dos skills globales observada; no hay evento independiente de selección automática. | APROBADA |
| T03 | C02, sesión `<id-sesion-omitido>`; `<ruta-local>\gen-ai-skills-root\gen-ai-skills`. Prompt explícito con `$planificar-cambios`, plan para opción `--limite` y prohibición de persistencia. | Se leyó la instalación global `planificar-cambios/SKILL.md`; frontmatter reconocido. AGENTS global y del repositorio aplican por ubicación. | Generó en respuesta diagnóstico, supuestos, alcance, acciones priorizadas con estados/dependencias, validaciones, aceptación y trazabilidad. No implementó ni persistió artefactos. Indicó que la skill contempla persistencia, impedida por el modo read-only solicitado. | Invocación explícita; lectura global observada. No se repitió en C03/C04. | APROBADA |
| T04 | Verificación previa en `<ruta-local>\mgtr-ti-tesis-fase-1`, con reintento `--skip-git-repo-check`. | Se observaron AGENTS raíz y `revisar-docs/AGENTS.md`, junto con contratos locales pertinentes. | Precedencia local identificada; sin edición ni ejecución de scripts. | La evidencia de precedencia no se usa como señal de selección de una skill. | APROBADA |
| T05 | C04, sesión `<id-sesion-omitido>`; `<ruta-local>`. Prompt implícito de análisis de `ratio`; no proporcionó rutas del dominio. | Se leyó `ingenieria-software/SKILL.md` y se buscaron rutas candidatas; se encontró el dominio rector y se leyeron README, base y checklist desde fuera del repositorio. También se leyó la skill global heredada `revisar-codigo-dev`. Solo AGENTS global aplica por ubicación; no existía `<ruta-local> ni `<ruta-local>\AGENTS.md`. | Localizó y aplicó reglas técnicas sin ejecutar el fragmento ni modificar archivos. | Localización efectiva desde directorio externo, pero no se aisló la memoria global. La lectura adicional de `revisar-codigo-dev` muestra que el nombre antiguo todavía puede intervenir. Sin evento separado de selección automática. | APROBADA |

**Lectura de activación:** T01, T02 y T05 fueron implícitas y sus trazas muestran lecturas de los archivos de skill correspondientes; T03 fue explícita en C02. El CLI no entrega telemetría autoritativa de la decisión de selección. Los AGENTS aplicables se determinan por directorio; salvo T04, la traza no permite afirmar que cada AGENTS se leyera mediante un comando separado.

**Evaluación de IS-06 previa a IS-06B (histórica):** IS-05 ya estaba DONE. El análisis dejó sin resolver consumidores externos no observables y la decisión de retiro; T05 también mostró lectura de `revisar-codigo-dev`. La autorización y la decisión explícita de retiro llegaron posteriormente y se registran a continuación.

## Registro de ejecución — IS-06B

**Fecha:** 2026-10-11 (America/Santiago). **Estado:** DONE, con riesgo residual de consumidores externos no observables.

- Se eliminaron exclusivamente `~/.codex\skills\revisar-codigo-dev\`, `~/.codex\skills\usar-reglas-dev\`, `examples\revisar-codigo-dev\` y `examples\usar-reglas-dev\`. Los alias `examples/gen-ia-codex/{revisar-codigo-dev,usar-reglas-dev}` ya estaban ausentes al inicio por cambios previos del árbol; no se modificaron en esta acción.
- Se actualizó `examples/README.md` para identificar solo `ingenieria-software` y `auditoria-software` como paquetes canónicos y dejar de presentar compatibilidad heredada como disponible. No se alteraron las skills canónicas, el dominio rector ni los AGENTS.
- El respaldo `~/.codex\backups\IS-GLOBAL-20261011\IS-06B-backup-20261011T211024\manifest.json` contiene 9 archivos con SHA-256 verificados. Una restauración simulada en `rollback-validation/` reprodujo los 9 hashes.
- Las instalaciones globales de `ingenieria-software` y `auditoria-software` coinciden por SHA-256 con sus paquetes `examples/`; sus frontmatter, nombres, prompts, UTF-8 sin BOM y LF se verificaron. PyYAML no estaba disponible (`ModuleNotFoundError`); no se instaló ni buscó otro parser.
- `~/.codex\AGENTS.md` no contiene referencias heredadas. La búsqueda actual del repositorio solo conserva nombres antiguos en este plan y `logs/planificacion.jsonl`, como historial. El análisis IS-06A había localizado una mención adicional en un plan archivado de tesis; es histórica.
- **T01 explícita:** sesión efímera `<id-sesion-omitido>`, con `codex exec --ephemeral --json --sandbox read-only`; leyó la skill global `ingenieria-software` y `README.md`, base, pruebas/calidad y checklist del dominio. Analizó división por cero sin ejecución ni cambios. **APROBADA.**
- **T01 implícita posterior al retiro:** sesión `<id-sesion-omitido>`; no leyó archivos de skill y respondió solo con el fragmento. No prueba activación automática; no se observó lectura de los nombres retirados. Se conserva como limitación de selección implícita.
- **T02 explícita:** sesión `<id-sesion-omitido>`; leyó `auditoria-software/SKILL.md`, `ingenieria-software/SKILL.md` y las reglas rectoras README, base, checklist, SQL y seguridad. Reportó hallazgos priorizados con evidencia, incertidumbres, pruebas pendientes y recomendación; no ejecutó ni modificó. **APROBADA.**
- **T03 explícita:** sesión `<id-sesion-omitido>`; `$planificar-cambios` produjo diagnóstico, supuestos, acciones priorizadas, dependencias, validación y aceptación en la respuesta sin persistir artefactos. No se observó lectura de `ingenieria-software` en esta sesión; no hubo conflicto funcional con la planificación. **APROBADA.**
- `git diff --check` pasó. Una primera invocación T01 con sandbox de red restringida no logró conectarse; se repitió con sesión efímera read-only y acceso de red autorizado, y terminó correctamente. El CLI no expone telemetría independiente de selección automática. La búsqueda accesible no sustituye un inventario completo de consumidores externos.
