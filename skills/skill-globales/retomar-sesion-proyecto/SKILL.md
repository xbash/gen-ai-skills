---
name: retomar-sesion-proyecto
description: Recupera y verifica el contexto operativo vigente de un proyecto al iniciar o retomar una sesión con cualquier agente de IA. Lee las instrucciones del proyecto, documentos de continuidad, planes y estado del repositorio; identifica decisiones, pendientes, bloqueos y la próxima acción sin modificar archivos.
---

# Retomar sesión de proyecto

## Objetivo

Reconstruir, desde evidencia verificable, el estado operativo necesario para continuar un proyecto con cualquier agente de IA en VS Code, terminal u otro entorno compatible. Ejecutar únicamente lectura e inspección; no iniciar implementación sin autorización posterior.

## Activación y alcance

Aplicar cuando se solicite iniciar, reanudar, recuperar contexto o preparar la continuación de una sesión. Trabajar sobre el workspace activo; si contiene varios proyectos, delimitar el proyecto pertinente a partir de la solicitud y la estructura visible. No asumir rutas absolutas ni que todos los proyectos tienen los mismos documentos.

## Procedimiento

### 1. Identificar el proyecto y sus instrucciones

1. Determinar la raíz del proyecto o subproyecto de trabajo.
2. Leer las instrucciones `AGENTS.md` aplicables, globales y locales, siguiendo su alcance y precedencia. Si existen archivos de instrucciones propios de cada herramienta, leerlos también y señalar si contradicen a `AGENTS.md`; no asumir cuál prevalece. No interpretar un documento de continuidad como autorización para contrariar esas instrucciones.
3. Identificar nombre, objetivo, componentes relevantes y situación de Git, si existe.

### 2. Recuperar documentación de continuidad

Localizar y leer, cuando existan, en este orden funcional:

- `docs/DECISIONS.md`: acuerdos, restricciones y decisiones aprobadas.
- `docs/HANDOFF.md`: punto de interrupción, pendientes y bloqueos.
- `docs/CONTEXT.md`: descripción y estado técnico vigente.
- `docs/PLAN.md`: acciones, dependencias y criterios de verificación.
- `README.md`: alcance, estructura y operación del proyecto.
- `CHANGELOG.md`: cambios registrados más recientes.

Registrar cuáles de estos documentos están presentes y cuáles ausentes. Si faltan los de continuidad (`DECISIONS.md`, `HANDOFF.md`, `CONTEXT.md`), no reconstruir el contexto por suposición: informarlo y recomendar como próxima acción ejecutar `consolidar-sesion-proyecto`.

Buscar ubicaciones alternativas razonables si esos archivos no están en `docs/`. Para un subproyecto, considerar tanto la continuidad de la raíz como su documentación específica. Leer otros archivos solo cuando sean necesarios para verificar el trabajo inmediato o resolver contradicciones. Evitar búsquedas extensivas e indiscriminadas.

### 3. Contrastar con evidencia actual

1. Inspeccionar solo lo necesario del árbol de archivos y del estado de Git (`git status`, historial pertinente, diferencias sin modificar), si está disponible.
2. Distinguir entre **decisión aprobada**, **tarea planificada**, **cambio presente**, **resultado validado** y **afirmación no verificada**.
3. No declarar concluida una tarea por figurar en un plan o un resumen; identificar evidencias como archivos, cambios, pruebas o registros existentes.
4. Detectar contradicciones entre documentos y estado observado. Tratar la documentación como declaración de intención o historial, y el repositorio como evidencia de implementación; ninguno sustituye por sí solo una validación ausente.
5. Comparar la fecha de `HANDOFF.md` y `CONTEXT.md` (declarada en el documento o, si falta, la de modificación del archivo) con el historial de Git o con los cambios más recientes del árbol. Si el trabajo es posterior al documento, marcarlo como posiblemente desactualizado y `NO_VERIFICADO`.
6. Ante una contradicción entre documentos, no establecer una jerarquía inventada: reportar ambas fuentes con su fecha y declarar la discrepancia como pendiente de decisión de quien dirige el proyecto.
7. Si no hay Git, faltan archivos, o el workspace está inaccesible, indicar la limitación y trabajar solo con lo observable.

### 4. Preparar la continuación

Identificar el último hito verificable, las decisiones aún aplicables, las tareas abiertas ordenadas por prioridad y dependencia, riesgos o bloqueos y una única próxima acción acotada y verificable. Cuando existan identificadores de tareas, conservarlos literalmente. Proponer modelo y esfuerzo de razonamiento adecuados a la complejidad y al costo, sin presentar esa sugerencia como configuración aplicada.

## Salida obligatoria

Entregar en español, de forma breve y estructurada:

1. **Proyecto:** nombre, alcance y raíz examinada.
2. **Estado actual:** último avance verificable y evidencia que lo sustenta. Incluir los documentos de continuidad presentes, ausentes y posiblemente desactualizados.
3. **Decisiones vigentes:** solo las relevantes para continuar.
4. **Pendientes priorizados:** identificadores, dependencias y criterios de cierre cuando consten.
5. **Riesgos, bloqueos o discrepancias:** indicar qué falta verificar.
6. **Próxima acción recomendada:** una tarea concreta y acotada.
7. **Modelo ejecutor sugerido:** modelo y esfuerzo, explicando brevemente el criterio.

Si el contexto no permite recomendar una acción con confianza, explicitar la incertidumbre y la verificación mínima necesaria. Finalizar sin iniciar la acción recomendada.

## Restricciones

- Solo lectura: no crear, modificar, mover o eliminar archivos; no instalar paquetes ni alterar configuración, índices o ramas de Git.
- No ejecutar pruebas, builds ni programas del proyecto que puedan producir efectos secundarios. Permitir únicamente comandos de inspección que no modifiquen el proyecto.
- No actualizar `CONTEXT.md`, `DECISIONS.md` ni `HANDOFF.md`: esa responsabilidad pertenece al cierre o consolidación de sesión.
- No asumir decisiones, resultados, fechas, versiones ni pruebas inexistentes.
- No divulgar secretos ni reproducir credenciales detectadas durante la inspección.
- Respetar las instrucciones de seguridad y el alcance de `AGENTS.md`.
- Esperar autorización explícita antes de ejecutar cambios.

## Criterio de finalización

La sesión queda contextualizada cuando se puede describir qué se está construyendo, qué está efectivamente verificado, qué decisiones obligan, qué está pendiente y cuál es el siguiente paso sin requerir reconstrucciones especulativas.
