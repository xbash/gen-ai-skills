# Reglas específicas — Windows Server y PowerShell

## Alcance

Aplicar cuando la tarea involucre Windows Server, PowerShell, servicios, tareas programadas, IIS/Tomcat sobre Windows, logs, archivos, procesos, sesiones RDP, certificados, firewall, red, Active Directory básico o automatizaciones administrativas.

## Buenas prácticas

- Declarar versión objetivo: Windows Server 2016/2019/2022/2025 si aplica, PowerShell 5.1 o 7.x.
- Validar edición, rol del servidor, permisos, política de ejecución, módulos instalados y compatibilidad de comandos.
- Usar `-LiteralPath` cuando se manipulen rutas entregadas por usuario o rutas con caracteres especiales.
- Validar existencia de rutas, archivos, servicios, procesos, usuarios, privilegios, permisos y espacio disponible.
- Separar configuración global de lógica: rutas, servicios, patrones, extensiones, exclusiones, puertos, hosts y umbrales.
- Usar funciones con nombres claros en español, por ejemplo `Validar-Ruta`, `Escribir-Log`, `Ejecutar-PruebaHumo`.
- Usar `try/catch`, `$ErrorActionPreference` cuando corresponda y mensajes de error claros.
- Registrar inicio, fin, actor, host, resultado, errores relevantes y duración.
- No exponer credenciales, tokens, strings de conexión ni datos sensibles en consola o logs.
- Para acciones masivas o destructivas, exigir confirmación interactiva, lista blanca, modo simulación o respaldo previo.

## Operación Windows

- Para servicios, validar nombre real, dependencias, estado actual, usuario de ejecución, puertos y logs antes de reiniciar.
- Para tareas programadas, validar usuario, permisos, horario, working directory, ruta del script, argumentos y historial de ejecución.
- Para IIS, validar application pool, bindings, certificados, permisos de carpeta, logs, puertos y dependencias externas.
- Para firewall, declarar perfil, dirección, puerto, protocolo, origen permitido y reversa.
- Evitar detener servicios, matar procesos o cambiar permisos críticos sin validación explícita.

## Validación mínima

- Prueba de humo: validar permisos, rutas, existencia de comandos, escritura de logs y lectura de parámetros.
- Verificación posterior: estado de servicios, existencia de respaldos, archivos creados/eliminados, procesos afectados o cambios aplicados.
- Revisar Event Viewer, logs de aplicación, logs de servicios y errores de PowerShell cuando aplique.

## Riesgos habituales

- Eliminar archivos por wildcard no controlado.
- Cerrar procesos críticos.
- Cambiar hora/sincronización sin restaurar configuración.
- Ejecutar como administrador sin control de alcance.
- Usar rutas hardcodeadas sin validar ambiente.
- Exponer credenciales en historial, transcript o logs.
