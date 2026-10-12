# Objetivo

Consolida el estado operativo vigente de esta sesión de trabajo para que pueda continuar posteriormente en otro entorno, agente o modelo sin depender del historial completo de esta conversación.

Genera los artefactos mínimos de continuidad:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`

Estos archivos serán copiados posteriormente al directorio `docs/` del proyecto local.

# Propósito

La consolidación debe servir indistintamente para:

- continuar en una nueva conversación de ChatGPT;
- cambiar de modelo o agente;
- pasar desde ChatGPT web a VS Code + Codex;
- continuar con un LLM local o cloud;
- pausar el trabajo durante minutos, horas o días;
- cerrar la sesión y retomarla posteriormente.

El resultado debe permitir continuar el trabajo sin reconstruir innecesariamente toda la conversación.

# Fuente de información

Usa como evidencia:

1. la conversación actual;
2. archivos adjuntos disponibles en esta conversación;
3. resultados, decisiones, restricciones y verificaciones explícitamente mencionados;
4. información técnica aportada durante esta sesión.

Si existe contradicción entre afirmaciones de la conversación y evidencia contenida en archivos adjuntos, prioriza la evidencia documental más reciente y explícita.

No inventes:

- archivos;
- cambios realizados;
- comandos ejecutados;
- resultados de pruebas;
- decisiones;
- métricas;
- verificaciones;
- estados de implementación.

Si una información relevante no puede determinarse con suficiente certeza, escribe:

`pendiente-de-verificacion`

# Principios de consolidación

Prioriza información accionable y vigente.

No almacenes historia infinita de la conversación.

Elimina:

- redundancias;
- explicaciones repetidas;
- discusiones exploratorias ya resueltas;
- alternativas descartadas sin impacto futuro;
- detalles conversacionales;
- razonamientos que no condicionen trabajo futuro;
- información que no ayude a continuar el proyecto.

Conserva únicamente información que afecte:

- decisiones;
- implementación;
- arquitectura;
- configuración;
- restricciones;
- supuestos;
- validaciones;
- riesgos;
- bloqueos;
- próximos pasos.

Los tres archivos deben representar el estado actual del proyecto, no una bitácora histórica.

# Regla de no duplicación

Cada información debe tener un destino canónico.

Usa:

- `CONTEXT.md` para estado estable del proyecto;
- `DECISIONS.md` para decisiones vigentes;
- `HANDOFF.md` para continuidad operativa inmediata.

Evita repetir la misma información en varios archivos.

Cuando corresponda, referencia una decisión desde `HANDOFF.md` en vez de copiarla completa.

# Archivo 1 — CONTEXT.md

Debe permitir comprender el proyecto y su estado general sin consultar esta conversación.

Usa esta estructura:

```markdown
# Contexto del proyecto

## Objetivo

## Estado actual

## Arquitectura o estructura relevante

## Stack y herramientas

## Restricciones

## Supuestos vigentes

## Referencias técnicas relevantes
```

Criterios:

- mantener solo información vigente;
- evitar cronología de sesiones;
- no documentar exhaustivamente el proyecto;
- incluir rutas, nombres de archivos, componentes o herramientas solo cuando sean relevantes para continuar;
- distinguir claramente hechos de supuestos.

# Archivo 2 — DECISIONS.md

Debe contener exclusivamente decisiones vigentes que condicionen trabajo futuro.

Usa, cuando corresponda, esta estructura:

```markdown
# Decisiones vigentes

## D-001 — <título breve>

**Decisión:**  
<qué se decidió>

**Motivo:**  
<por qué>

**Impacto:**  
<qué condiciona>

**Estado:** vigente
```

Incluye decisiones como:

- arquitectura;
- frameworks;
- convenciones;
- estructura de directorios;
- estrategia de testing;
- formatos de datos;
- interfaces;
- persistencia;
- baselines;
- criterios metodológicos;
- restricciones adoptadas.

No registres:

- ideas exploratorias;
- alternativas descartadas sin efecto;
- decisiones triviales;
- conversaciones que ya no condicionan el proyecto.

Si no existe evidencia suficiente para una decisión, no la inventes.

# Archivo 3 — HANDOFF.md

Debe representar el punto exacto desde el cual puede continuar otra sesión, agente o modelo.

Usa esta estructura:

```markdown
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
```

`HANDOFF.md` no debe ser un resumen narrativo de la conversación.

Debe responder:

> ¿Qué necesita saber un agente nuevo para continuar correctamente ahora?

La sección `Acción inicial recomendada` debe contener, cuando sea posible:

- archivo que debe abrirse;
- comando que debe ejecutarse;
- verificación que debe realizarse;
- tarea concreta con la cual reanudar.

Si no existe evidencia suficiente para indicar un comando o acción específica, usar:

`pendiente-de-verificacion`

# Regla de compresión semántica

Antes de incluir cualquier elemento, evalúa:

> ¿Esta información afecta una decisión, implementación, restricción, validación, riesgo, bloqueo o próxima acción?

Si no, elimínala.

Por ejemplo, preferir:

```text
Cliente HTTP seleccionado: httpx.
Motivo: soporte async requerido.
```

sobre:

```text
Se analizaron requests, aiohttp y httpx antes de decidir.
```

# Información no disponible en ChatGPT web

No asumas acceso a:

- mi sistema de archivos local;
- Git local;
- estado real de VS Code;
- terminales;
- comandos ejecutados fuera de esta conversación;
- archivos que no hayan sido adjuntados o cuyo contenido no haya sido mostrado.

Si alguna conclusión depende de esos elementos, marcarla como:

`pendiente-de-verificacion`

# Criterio de finalización

La consolidación está completa cuando una nueva sesión, sin acceso al historial previo, puede:

1. entender el objetivo y estado general mediante `CONTEXT.md`;
2. conocer las decisiones vigentes mediante `DECISIONS.md`;
3. identificar el punto exacto de continuación mediante `HANDOFF.md`;
4. distinguir trabajo completado, pendiente y no verificado;
5. continuar sin necesitar revisar toda esta conversación.

# Salida requerida

Entrega exactamente tres artefactos completos e independientes:

1. `CONTEXT.md`
2. `DECISIONS.md`
3. `HANDOFF.md`

Presenta cada archivo en un bloque Markdown separado y claramente identificado con su nombre.

No agregues archivos adicionales.

Después de los tres archivos, incluye solo un resumen breve con:

- objetivo activo;
- próxima acción inmediata;
- elementos pendientes de verificación.

No repitas el contenido completo de los archivos en el resumen.