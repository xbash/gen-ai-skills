# Objetivo

Consolida el estado operativo vigente de esta sesión dentro del proyecto actual de ChatGPT para poder continuar posteriormente en otra conversación, agente, modelo o entorno sin depender del historial completo de esta conversación.

Genera exclusivamente tres archivos descargables:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`

Estos archivos serán descargados y posteriormente copiados al directorio `docs/` de mi proyecto local.

# IMPORTANTE — forma de entrega

NO muestres en la conversación el contenido completo de los tres archivos.

NO presentes su contenido como bloques Markdown.

NO reproduzcas el análisis utilizado para consolidar la sesión.

NO presentes borradores para revisión.

NO expliques detalladamente el proceso realizado.

Debes crear físicamente los tres archivos `.md` y adjuntarlos como archivos descargables en tu respuesta.

La respuesta visible en el chat debe ser mínima.

Después de generar los archivos, responde únicamente:

`Consolidación completada.`

y proporciona los enlaces o controles de descarga correspondientes a:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`

# Fuentes de información

Utiliza como evidencia, cuando estén disponibles:

1. la conversación actual;
2. conversaciones y contexto accesibles dentro de este Project de ChatGPT;
3. archivos adjuntos o incorporados al proyecto;
4. archivos adjuntos específicamente a esta conversación;
5. decisiones, restricciones y resultados establecidos explícitamente;
6. información técnica vigente disponible en el contexto del proyecto.

Prioriza evidencia documental y estado vigente por sobre recuerdos o inferencias.

No inventes:

- archivos;
- modificaciones locales;
- comandos ejecutados;
- resultados de pruebas;
- decisiones;
- métricas;
- verificaciones;
- estados de implementación.

Si una información relevante no puede determinarse con suficiente certeza, utiliza:

`pendiente-de-verificacion`

# Limitaciones del entorno

No asumas acceso al estado actual de:

- mi sistema de archivos local;
- Git local;
- VS Code;
- Codex CLI;
- terminales locales;
- procesos ejecutándose en mi computador;
- archivos locales que no estén disponibles dentro del proyecto o de la conversación.

Si la continuidad depende de alguno de esos elementos y no existe evidencia suficiente, marca la información como:

`pendiente-de-verificacion`

# Principios de consolidación

Prioriza información:

- vigente;
- accionable;
- necesaria para continuar;
- relevante para decisiones futuras.

Elimina:

- redundancias;
- historia conversacional innecesaria;
- explicaciones repetidas;
- alternativas descartadas sin impacto futuro;
- razonamientos ya resueltos;
- detalles circunstanciales;
- información que pueda recuperarse fácilmente desde otras fuentes canónicas;
- información que no afecte la continuidad.

Los archivos deben representar el estado operativo actual del proyecto, no una bitácora histórica.

# Regla de no duplicación

Cada información debe tener un destino canónico:

- `CONTEXT.md`: contexto estable y estado general del proyecto;
- `DECISIONS.md`: decisiones vigentes;
- `HANDOFF.md`: punto operativo exacto desde el cual continuar.

Evita repetir la misma información en varios archivos.

Cuando corresponda, referencia una decisión desde `HANDOFF.md` en vez de duplicarla.

# CONTEXT.md

Debe permitir comprender el proyecto y su estado general sin consultar esta conversación.

Debe contener:

# Contexto del proyecto

## Objetivo

## Estado actual

## Arquitectura o estructura relevante

## Stack y herramientas

## Restricciones

## Supuestos vigentes

## Referencias técnicas relevantes

Reglas:

- conservar únicamente información vigente;
- evitar cronología de sesiones;
- no convertirlo en documentación exhaustiva;
- incluir rutas, archivos, componentes y herramientas solo cuando sean necesarios para continuar;
- eliminar información obsoleta o redundante.

# DECISIONS.md

Debe contener exclusivamente decisiones vigentes que condicionen trabajo futuro.

Formato recomendado:

## D-001 — <título breve>

**Decisión:**  
<qué se decidió>

**Motivo:**  
<por qué>

**Impacto:**  
<qué condiciona>

**Estado:** vigente

Registrar solo decisiones con impacto futuro, tales como:

- arquitectura;
- estructura del proyecto;
- frameworks;
- estrategia de testing;
- convenciones;
- formatos de datos;
- interfaces;
- persistencia;
- baselines;
- criterios metodológicos;
- restricciones adoptadas.

No registrar:

- ideas exploratorias;
- alternativas descartadas sin efecto futuro;
- decisiones triviales;
- conversaciones históricas;
- detalles que ya no condicionen el trabajo.

# HANDOFF.md

Debe representar el punto exacto desde el cual otra conversación, agente o modelo debe continuar.

Debe contener:

# Handoff

## Objetivo activo

## Estado inmediato

## Trabajo completado relevante

## Trabajo parcialmente completado

## Archivos o componentes relevantes

## Verificaciones realizadas

## Bloqueos o riesgos actuales

## Próxima acción inmediata

## Pasos siguientes

1.
2.
3.

## Acción inicial recomendada

`HANDOFF.md` debe responder principalmente:

> ¿Qué necesita saber un agente nuevo para continuar correctamente ahora?

Cuando exista evidencia suficiente, la sección `Acción inicial recomendada` debe indicar concretamente:

- archivo que debe revisarse;
- comando que debe ejecutarse;
- verificación que debe realizarse;
- tarea específica que debe continuar.

Si no existe evidencia suficiente, utilizar:

`pendiente-de-verificacion`

# Regla de compresión semántica

Antes de conservar cualquier información, evalúa:

> ¿Esta información afecta una decisión, implementación, restricción, validación, riesgo, bloqueo o próxima acción?

Si la respuesta es no, elimínala.

No conserves información solo porque apareció en la conversación.

# Aprovechamiento del contexto del Project

Como esta conversación forma parte de un Project de ChatGPT:

- aprovecha información relevante disponible dentro del proyecto;
- prioriza las decisiones y estados más recientes;
- evita repetir información histórica ya superada;
- no incorpores automáticamente todo el conocimiento del proyecto;
- incluye únicamente lo necesario para continuar el trabajo actual;
- si existen contradicciones, conserva el estado vigente mejor respaldado por evidencia.

El objetivo no es preservar todo el Project, sino producir un checkpoint mínimo y suficiente para continuidad.

# Criterio de finalización

La consolidación estará completa cuando una nueva sesión, sin revisar el historial completo de esta conversación, pueda:

1. comprender el proyecto mediante `CONTEXT.md`;
2. conocer las decisiones vigentes mediante `DECISIONS.md`;
3. identificar exactamente desde dónde continuar mediante `HANDOFF.md`;
4. distinguir trabajo completado, pendiente y no verificado;
5. continuar sin reconstruir innecesariamente la conversación anterior.

# Salida obligatoria

Crea físicamente y adjunta como archivos descargables:

1. `CONTEXT.md`
2. `DECISIONS.md`
3. `HANDOFF.md`

NO imprimas su contenido en la conversación.

NO muestres bloques Markdown con el contenido de los archivos.

NO reproduzcas un resumen detallado.

NO generes archivos adicionales.

La respuesta visible final debe contener únicamente:

`Consolidación completada.`

seguido de los tres archivos descargables:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`