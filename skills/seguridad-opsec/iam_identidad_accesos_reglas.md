# Reglas específicas — IAM, identidad y accesos

## Alcance

Aplicar cuando la tarea involucre cuentas, roles, permisos, MFA, privilegios, PAM, directorios, federación, SSO, accesos de terceros, cuentas de servicio, revisiones periódicas, identidad cloud o ciclo de vida de usuarios.

## Principios

- Aplicar mínimo privilegio, necesidad de saber, segregación de funciones y revisión periódica.
- Diferenciar autenticación, autorización, auditoría, aprovisionamiento, recertificación y revocación.
- Priorizar MFA en cuentas privilegiadas, accesos remotos, administración cloud, VPN, correo y sistemas críticos.
- Considerar ciclo de vida JML: joiner, mover, leaver.
- Documentar excepciones, dueño, vigencia y control compensatorio.

## Revisiones de acceso

- Revisar cuentas huérfanas, compartidas, inactivas, privilegiadas, break-glass, temporales y de servicio.
- Validar dueño de cuenta, justificación, último uso, permisos efectivos, grupo/rol y evidencia.
- Para cuentas de servicio, revisar propósito, rotación de secretos, permisos, expiración, propietario y dependencia.
- Para terceros, definir alcance, vigencia, MFA, logs, revisión y proceso de baja.

## Identidad cloud y SaaS

- Revisar roles administrativos, permisos wildcard, claves persistentes, service principals, apps OAuth y consentimiento.
- Monitorear inicios de sesión riesgosos, MFA fatigue, impossible travel, cambios de rol y creación de credenciales.
- No exponer identidades, correos, tokens ni credenciales en reportes innecesarios.

## Validación mínima

- Matriz rol/recurso/permiso.
- Cuentas privilegiadas identificadas.
- MFA y logs verificados.
- Proceso de alta/baja/cambio.
- Evidencia de revisión de accesos.
