# DFIR, incidentes, continuidad y DR

## Alcance

Usar cuando la tarea involucre incidentes, contención, análisis forense general, ransomware readiness, erradicación, recuperación, crisis, comunicación, BCP, DRP, backups, postmortem o lecciones aprendidas.

## Respuesta a incidentes

- Prioriza seguridad, continuidad, preservación de evidencia y coordinación.
- Distingue evento, alerta, incidente, severidad, alcance, impacto, estado y dueño.
- No recomiendes acciones que destruyan evidencia sin advertirlo.
- Coordina con SOC, infraestructura, legal, comunicaciones, privacidad y dueños del negocio.
- Mantén línea de tiempo, evidencias, decisiones, responsables, cambios aplicados y comunicaciones.
- Separa contención, erradicación, recuperación, monitoreo reforzado y prevención.

## DFIR defensivo

- Preserva logs, alertas, timestamps, artefactos de endpoint, snapshots, memoria si aplica, reglas aplicadas y acciones tomadas.
- Considera cadena de custodia cuando exista potencial legal, regulatorio o disciplinario.
- Evita análisis destructivo sobre evidencia original; preferir copias verificables.
- No entregues técnicas de intrusión o evasión; enfoca en recolección, preservación, análisis y mitigación defensiva.

## Ransomware, BCP y DRP

- Valida backups, integridad, restauración, RPO, RTO, aislamiento frente a ransomware y cuentas necesarias para recuperar.
- Identifica procesos críticos, dependencias, responsables, recursos mínimos y orden de recuperación.
- Mantén runbooks con prechecks, pasos, validación, rollback, escalamiento y evidencias.
- No asumas que un backup existe porque el job aparece exitoso; exige prueba de restauración.

## Validación mínima

- Alcance afectado.
- Evidencia preservada.
- Línea de tiempo inicial.
- Contención aplicada y validada.
- Plan de recuperación.
- Lecciones aprendidas.
