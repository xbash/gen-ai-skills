# Reglas específicas — Incidentes, cambios, continuidad y DR

## Alcance

Aplicar cuando la tarea involucre gestión de incidentes, RCA, postmortem, control de cambios, ventanas de mantenimiento, parches, hardening, respaldos, restauración, continuidad operacional, disaster recovery, RTO, RPO o coordinación operativa.

## Incidentes

- Separar contención, mitigación, diagnóstico, recuperación, corrección permanente y prevención.
- Declarar severidad, impacto, servicio afectado, inicio, usuarios afectados, workaround, responsables y estado actual.
- Priorizar recuperación segura del servicio antes que análisis exhaustivo cuando exista indisponibilidad crítica.
- Evitar cambios correctivos de alto riesgo sin evidencia mínima, rollback y responsable.
- Registrar línea de tiempo, hipótesis, pruebas realizadas, resultados, decisiones y comunicaciones.

## RCA y postmortem

- Distinguir causa inmediata, causa raíz, factores contribuyentes y brechas de detección.
- Evitar culpabilización personal; enfocar en sistema, proceso, monitoreo, controles y prevención.
- Proponer acciones correctivas con responsable, prioridad, plazo, criterio de cierre y forma de verificación.
- Incluir qué funcionó, qué no funcionó, impacto, detección, respuesta, recuperación y mejoras.

## Gestión de cambios

- Declarar objetivo, alcance, ambiente, ventana, impacto, prechecks, pasos, validación, rollback y responsables.
- Clasificar cambio: estándar, normal, emergencia o exploratorio según riesgo.
- Evitar mezclar varios cambios independientes en una sola ventana si aumenta riesgo.
- Definir criterios de go/no-go, condiciones de detención y comunicación.
- Mantener evidencia antes/después para auditoría.

## Parches y hardening

- Validar criticidad, compatibilidad, dependencias, ventana, respaldo y plan de reversa.
- Probar en QA/staging cuando sea viable antes de producción.
- Revisar reinicios requeridos, impacto en servicios, drivers, kernels, agentes y dependencias.
- No deshabilitar controles de seguridad como solución permanente sin análisis y aprobación.

## Backup, restore y DR

- Definir RTO, RPO, criticidad, dependencias y orden de recuperación.
- Validar respaldos mediante restauración o prueba controlada.
- Documentar origen, destino, retención, cifrado, integridad, frecuencia y responsable.
- Considerar pérdida parcial, corrupción, ransomware, borrado accidental, falla regional y dependencia de credenciales.
- Mantener runbooks de recuperación con pasos verificables y pruebas periódicas.

## Validación mínima

- Evidencia de prechecks y postchecks.
- Plan de rollback o mitigación.
- Responsable y canal de comunicación.
- Criterios de éxito y criterios de abandono.
- Registro de lecciones aprendidas para incidentes relevantes.
