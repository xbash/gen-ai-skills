---
name: planificar-cambios
description: Analiza requerimientos de modificación de proyectos de software y genera planes de ejecución atómicos, priorizados, trazables y verificables, sin implementar cambios. Usar cuando se solicite agregar, modificar, corregir, refactorizar o planificar funcionalidades.
---

# Planificar cambios

## Objetivo

Transformar un requerimiento del usuario en un plan de ejecución que otro modelo pueda implementar sin reconstruir el análisis ni tomar decisiones arquitectónicas nuevas.

Esta skill opera exclusivamente como planificador.

## Precedencia y convenciones locales

Las instrucciones globales de seguridad y las instrucciones aplicables del proyecto deben leerse antes de usar esta skill. Cuando un proyecto defina contratos de planificación, rutas, identificadores, schemas, estados o registros propios, esos contratos prevalecen sobre los valores de fallback de esta skill.

La skill no debe copiar ni imponer convenciones locales. Si no existe una convención del proyecto, aplicar sus valores por defecto. Conservar los artefactos históricos y no reescribir, completar ni reclasificar sus campos salvo autorización explícita y un mecanismo aditivo verificable.

## Activación

Aplicar ante solicitudes de planificación, diseño de cambios, incorporación de funcionalidades, corrección de defectos o refactorización, siempre que el usuario no haya solicitado explícitamente ejecutar el cambio.

No activar para consultas conceptuales, explicaciones, revisiones informativas ni tareas explícitas de ejecución.

El usuario sólo necesita proporcionar el requerimiento. Obtener el contexto restante desde el proyecto.

## Fuentes de verdad

1. Leer AGENTS.md global y las instrucciones aplicables del repositorio y componente.
2. Inspeccionar documentación, contratos, configuración, código, dependencias y pruebas relacionadas.
3. Identificar decisiones previamente aprobadas.
4. Preservar identificadores de requisitos, incidencias y decisiones.
5. No inventar archivos, comportamientos, requisitos, APIs ni resultados.
6. Documentar contradicciones entre fuentes antes de proponer cambios.

No asumir que un archivo existe sin comprobarlo.

## Restricciones

Operar en modo de análisis y planificación.

No modificar código, configuración, datos, dependencias ni archivos productivos.

No instalar paquetes, ejecutar migraciones, realizar commits ni implementar acciones del plan.

Se permite únicamente crear o actualizar artefactos de planificación y registros asociados, cuando el entorno lo permita.

No ampliar el alcance sin autorización.

## Procedimiento

### 1. Diagnóstico

Determinar:
- Estado actual verificable.
- Estado objetivo solicitado.
- Brecha entre ambos estados.
- Archivos, módulos y componentes afectados.
- Contratos e interfaces que deben preservarse.
- Pruebas y validaciones existentes.
- Dependencias, riesgos y restricciones.
- Decisiones pendientes.

Distinguir hechos verificados, supuestos y limitaciones.

### 2. Alcance

Definir expresamente:
- Dentro de alcance: cambios necesarios para satisfacer el requerimiento.
- Fuera de alcance: mejoras identificadas pero no necesarias.

No incorporar refactorizaciones generales no solicitadas.

### 3. Diseño

Definir una solución concreta, compatible con la arquitectura vigente.

Reutilizar decisiones existentes y evitar introducir dependencias innecesarias.

Si falta una decisión imprescindible, registrarla como pendiente. No resolverla arbitrariamente.

### 4. Priorización

Clasificar las acciones:

- P0: bloqueante o crítico para una implementación correcta, segura o reproducible.
- P1: necesario dentro del cambio solicitado.
- P2: mejora diferible.

La prioridad no sustituye el orden de dependencias.

### 5. Descomposición

Generar acciones atómicas con los identificadores definidos por la convención aplicable; usar `P01`, `P02`, `P03`, etc. sólo como ejemplo cuando no exista una convención local.

Cada acción debe contener:

- Identificador y nombre.
- Prioridad: P0, P1 o P2.
- Estado: READY, BLOCKED o REQUIRES_CONFIRMATION.
- Objetivo.
- Justificación.
- Archivos o rutas afectadas.
- Cambio concreto que debe realizarse.
- Dependencias entre acciones.
- Precondiciones.
- Validación mediante comandos, pruebas o inspecciones.
- Criterio objetivo de aceptación.
- Riesgos u observaciones relevantes.

Una acción READY debe poder ejecutarse sin decisiones de diseño adicionales.

Evitar acciones genéricas como "mejorar código", "refactorizar" o "corregir problemas" sin especificaciones verificables.

### 6. Secuenciación

Ordenar las acciones respetando dependencias y prioridades.

Identificar acciones independientes que puedan ejecutarse por separado.

No marcar READY una acción que tenga precondiciones incumplidas o decisiones abiertas.

### 7. Trazabilidad

Relacionar, cuando exista evidencia:

Requerimiento → decisión → acción → archivo → validación → criterio de aceptación.

Conservar identificadores existentes de RF, RNF, incidencias y decisiones.

### 8. Verificación del plan

Antes de finalizar, comprobar:

- Objetivo y alcance definidos.
- Estado actual inspeccionado.
- Archivos afectados identificados.
- Acciones suficientemente pequeñas.
- Prioridades y dependencias coherentes.
- Validaciones y criterios de aceptación objetivos.
- Decisiones abiertas identificadas.
- Ausencia de modificaciones fuera de alcance.
- Posibilidad de ejecutar cada acción READY sin reinterpretar el diseño.

Si una acción no cumple, refinarla o bloquearla.

## Persistencia

Respetar primero las rutas, identificadores, schemas y convenciones establecidas por el proyecto.

Cuando no exista una convención específica, utilizar:

- docs/PLAN.md: plan canónico vigente.
- logs/planificacion.jsonl: registro de eventos de planificación.

En proyectos con varios componentes, ubicar los artefactos según la convención aplicable o, si no existe, dentro del componente afectado.

Para cambios transversales, utilizar la ubicación común definida por el proyecto o, en su ausencia, docs/ y logs/ de la raíz.

No sobrescribir planes no relacionados. Si existe un plan previo, comprobar su alcance y conservar su información vigente.

El registro JSONL debe cumplir todos los campos y reglas exigidos por el proyecto. Cuando no exista un contrato local, incluir, cuando esté disponible:
- timestamp
- event
- requirement
- sources
- decisions
- risks
- actions
- status

Cada línea debe ser un objeto JSON válido.

No registrar secretos, credenciales ni datos sensibles.

Si el entorno no permite escribir archivos, entregar artefactos descargables cuando sea posible e indicar que no fueron guardados en el repositorio.

No afirmar que se guardó, verificó o ejecutó algo sin evidencia.

## Estado global

Utilizar:

READY_FOR_EXECUTION: no existen bloqueos que impidan ejecutar las acciones necesarias para cumplir el objetivo.

NOT_READY_FOR_EXECUTION: existen bloqueos o decisiones imprescindibles pendientes.

Las acciones P2 diferibles no deben bloquear automáticamente el estado global.

## Modelo ejecutor

El plan será utilizado posteriormente por un modelo ejecutor, posiblemente de menor costo.

No implementar acciones ni seleccionar automáticamente un modelo.

El ejecutor sólo podrá trabajar sobre acciones READY cuyas dependencias estén satisfechas.

## Respuesta final

Responder brevemente con:

- Cantidad de acciones P0, P1 y P2.
- Cantidad de acciones READY, BLOCKED y REQUIRES_CONFIRMATION.
- Riesgos principales.
- Ruta de PLAN.md y del log.
- Estado global.

No reproducir el plan completo en la conversación.
  
