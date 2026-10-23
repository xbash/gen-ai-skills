---
name: ingenieria-software
description: "Aplica el dominio rector skills/ingenieria-software para analizar, diseñar, implementar, corregir, probar, documentar, desplegar o mantener software. Úsala en tareas técnicas de ingeniería de software; selecciona solo las reglas pertinentes y respeta las instrucciones locales del proyecto."
---

# Ingeniería de software

## Propósito

Actuar como adaptador de activación y flujo para el dominio técnico rector `skills/ingenieria-software/`. Las reglas de ingeniería viven en ese dominio; esta skill indica cómo seleccionarlas y cómo trabajar según la modalidad solicitada.

## Selección progresiva del dominio rector

1. Busca el dominio `skills/ingenieria-software/` en la raíz del proyecto o en el contexto actual y consulta su `README.md` para identificar los archivos aplicables. No uses rutas relativas desde la ubicación de esta skill: varía según el agente y la instalación.
2. Carga `instrucciones_base_dev.md` como base cuando esté disponible.
3. Selecciona solo el módulo pertinente: arquitectura, backend/API, frontend, bases de datos, pruebas/calidad, DevOps/CI/CD, seguridad, notebooks, CLI, dashboards o contenedores.
4. Consulta `ciclo-vida/00_orquestador_sdlc.md` y la etapa aplicable solo para trabajo formal por etapas; no impongas el ciclo completo a una corrección localizada.
5. Usa `checklist_codigo_dev.md` en revisiones o cierres. No lo trates como sustituto de la estrategia de pruebas del módulo correspondiente.
6. Si el dominio o un archivo seleccionado no está disponible, decláralo y no atribuyas contenido supuesto. No dupliques aquí reglas técnicas que pertenecen al dominio.

## Modalidades y autorización

- **ANALIZAR:** inspecciona la evidencia disponible y diagnostica. No alteres archivos ni el estado del entorno.
- **PLANIFICAR:** define acciones atómicas, alcance, dependencias y validaciones sin implementar. Usa `planificar-cambios` cuando corresponda y respeta los contratos locales de rutas, identificadores, estados y registros.
- **IMPLEMENTAR:** ejecuta únicamente acciones autorizadas y dentro del alcance acordado. Si el plan, una precondición o la solicitud no autoriza un cambio, detén esa acción; no conviertas una recomendación o un estado condicionado en permiso.
- **VERIFICAR:** ejecuta comprobaciones autorizadas y registra evidencia observada. Advierte antes de pruebas que puedan modificar datos, servicios, infraestructura o recursos compartidos.
- Si la modalidad no es explícita, infiérela de la solicitud sin convertir análisis o planificación en autorización para editar. Mantén separadas las acciones propuestas, autorizadas, ejecutadas y pendientes.

## Selección del modo de trabajo

1. Identifica objetivo, contexto técnico, restricciones y criterio de éxito necesarios para la tarea.
2. Aplica las instrucciones de mayor prioridad y del proyecto o componente antes que las pautas generales del dominio.
3. Carga progresivamente README del dominio, base, módulo principal y complementos solo por dependencia concreta.
4. Si se solicita una auditoría estructurada de artefactos existentes, usa `auditoria-software` cuando esté disponible; esta skill cubre el trabajo de ingeniería más amplio.
5. No amplíes la tarea a rediseños o refactorizaciones adyacentes sin autorización.

## Cierre con evidencia

Al cerrar una implementación o verificación, informa de forma proporcional:

- qué se modificó y qué componentes fueron afectados;
- qué comprobaciones se ejecutaron realmente y sus resultados;
- errores o desviaciones detectados;
- pendientes, riesgos y límites de validación;
- si el objetivo quedó satisfecho o qué falta para avanzar.

No presentes pruebas sugeridas como ejecutadas ni afirmes éxito sin evidencia. Para consultas o análisis sin cambios, responde en el formato solicitado y distingue lo verificado de los supuestos y pendientes relevantes.
