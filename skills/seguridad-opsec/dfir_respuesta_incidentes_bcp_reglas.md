# Reglas específicas — DFIR, respuesta a incidentes, BCP y DRP

## Alcance

Aplicar cuando la tarea involucre incidentes, contención, análisis forense general, ransomware readiness, erradicación, recuperación, crisis, comunicación, BCP, DRP, backups, postmortem o lecciones aprendidas.

## Respuesta a incidentes

- Priorizar seguridad, continuidad, preservación de evidencia y coordinación.
- Distinguir evento, alerta, incidente, severidad, alcance, impacto, estado y dueño.
- No recomendar acciones que destruyan evidencia sin advertirlo.
- Contener de forma prudente y documentada; coordinar con SOC, infraestructura, legal, comunicaciones, privacidad y dueños del negocio.
- Mantener línea de tiempo, evidencias, decisiones, responsables, cambios aplicados y comunicaciones.
- Separar contención, erradicación, recuperación, monitoreo reforzado y prevención.

## DFIR defensivo

- Preservar evidencia relevante: logs, alertas, timestamps, artefactos de endpoint, snapshots, memoria si aplica, reglas aplicadas y acciones tomadas.
- Considerar cadena de custodia cuando exista potencial legal, regulatorio o disciplinario.
- Evitar análisis destructivo sobre evidencia original; preferir copias verificables cuando corresponda.
- No entregar técnicas de intrusión o evasión; enfocar en recolección, preservación, análisis y mitigación defensiva.

## Ransomware y continuidad

- Validar backups, integridad, restauración, RPO, RTO, aislamiento frente a ransomware y cuentas necesarias para recuperar.
- Considerar desconexión controlada, rotación de credenciales, revisión de persistencia, segmentación y priorización de servicios críticos.
- En crisis, separar comunicación ejecutiva, técnica, legal, regulatoria y usuarios.
- No recomendar pago, negociación o decisiones legales; orientar a evaluación ejecutiva, legal y de continuidad.

## BCP/DRP

- Identificar procesos críticos, dependencias, RTO/RPO, responsables, recursos mínimos y orden de recuperación.
- Mantener runbooks con prechecks, pasos, validación, rollback, escalamiento y evidencias.
- Probar restauraciones y ejercicios de mesa; no asumir que un backup existe porque el job aparece exitoso.

## Validación mínima

- Alcance afectado.
- Evidencia preservada.
- Línea de tiempo inicial.
- Contención aplicada y validada.
- Plan de recuperación.
- Lecciones aprendidas y acciones preventivas.
