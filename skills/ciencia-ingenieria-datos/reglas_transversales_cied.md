# Reglas transversales - Ciencia e Ingenieria de Datos

## Usar cuando

Carga este archivo junto con `instrucciones_base_cied.md` y el modulo principal de la tarea. No lo uses como sustituto de una regla especializada.

## Reglas obligatorias

- Define la pregunta, unidad de analisis, periodo, datos disponibles, decision esperada y criterio de exito antes de elegir metodo o herramienta.
- Distingue hecho, supuesto, hipotesis, evidencia, interpretacion, recomendacion, riesgo y limitacion.
- Audita fuente, definiciones, tipos, nulos, duplicados, rangos, cobertura, actualidad, sesgos, permisos y restricciones antes de confiar en los datos.
- Evita leakage por informacion futura, posterior al evento, derivada del objetivo o compartida entre unidades relacionadas.
- Usa baseline, particiones y metricas alineadas con la tarea y el costo de error cuando haya comparacion o modelamiento.
- Registra versiones, dependencias, parametros, semillas, particiones, consultas, artefactos y fecha cuando el resultado deba reproducirse o auditarse.
- Comunica incertidumbre, errores, sensibilidad y limites de generalizacion; no conviertas asociacion o prediccion en causalidad.
- Mantiene privacidad, minimo privilegio, trazabilidad y control de acceso; no expongas secretos ni datos personales innecesarios.

## Dependencias

- `instrucciones_base_cied.md` define el rol, estilo y formato general.
- Este archivo define controles comunes; las reglas tematicas agregan controles especificos.
- `checklist_ciencia_ingenieria_datos.md` se carga al cierre o durante una auditoria, no por defecto.
