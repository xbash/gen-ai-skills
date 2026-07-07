# Reglas específicas — Hardening y configuración de infraestructura aplicativa

## Alcance

Aplicar cuando la tarea involucre servidores, OS, middleware, bases de datos, redes, TLS, firewall, puertos, servicios, permisos, usuarios, logs, baselines, drift de configuración o infraestructura que soporta aplicaciones.

## Buenas prácticas

- Declarar plataforma, versión, ambiente, criticidad, dueño, ventana de cambio y dependencias.
- Comparar contra baseline cuando exista: CIS, vendor hardening, política interna u otro.
- Identificar defaults inseguros, puertos expuestos, servicios innecesarios, credenciales heredadas, permisos excesivos, TLS débil, logs insuficientes y falta de segmentación.
- Priorizar cambios de bajo riesgo y alto impacto.
- No proponer cambios masivos sin respaldo, validación, ventana, monitoreo y rollback.
- Considerar disponibilidad, compatibilidad, dependencia entre servicios y operación.
- Usar scripts en modo lectura/dry-run antes de modificar.

## Infraestructura de aplicación

- Revisar servidores web, reverse proxies, app servers, DB, colas, caches, storage, jobs y servicios auxiliares.
- Para TLS, revisar certificado, expiración, cadena, hostname, protocolos, ciphers y automatización de renovación.
- Para headers/cabeceras, configurar según contexto y validar que no rompan integraciones.
- Para logs, registrar eventos relevantes sin exponer secretos o datos personales.
- Para permisos, aplicar mínimo privilegio en usuarios, servicios, filesystem, red y credenciales.

## Validación mínima

- Inventario de activos y servicios.
- Estado antes/después.
- Prueba de conectividad y funcionalidad.
- Evidencia de configuración corregida.
- Plan de reversa.
- Monitoreo posterior si hay impacto en servicio.
