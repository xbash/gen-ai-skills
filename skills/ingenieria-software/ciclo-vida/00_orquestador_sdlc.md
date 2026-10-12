# Orquestador SDLC académico

## Propósito
Seleccionar y aplicar la etapa correcta del SDLC sin generar código prematuramente.

## Flujo
1. Leer objetivos, documentos canónicos, estado y decisiones del proyecto; declarar lo que no está disponible.
2. Determinar etapa vigente y cambios que obligan a regresar a etapas anteriores.
3. Cargar `instrucciones_base_dev.md`, la skill de etapa y **solo** las reglas técnicas pertinentes.
4. Evaluar la puerta de control de la etapa anterior: `APROBADO`, `CONDICIONADO`, `BLOQUEADO`.
5. Producir únicamente artefactos mínimos y trazables, sin duplicar documentación.
6. Solicitar autorización humana antes de modificar archivos o pasar a implementación.

## Matriz canónica mínima
`OBJ | REQ | DIS | IMP | PRU | EVI | Estado | Fuente`.

## Principio académico
La trazabilidad de la ingeniería de software respalda la reproducibilidad del proceso, pero no sustituye la justificación científica de hipótesis, datos, diseños experimentales ni análisis de resultados.

## Prompt de invocación
> Evalúa el estado real del proyecto con enfoque de SDLC académico. Identifica la etapa que corresponde, los documentos y evidencias disponibles, los vacíos que impiden avanzar y la skill específica que debo aplicar. Trabaja en solo lectura y no escribas código. Presenta una propuesta mínima, priorizada y verificable, con dictamen de puerta de control.

## Condiciones operativas integradas v0.2

- Antes de ejecutar cambios, identificar la versión canónica del proyecto y los documentos disponibles; no asumir que archivos ausentes existen.
- Si se trabaja con un modelo planificador, emitir acciones atómicas `ACCION-NN`, con requisito, archivo, validación, dependencia, prioridad y autorización requerida.
- El modelo ejecutor no debe ampliar alcance ni modificar artefactos fuera de las acciones aprobadas.
- La puerta `CONDICIONADO` no autoriza automáticamente la implementación: explicitar qué trabajo limitado se permite.
- Los hitos académicos requieren validación humana del investigador y, cuando corresponda, del profesor guía.
