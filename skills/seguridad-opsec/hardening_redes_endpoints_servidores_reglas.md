# Reglas específicas — Hardening de redes, endpoints y servidores

## Alcance

Aplicar cuando la tarea involucre configuración segura de sistemas operativos, endpoints, servidores, redes, firewalls, TLS, servicios expuestos, logging, EDR, antivirus, segmentación, baselines, parches de configuración o reducción de superficie.

## Buenas prácticas

- Declarar plataforma, versión, ambiente, criticidad, dueño, ventana de cambio y dependencias.
- Comparar contra baseline cuando exista: CIS, vendor hardening, política interna, estándar corporativo u otro.
- Identificar defaults inseguros, drift, puertos expuestos, servicios innecesarios, credenciales heredadas, permisos excesivos, TLS débil, logging insuficiente y falta de segmentación.
- Priorizar mínimo privilegio, reducción de superficie, segmentación, visibilidad y control de cambios.
- No proponer cambios masivos sin respaldo, validación, ventana, comunicación y rollback.
- Considerar compatibilidad operacional y dependencias entre servicios antes de endurecer.
- Usar modo lectura, auditoría o dry-run antes de modificar cuando sea posible.

## Redes y servicios

- Para firewalls, declarar origen, destino, puerto, protocolo, justificación, vigencia y reversa.
- Para TLS, revisar versión, certificados, expiración, cadena, ciphers, hostname y compatibilidad.
- Para servicios expuestos, validar necesidad, autenticación, logs, rate limits, segmentación y monitoreo.
- Para endpoints/servidores, revisar EDR/AV, firewall local, logging, cuentas locales, privilegios, puertos, shares y servicios.

## Validación mínima

- Inventario de activos y servicios.
- Estado antes/después.
- Prueba de conectividad y funcionalidad.
- Evidencia de configuración corregida.
- Plan de reversa.
- Monitoreo posterior o alerta si el cambio impacta servicios críticos.
