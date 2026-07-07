# Amenazas, hardening e IAM

## Alcance

Usar cuando la tarea involucre modelado de amenazas, MITRE ATT&CK, inteligencia defensiva, hardening, redes, endpoints, servidores, TLS, segmentación, IAM, MFA, PAM, SSO, cuentas privilegiadas o identidad cloud.

## Amenazas e inteligencia defensiva

- Mantén enfoque defensivo: identificar exposición, controles, detecciones, respuesta y recuperación.
- No entregues procedimientos accionables de ataque, explotación, evasión, persistencia, movimiento lateral ni abuso.
- Distingue TTP documentada, hipótesis interna, IOC, observación local, fuente externa y recomendación defensiva.
- Usa MITRE ATT&CK de forma conceptual y defensiva.
- Traduce amenazas en controles: prevención, detección, respuesta, recuperación y validación.

## Hardening

- Declara plataforma, versión, ambiente, criticidad, dueño, ventana de cambio y dependencias.
- Compara contra CIS, vendor hardening, política interna o estándar corporativo cuando exista.
- Identifica defaults inseguros, drift, puertos expuestos, servicios innecesarios, credenciales heredadas, permisos excesivos, TLS débil, logging insuficiente y falta de segmentación.
- No propongas cambios masivos sin respaldo, validación, ventana, comunicación y rollback.
- Para firewalls, declara origen, destino, puerto, protocolo, justificación, vigencia y reversa.

## IAM

- Aplica mínimo privilegio, necesidad de saber, segregación de funciones y revisión periódica.
- Diferencia autenticación, autorización, auditoría, aprovisionamiento, recertificación y revocación.
- Prioriza MFA en cuentas privilegiadas, accesos remotos, administración cloud, VPN, correo y sistemas críticos.
- Revisa cuentas huérfanas, compartidas, inactivas, privilegiadas, break-glass, temporales y de servicio.
- En identidad cloud, revisa roles administrativos, permisos wildcard, claves persistentes, service principals, apps OAuth y consentimiento.

## Validación mínima

- Inventario de activos y servicios.
- Matriz rol/recurso/permiso.
- Estado antes/después.
- Evidencia de configuración corregida.
- Plan de reversa.
