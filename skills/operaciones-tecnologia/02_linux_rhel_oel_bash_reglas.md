# Reglas específicas — Linux RHEL/OEL, Bash y Python operacional

## Alcance

Aplicar cuando la tarea involucre Linux, RHEL/OEL 7/8/9, Bash, Python operacional, systemd, chrony/NTP, firewalld, SELinux, repositorios, servicios, logs, permisos, certificados, filesystem o automatización administrativa.

## Buenas prácticas

- Declarar sistema operativo objetivo, versión, shell y arquitectura cuando sea relevante.
- Validar usuario efectivo, privilegios, shell, comandos disponibles, repositorios y dependencias.
- Usar `set -o errexit`, `set -o nounset` y `set -o pipefail` con criterio; no aplicar si rompe flujos controlados.
- Separar configuración: rutas, servicios, puertos, usuarios, hosts, repositorios, archivos, umbrales y flags.
- Usar funciones pequeñas con nombres en español: `validar_comando`, `registrar_log`, `ejecutar_prueba_humo`.
- Validar rutas, permisos, servicios, procesos, puertos, firewall, SELinux y conectividad antes de cambiar estado.
- Registrar inicio, fin, host, usuario, errores, resultado y duración.
- Usar archivos temporales de forma segura y limpiar recursos.
- No exponer secretos en consola, logs, variables persistentes, archivos temporales o historial.
- Considerar servidores sin internet, proxys, repositorios internos y restricciones de firewall.

## Operación Linux

- Para `systemd`, validar unidad, dependencias, usuario, working directory, logs, restart policy y estado previo.
- Para SELinux, diagnosticar contexto y denials antes de deshabilitar; preferir ajustes mínimos y reversibles.
- Para repositorios, validar fuente, GPG keys, proxy, mirror interno, versión y ambiente.
- Para filesystem, validar punto de montaje, espacio libre, inodos, permisos, owner/group y procesos usando archivos.
- Para acciones críticas, incluir confirmación, dry-run, respaldo o rollback.

## Validación mínima

- Prueba de humo: comandos requeridos, permisos, escritura de logs, conectividad esperada y detección de versión.
- Verificación posterior: `systemctl status`, `journalctl`, archivos modificados, puertos escuchando, reglas de firewall, sincronización horaria o logs.
- Validar salida y código de retorno de comandos relevantes.

## Riesgos habituales

- Cambios irreversibles en `/etc`.
- Permisos demasiado amplios.
- Servicios deshabilitados accidentalmente.
- Scripts con CRLF ejecutados en Linux.
- Uso de comandos destructivos sin validación de variables.
- Deshabilitar SELinux/firewall como solución permanente sin análisis.
