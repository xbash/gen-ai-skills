---
name: consolidar-sesion-proyecto
description: "Consolida el estado operativo de una sesión de trabajo en docs/CONTEXT.md, docs/DECISIONS.md y docs/HANDOFF.md para permitir continuidad posterior sin depender de la conversación previa. Usar antes de interrumpir, reiniciar, transferir o cerrar una sesión de trabajo."
---

# Consolidar sesión de proyecto

## Objetivo

Consolidar el estado operativo vigente del proyecto antes de interrumpir, reiniciar, transferir o cerrar una sesión de trabajo.

La consolidación debe permitir que una nueva sesión, agente o modelo pueda continuar correctamente sin depender de la conversación anterior y sin reconstruir contexto mediante suposiciones.

Esta skill puede utilizarse cuando:

- el contexto o los tokens disponibles estén próximos a agotarse;
- se vaya a iniciar una nueva sesión;
- se cambie de agente o modelo;
- se transfiera el trabajo a otro entorno;
- se realice una pausa;
- se cierre VS Code, Codex, terminales o navegador;
- finalice la jornada de trabajo.

El resultado debe ser el mismo independientemente de cuánto tiempo transcurra antes de retomar el proyecto.

## Principios

1. Priorizar continuidad operativa por sobre historia de la sesión.
2. Registrar únicamente información que afecte trabajo futuro.
3. Basarse en evidencia verificable del proyecto y de la sesión.
4. No reconstruir hechos desde memoria si existe evidencia local.
5. Mantener un único estado canónico y vigente.
6. Eliminar redundancias y contenido obsoleto.
7. No crear archivos auxiliares, históricos o temporales innecesarios.
8. Los artefactos de continuidad representan estado, no una bitácora histórica.

## Artefactos obligatorios

Toda ejecución debe crear o actualizar exclusivamente los siguientes artefactos de continuidad:

```text
docs/
├── CONTEXT.md
├── DECISIONS.md
└── HANDOFF.md
```

Los artefactos se crean si faltan y se actualizan si existen. No se crean otros archivos (resúmenes, bitácoras, copias, notas temporales).

## Contenido de cada artefacto

### `docs/CONTEXT.md` — qué es el proyecto y en qué punto está

- Objetivo, alcance y componentes vigentes; estructura relevante del proyecto.
- Estado técnico actual: qué existe y funciona, con la evidencia que lo respalda (archivos, pruebas, resultados).
- Límites y restricciones permanentes que condicionan el trabajo.
- No contiene tareas pendientes ni historial de la sesión.

### `docs/DECISIONS.md` — qué quedó decidido

- Una entrada por decisión, con identificador estable y correlativo (sin reutilizar ni renumerar), estado (por ejemplo, aprobada, propuesta, reemplazada), fecha, quién la aprobó, motivo y alcance.
- Sólo se registran decisiones **aprobadas por quien corresponde**. Una propuesta o una suposición se anota como tal, o no se anota; nunca como decisión vigente.
- Una decisión que reemplaza a otra la referencia y marca a la anterior como reemplazada, sin borrarla.
- No se registran detalles de implementación que el código o los documentos ya reflejan.

### `docs/HANDOFF.md` — cómo retomar

- Estado verificable al cierre: último hito alcanzado y la evidencia que lo sustenta.
- Ruta de lectura mínima para retomar (qué documentos leer y en qué orden).
- Próxima acción: una lista corta, priorizada y ejecutable, con dependencias y criterio de cierre cuando existan.
- Riesgos, bloqueos y discrepancias abiertas; qué falta verificar.
- Pendientes de decisión de quien dirige el proyecto, separados de las tareas de ejecución.
- Debe poder leerse sola: quien retoma no necesita la conversación anterior.

## Procedimiento

1. **Ubicar el proyecto.** Determinar la raíz, leer las instrucciones vigentes del proyecto (por ejemplo `AGENTS.md` o `CLAUDE.md`) y los tres artefactos actuales, si existen.
2. **Reunir evidencia.** Revisar el estado real: archivos creados o modificados durante la sesión, resultados de pruebas o ejecuciones, estado de Git si existe. Ejecutar sólo lo necesario y sin efectos secundarios; si se corren pruebas, informar el resultado exacto.
3. **Clasificar lo ocurrido** en: decisión aprobada, propuesta sin aprobar, cambio realizado, resultado verificado, hecho observado y afirmación no verificada. Sólo lo que afecta el trabajo futuro pasa a los artefactos.
4. **Actualizar los tres artefactos** con las reglas de la sección siguiente.
5. **Revisar coherencia.** Comprobar que cifras, nombres de archivos y referencias cruzadas coinciden entre los tres artefactos y con la evidencia; corregir las discrepancias o dejarlas declaradas como pendientes.
6. **Informar** con el formato de la sección «Salida».

## Reglas de edición

- Un solo estado vigente: se **reemplaza** lo obsoleto, no se acumula «actualización del día X» encima de lo anterior.
- Lo que se resuelve sale de «pendientes»; lo que deja de ser cierto se corrige o se elimina.
- Lo que no se puede comprobar se rotula «no verificado» o «por confirmar»; no se completa con suposiciones.
- Cada cifra o afirmación de estado cita, cuando es posible, el archivo o la ejecución que la respalda.
- Se conservan los identificadores existentes (decisiones, tareas, riesgos) tal como figuran en el proyecto.
- Se respeta el formato y el estilo de los artefactos existentes; se modifican sólo las secciones afectadas.
- Se distingue lo confirmado de lo simulado, provisional o propuesto.
- No se registran secretos, credenciales, datos personales ni textos extensos copiados de documentos.

## Restricciones

- Se escriben **solamente** `docs/CONTEXT.md`, `docs/DECISIONS.md` y `docs/HANDOFF.md`.
- No se implementan cambios del proyecto durante la consolidación (código, datos, configuración).
- No se hacen commits, envíos ni borrados; no se instalan paquetes.
- No se presenta como hecho lo que no se verificó, ni como decisión lo que no se aprobó.
- Si una instrucción del proyecto contradice esta skill, prevalece la del proyecto y la contradicción se declara.
- Si falta un artefacto en `docs/`, se crea; si el proyecto usa otra ubicación para ellos, se usa esa y se indica.

## Salida

Responder, en español y de forma breve, con:

1. Archivos actualizados y un resumen de qué cambió en cada uno.
2. Verificaciones realizadas y su resultado (pruebas, lectura de archivos); lo que no se pudo verificar.
3. Estado resultante en una línea y la próxima acción recomendada.
4. Pendientes de decisión de quien dirige el proyecto.
5. Discrepancias o límites encontrados al consolidar.

## Criterio de finalización

La consolidación está completa cuando una sesión nueva, sin acceso a esta conversación, puede leer los tres artefactos y saber qué se está construyendo, qué está verificado, qué decisiones obligan, qué está pendiente y cuál es el siguiente paso, sin reconstruir nada por suposición; y cuando no queda contenido obsoleto, duplicado ni archivos residuales.
