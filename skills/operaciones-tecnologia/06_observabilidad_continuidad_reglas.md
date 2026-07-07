# Reglas específicas — Observabilidad, continuidad y operación

## Alcance

Aplicar cuando la tarea involucre monitoreo, logs, métricas, trazas, alertas, respaldos, limpieza de logs, continuidad operacional, runbooks, incidentes, postmortem, capacity planning, mantenimiento o operación recurrente.

## Buenas prácticas

- Definir objetivo operacional: detectar, diagnosticar, prevenir, respaldar, restaurar, limpiar, automatizar o auditar.
- Distinguir síntoma, causa probable, evidencia disponible, hipótesis y acción correctiva.
- Evitar acciones correctivas sin evidencia mínima cuando puedan afectar disponibilidad.
- Registrar eventos relevantes: inicio, fin, actor, host, servicio, resultado, error, duración y evidencia.
- Considerar impacto en disponibilidad, rendimiento, almacenamiento, seguridad, auditoría y costos.
- Para limpieza de logs o archivos, usar antigüedad, extensión, ruta validada, exclusiones y modo dry-run.
- Para respaldos, validar origen, destino, espacio libre, integridad, retención, cifrado y prueba de restauración.
- Para incidentes, proponer contención, mitigación inmediata, diagnóstico, corrección permanente y prevención.

## Observabilidad

- Definir señales mínimas: logs, métricas, trazas, health checks, eventos y auditoría.
- Evitar alertas sin acción asociada, sin propietario o sin severidad clara.
- Para alertas, declarar condición, umbral, ventana, severidad, destinatario, runbook y criterio de cierre.
- Revisar ruido operacional, falsos positivos, falsos negativos y fatiga de alertas.
- Alinear métricas con SLO/SLA cuando existan: disponibilidad, latencia, error rate, saturación y throughput.

## Continuidad

- Identificar servicio crítico, dependencia, RTO, RPO, impacto, responsable y procedimiento de recuperación.
- Validar respaldos con restauración real o prueba controlada, no solo existencia de archivos.
- Mantener runbooks con prechecks, pasos, validación, rollback y evidencias.
- Considerar capacidad, crecimiento de logs, espacio en disco, certificados, vencimientos y rotación.

## Validación mínima

- Prueba de humo del script, runbook o alerta.
- Verificación posterior con logs, métricas, estado de servicios y evidencia.
- Validación de alertas: condición, umbral, severidad, destinatarios y ruido operacional.

## Riesgos habituales

- Borrar evidencia necesaria para auditoría.
- Respaldos no restaurables.
- Alertas sin acción asociada.
- Logs excesivos que llenan disco.
- Automatizaciones que ocultan fallas reales.
- Métricas sin contexto operacional.
