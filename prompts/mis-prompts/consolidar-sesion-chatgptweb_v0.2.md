# Objetivo

Consolida el estado operativo vigente de esta sesión de trabajo para poder continuar posteriormente en otra conversación, agente, modelo o entorno sin depender del historial completo de este chat.

Debes generar exactamente tres archivos descargables:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`

Estos archivos serán descargados y posteriormente copiados al directorio `docs/` de mi proyecto local.

# IMPORTANTE — forma de entrega

NO muestres en la conversación el contenido completo de los archivos.
NO presentes los archivos como bloques Markdown dentro del chat.
NO reproduzcas el análisis realizado para construirlos.
NO entregues una versión previa para revisión.
Crea directamente los tres archivos `.md` como artefactos/archivos descargables adjuntos a tu respuesta.
La respuesta visible en el chat debe ser mínima.
Después de generarlos, responde solamente indicando que los tres archivos fueron creados y proporciona sus enlaces o controles de descarga.

# Fuentes de información

Utiliza únicamente evidencia disponible en:

1. esta conversación;
2. archivos adjuntos a esta conversación;
3. resultados, decisiones, restricciones y verificaciones explícitamente mencionados;
4. información técnica establecida durante esta sesión.

No asumas acceso a:

- mi sistema de archivos local;
- Git local;
- VS Code;
- terminales;
- comandos ejecutados fuera de esta conversación;
- archivos que no hayan sido adjuntados o cuyo contenido no haya sido proporcionado.

Si una información importante no puede verificarse, utiliza:

`pendiente-de-verificacion`

No inventes:

- archivos;
- modificaciones;
- comandos;
- resultados de pruebas;
- decisiones;
- métricas;
- verificaciones;
- estados de implementación.

# Principios de consolidación

Prioriza información vigente y accionable.

Elimina:

- redundancias;
- historia conversacional innecesaria;
- explicaciones repetidas;
- alternativas descartadas sin impacto;
- razonamientos ya resueltos;
- detalles que no afecten trabajo futuro.

Conserva únicamente información que afecte:

- objetivo;
- estado del proyecto;
- implementación;
- arquitectura;
- configuración;
- decisiones;
- restricciones;
- supuestos;
- validaciones;
- riesgos;
- bloqueos;
- próximos pasos.

Los archivos representan el estado operativo vigente, no una bitácora histórica.

# Regla de no duplicación

Cada información debe tener un destino canónico:

- `CONTEXT.md`: contexto estable y estado general.
- `DECISIONS.md`: decisiones vigentes.
- `HANDOFF.md`: punto operativo exacto para continuar.

Evita repetir la misma información en varios archivos.

# CONTEXT.md

Debe permitir comprender el proyecto sin consultar esta conversación.

Estructura:

# Contexto del proyecto
## Objetivo
## Estado actual
## Arquitectura o estructura relevante
## Stack y herramientas
## Restricciones
## Supuestos vigentes
## Referencias técnicas relevantes

Reglas:

- conservar solo información vigente;
- evitar cronología de sesiones;
- no documentar exhaustivamente el proyecto;
- incluir rutas, archivos y componentes solo cuando sean necesarios para continuar.

# DECISIONS.md

Debe contener exclusivamente decisiones vigentes que condicionen trabajo futuro.

Formato recomendado para cada decisión:

## D-001 — <título>

**Decisión:**  
<decisión adoptada>

**Motivo:**  
<justificación>

**Impacto:**  
<qué condiciona>

**Estado:** vigente

Registrar solo decisiones con impacto futuro, por ejemplo:

- arquitectura;
- frameworks;
- testing;
- convenciones;
- estructura de directorios;
- formatos de datos;
- interfaces;
- persistencia;
- baselines;
- criterios metodológicos;
- restricciones adoptadas.

No registrar:

- discusiones exploratorias;
- alternativas descartadas sin efecto;
- decisiones triviales;
- historia de la conversación.

# HANDOFF.md

Debe representar el punto exacto desde el cual debe continuar otra sesión, agente o modelo.

Estructura:

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

- qué archivo revisar;
- qué comando ejecutar;
- qué verificación realizar;
- qué tarea continuar.

# Regla de compresión

Antes de conservar cualquier información, evalúa:
> ¿Esta información afecta una decisión, implementación, restricción, validación, riesgo, bloqueo o próxima acción?
Si no, elimínala.
No conserves información solo porque apareció en la conversación.

# Criterio de finalización

La consolidación estará completa cuando una sesión nueva, sin acceso a este historial, pueda:

1. comprender el proyecto mediante `CONTEXT.md`;
2. conocer las decisiones vigentes mediante `DECISIONS.md`;
3. identificar exactamente cómo continuar mediante `HANDOFF.md`;
4. distinguir trabajo completado, pendiente y no verificado.

# Salida obligatoria

Crea físicamente y adjunta como archivos descargables:

1. `CONTEXT.md`
2. `DECISIONS.md`
3. `HANDOFF.md`

NO imprimas su contenido en la conversación.
NO muestres bloques de código con su contenido.
NO expliques detalladamente cómo realizaste la consolidación.
NO generes archivos adicionales.
La respuesta visible final debe ser únicamente:
"Consolidación completada."
seguido de los enlaces o controles de descarga de:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`