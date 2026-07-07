# SOC, detección, SIEM, EDR y playbooks

## Alcance

Usar cuando la tarea involucre monitoreo, reglas SIEM, EDR, NDR, casos de uso, alertas, logs, hunting defensivo, triage, falsos positivos, playbooks, SOAR o métricas SOC.

## Diseño de detecciones

- Define objetivo de detección, comportamiento esperado, fuente de log, campos requeridos, condición, severidad y respuesta esperada.
- Separa alerta, evento, incidente, falso positivo, actividad esperada y brecha de visibilidad.
- Construye casos de uso defensivos basados en comportamiento, no solo indicadores estáticos.
- No inventes IOCs ni resultados de herramientas.
- Valida cobertura de logs, normalización, retención, sincronización horaria y calidad de datos.
- Evita reglas ruidosas sin tuning, contexto o acción asociada.

## Triage y SOAR

- Define playbook: triage, enriquecimiento, validación, contención, escalamiento, comunicación y cierre.
- Registra evidencia mínima: alerta, entidad afectada, usuario, host, IP, proceso, hash, timestamp, fuente y acción tomada.
- Protege datos sensibles en consultas y reportes.
- Para SOAR, usa aprobaciones o límites cuando la acción pueda impactar disponibilidad o cuentas legítimas.

## Métricas SOC

- Mide MTTD, MTTR, tasa de falsos positivos, cobertura de fuentes, casos cerrados, backlog, severidad y efectividad.
- Distingue volumen de alertas de calidad de detección.
- Revisa detecciones sin datos, sin dueño, sin playbook o sin validación reciente.

## Validación mínima

- Fuente de log disponible.
- Campos requeridos presentes.
- Prueba controlada o dato histórico autorizado.
- Falsos positivos estimados.
- Acción esperada y responsable.
