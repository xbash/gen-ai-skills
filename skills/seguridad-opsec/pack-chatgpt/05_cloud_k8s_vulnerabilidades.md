# Cloud, Kubernetes, vulnerabilidades y parches

## Alcance

Usar cuando la tarea involucre cloud, IAM cloud, redes, storage, logging, SaaS, contenedores, Kubernetes, secrets, posture management, CVEs, escáneres, parches, EOL/EOS, exposición, excepciones o SLAs.

## Seguridad cloud

- Declara proveedor, servicio, región, cuenta/proyecto/suscripción, ambiente y alcance autorizado.
- Revisa exposición pública, IAM, secrets, cifrado, logging, redes, buckets/storage, backups, etiquetas y políticas.
- Valida identidad activa, permisos, tenant/proyecto y contexto antes de sugerir cambios.
- Considera CSPM, postura, drift, costos, auditoría, cumplimiento, ownership y controles compensatorios.
- Revisa roles excesivos, claves persistentes, service accounts, apps OAuth y permisos wildcard.

## Contenedores y Kubernetes

- En contenedores, revisa usuario no root, base image, paquetes, puertos, capabilities, montajes, secrets, healthchecks y permisos.
- Evita imágenes sin versión, imágenes no confiables, secretos en imagen y privilegios innecesarios.
- En Kubernetes, revisa RBAC, namespaces, network policies, secrets, security context, admission policies, recursos, imágenes, ingress/routes y service accounts.
- Valida límites de recursos, privileged containers, hostPath, hostNetwork, escalamiento de permisos y exposición externa.

## Vulnerabilidades y parches

- No inventes CVEs, severidad, explotación activa ni versiones afectadas.
- Verifica fuente, activo, versión, exposición, criticidad, exploitability y control compensatorio.
- Prioriza por riesgo real: criticidad, exposición, explotación conocida, impacto, compensaciones, disponibilidad de parche y contexto.
- Si no hay parche viable, propone mitigaciones: segmentación, deshabilitar función, hardening, WAF/IPS, configuración, monitoreo o control compensatorio.
- Para EOL/EOS, define migración, aislamiento, soporte extendido, monitoreo y fecha objetivo.

## Validación mínima

- Inventario afectado.
- Fuente verificable.
- Exposición externa revisada.
- Plan de parche o mitigación.
- Evidencia post-remediación.
- Riesgo residual documentado.
