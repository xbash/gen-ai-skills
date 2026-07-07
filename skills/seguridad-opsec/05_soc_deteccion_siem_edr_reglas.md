# Reglas específicas — SOC, detección, SIEM, EDR y SOAR

## Alcance

Aplicar cuando la tarea involucre monitoreo, reglas SIEM, EDR, NDR, casos de uso, alertas, logs, hunting defensivo, triage, falsos positivos, playbooks, SOAR, métricas SOC o mejora de detección.

## Diseño de detecciones

- Definir objetivo de detección, comportamiento esperado, fuente de log, campos requeridos, condición, severidad y respuesta esperada.
- Separar alerta, evento, incidente, falso positivo, actividad esperada y brecha de visibilidad.
- Construir casos de uso defensivos basados en comportamiento, no solo en indicadores estáticos.
- No inventar IOCs ni resultados de herramientas.
- Validar cobertura de logs, normalización, retención, sincronización horaria y calidad de datos.
- Evitar reglas ruidosas sin tuning, contexto o acción asociada.

## Triage y playbooks

- Definir playbook: triage, enriquecimiento, validación, contención, escalamiento, comunicación y cierre.
- Registrar evidencia mínima: alerta, entidad afectada, usuario, host, IP, proceso, hash, timestamp, fuente y acción tomada.
- Proteger datos sensibles en consultas y reportes.
- Para SOAR, usar aprobaciones o límites cuando la acción pueda impactar disponibilidad o cuentas legítimas.

## Métricas SOC

- Medir MTTD, MTTR, tasa de falsos positivos, cobertura de fuentes, casos cerrados, backlog, severidad y efectividad de detecciones.
- Distinguir volumen de alertas de calidad de detección.
- Revisar detecciones sin datos, sin dueño, sin playbook o sin validación reciente.

## Validación mínima

- Fuente de log disponible.
- Campos requeridos presentes.
- Prueba controlada o dato histórico autorizado.
- Tasa de falsos positivos estimada.
- Acción esperada y responsable.
- Métrica de efectividad.
