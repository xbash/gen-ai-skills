# Reglas transversales - Desarrollo aplicado de IA

## Usar cuando

Carga este archivo junto con `instrucciones_base_ia.md` y el modulo principal. No lo uses como sustituto de reglas especializadas.

## Reglas obligatorias

- Define objetivo, usuario, entradas, salidas, restricciones, criterio de exito y entorno antes de elegir modelo, arquitectura o proveedor.
- Distingue hecho verificable, supuesto, estimacion, recomendacion, riesgo, limitacion y decision de diseño.
- Valida datos, esquemas, versiones, dependencias, permisos, recursos y disponibilidad real antes de ejecutar.
- Usa baseline, particiones y metricas alineadas con la tarea y el costo de error cuando haya modelamiento o comparacion.
- Evita leakage por tiempo, entidad, documento, usuario, fuente, proxy del objetivo o transformacion ajustada fuera del entrenamiento.
- Registra configuracion, prompts, modelos, versiones, parametros, semillas, datos, metricas y artefactos cuando el resultado deba reproducirse o auditarse.
- Incluye prueba de humo antes de entrenamientos, procesamiento o despliegues costosos; no afirmes mejoras sin comparacion valida.
- Protege secretos, datos personales, modelos, endpoints y herramientas; limita autonomia y permisos segun el riesgo.

## Dependencias

- `instrucciones_base_ia.md` define rol, estilo, limites y formato general.
- Este archivo define controles comunes; los modulos tematicos agregan reglas especificas.
- `../validacion/checklist_codigo_ia.md` se carga al cierre o durante una revision, no por defecto.

## Dueños de reglas

- `../ciclo_de_vida/datos_experimentos_reglas.md`: trazabilidad experimental, features y comparabilidad de resultados.
- `../ciclo_de_vida/testing_evaluacion_sistemas_ia_reglas.md`: pruebas, regresiones y criterios de aceptación.
- `../seguridad/seguridad_modelos_ia_reglas.md`: amenazas, controles y respuesta de seguridad.
- `../ciclo_de_vida/mlops_despliegue_ia.md`: ciclo operativo, despliegue y observabilidad.
