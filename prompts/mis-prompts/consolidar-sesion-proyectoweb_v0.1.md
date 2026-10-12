Consolida esta sesión de trabajo para poder continuar posteriormente en otra conversación, agente, modelo o entorno.

Genera exclusivamente tres archivos portables:

- `CONTEXT.md`
- `DECISIONS.md`
- `HANDOFF.md`

Los copiaré posteriormente a `docs/` de mi proyecto local.

Usa la conversación actual y los archivos adjuntos como evidencia. No inventes cambios locales, comandos, pruebas, archivos ni resultados que no estén demostrados. Cuando algo relevante no pueda verificarse, usa `pendiente-de-verificacion`.

Criterios:

- prioriza información vigente y accionable;
- elimina redundancias, historia conversacional y alternativas descartadas;
- no conviertas los archivos en bitácoras;
- no dupliques información entre ellos;
- conserva únicamente lo necesario para continuar correctamente.

`CONTEXT.md`:
- objetivo;
- estado actual;
- arquitectura o estructura relevante;
- stack y herramientas;
- restricciones;
- supuestos vigentes;
- referencias técnicas relevantes.

`DECISIONS.md`:
- solo decisiones vigentes que condicionen trabajo futuro;
- para cada decisión: decisión, motivo, impacto y estado;
- elimina decisiones obsoletas o irrelevantes.

`HANDOFF.md`:
- objetivo activo;
- estado inmediato;
- trabajo completado relevante;
- trabajo parcialmente completado;
- archivos/componentes relevantes;
- verificaciones realizadas;
- bloqueos o riesgos;
- próxima acción inmediata;
- 3 pasos siguientes;
- acción inicial recomendada.

`HANDOFF.md` debe responder:

> ¿Qué necesita saber un agente nuevo para continuar correctamente ahora?

Entrega los tres archivos completos en bloques Markdown separados y claramente identificados.

Después de ellos, agrega únicamente un resumen breve con:
- objetivo activo;
- próxima acción;
- pendientes de verificación.