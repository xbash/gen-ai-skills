Actúa como arquitecto de software y especialista en configuración de agentes de desarrollo para VS Code + Codex.

## Objetivo

Analiza el proyecto `gen-ai-skill-soft` ubicado en `C:\rutinas-local\gen-ai-skills-root\gen-ai-skill-soft` y crea o propone un archivo `AGENTS.md` adecuado para este repositorio.

Quiero que `AGENTS.md` sea un documento **estable, normativo y reutilizable**, destinado a orientar el comportamiento de Codex y otros agentes que trabajen sobre el proyecto.

No debe convertirse en:

- una copia del `README.md`;
- un resumen general del proyecto;
- un registro histórico;
- un changelog;
- un documento de continuidad de sesión;
- un archivo de decisiones arquitectónicas;
- una lista de tareas pendientes;
- documentación temporal generada durante iteraciones con modelos.

Antes de escribirlo, inspecciona la estructura y documentación existente del repositorio para identificar qué instrucciones realmente deben ser persistentes.

## Principio de diseño

Incluye en `AGENTS.md` solamente información que probablemente siga siendo válida durante múltiples sesiones de desarrollo.

Ejemplos:

- propósito técnico general del repositorio, solo cuando sea necesario para orientar al agente;
- convenciones de arquitectura;
- estructura relevante del proyecto;
- restricciones técnicas;
- reglas de modificación del código;
- convenciones de nombres;
- herramientas autorizadas;
- comandos estándar de validación;
- criterios mínimos de calidad;
- reglas de seguridad;
- política de modificación de archivos;
- política de uso de modelos;
- reglas para tareas automatizadas o mecánicas.

La información operacional, histórica o transitoria debe permanecer en otros documentos.

## Separación documental

Antes de incluir una instrucción en `AGENTS.md`, determina si realmente corresponde allí.

Como criterio general:

| Tipo de información | Destino preferente |
|---|---|
| Instrucciones permanentes para agentes | `AGENTS.md` |
| Descripción y uso del proyecto | `README.md` |
| Decisiones arquitectónicas | ADR / `DECISIONS.md` |
| Trabajo pendiente | `TODO.md`, issues o plan de trabajo |
| Continuidad entre sesiones | `HANDOFF.md`, `CONTEXT.md` u otro documento equivalente |
| Análisis temporales | `/docs` |
| Planes de ejecución | `/docs` |
| Resultados de auditorías | `/docs` |
| Historial de cambios | `CHANGELOG.md` |

No dupliques innecesariamente información existente.

Cuando corresponda, `AGENTS.md` puede referenciar otro documento en lugar de copiar su contenido.

## Política de selección de modelos

Quiero incorporar una política explícita de uso eficiente de modelos.

La regla general debe favorecer el modelo **menos costoso que pueda ejecutar correctamente la tarea**, reservando modelos de mayor capacidad para actividades que requieran razonamiento, diseño o evaluación.

### Luna — esfuerzo bajo

Usar preferentemente para tareas deterministas, repetitivas, mecánicas o de transformación directa, por ejemplo:

- listar archivos o directorios;
- obtener inventarios;
- buscar patrones simples;
- renombrar archivos;
- mover archivos;
- copiar archivos;
- crear estructuras de directorios;
- eliminar artefactos previamente aprobados;
- aplicar cambios repetitivos claramente especificados;
- modificaciones mecánicas en múltiples archivos;
- formateo;
- actualización de versiones;
- generación de boilerplate;
- ejecución de comandos conocidos;
- cambios simples cuya solución ya esté definida.

### Luna — esfuerzo medio

Usar cuando la tarea sigue siendo principalmente operacional, pero requiere cierto análisis local, por ejemplo:

- modificar varios archivos relacionados;
- refactorizaciones pequeñas y claramente delimitadas;
- localizar usos o dependencias antes de modificar;
- verificar que una eliminación no rompa referencias;
- corregir errores simples;
- implementar código a partir de una especificación suficientemente detallada;
- ejecutar un plan previamente diseñado por un modelo de mayor capacidad.

### Tierra — esfuerzo medio

Usar preferentemente para tareas que requieran razonamiento sustantivo, análisis transversal o decisiones técnicas, por ejemplo:

- analizar arquitectura;
- diseñar componentes;
- evaluar alternativas;
- investigar causa raíz de problemas complejos;
- diseñar una refactorización;
- revisar código con dependencias no triviales;
- detectar riesgos;
- evaluar impactos;
- elaborar planes de implementación;
- definir estrategias de migración;
- realizar revisiones técnicas antes de cambios importantes.

No utilizar un modelo de mayor capacidad únicamente porque la tarea involucre muchos archivos.

Distinguir siempre entre:

**volumen de trabajo** y **complejidad cognitiva**.

Una tarea puede involucrar cientos de archivos y seguir siendo apropiada para Luna si las operaciones son mecánicas y están claramente especificadas.

## Separación entre planificación y ejecución

Cuando una tarea tenga suficiente complejidad:

1. utilizar Tierra para analizar el problema;
2. producir un plan concreto y verificable;
3. dividir el trabajo en operaciones pequeñas;
4. delegar las operaciones mecánicas a Luna cuando sea apropiado;
5. utilizar nuevamente Tierra solo si aparecen decisiones no contempladas, ambigüedades importantes o problemas arquitectónicos.

Ejemplo:

`Tierra / medium → análisis y plan`

`Luna / low o medium → ejecución mecánica`

`Luna / low → pruebas, búsquedas y verificaciones simples`

`Tierra / medium → revisión final solamente cuando la complejidad lo justifique`

## Reglas de seguridad para modificaciones

El agente no debe asumir que toda recomendación debe ejecutarse.

Para operaciones potencialmente destructivas:

- eliminar archivos;
- eliminar directorios;
- modificar configuraciones críticas;
- cambiar dependencias importantes;
- realizar migraciones;
- modificar estructuras persistentes;
- realizar refactorizaciones extensas;

primero debe analizar impacto y dependencias.

Si existe incertidumbre relevante, debe presentar la acción propuesta antes de realizarla.

Las tareas mecánicas previamente aprobadas sí pueden ejecutarse con modelos de menor costo.

## Eficiencia

Evita utilizar modelos con razonamiento elevado para tareas que puedan resolverse mediante:

- comandos del sistema;
- búsquedas;
- scripts;
- expresiones regulares;
- Git;
- herramientas estáticas;
- linters;
- tests;
- pequeños scripts Python o PowerShell.

Cuando sea más eficiente ejecutar una herramienta determinista que solicitar razonamiento a un LLM, prefiere la herramienta.

## Procedimiento solicitado

### Fase 1 — inspección

Revisa al menos:

- estructura del repositorio;
- `README.md`;
- `AGENTS.md`, si existe;
- archivos de configuración;
- documentación relevante;
- scripts;
- estructura `/docs`;
- archivos de continuidad o decisiones existentes.

### Fase 2 — clasificación

Determina:

1. qué instrucciones deberían formar parte permanente de `AGENTS.md`;
2. qué información existente no debe trasladarse allí;
3. qué reglas faltan actualmente;
4. qué instrucciones parecen temporales u obsoletas.

### Fase 3 — diseño

Construye un `AGENTS.md` conciso y estable.

Evita instrucciones excesivamente específicas de una tarea puntual.

Prefiere reglas, principios y criterios de decisión.

### Fase 4 — validación

Antes de finalizar, verifica que el archivo:

- no duplique el `README.md`;
- no funcione como bitácora;
- no contenga planes temporales;
- no dependa excesivamente del estado actual del proyecto;
- establezca reglas suficientemente claras para que otro agente pueda trabajar correctamente;
- incorpore la política de selección de modelos;
- diferencie razonamiento de ejecución mecánica.

## Restricción inicial

En esta primera ejecución:

**no modifiques ningún archivo del repositorio.**

Primero presenta la propuesta completa de `AGENTS.md` y señala brevemente cualquier decisión estructural relevante.

Solo después de aprobación se deberá escribir el archivo.