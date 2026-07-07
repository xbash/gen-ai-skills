# Reglas específicas — Cloud, contenedores y Kubernetes para aplicaciones

## Alcance

Aplicar cuando la tarea involucre cloud, IAM, redes, buckets/storage, funciones serverless, contenedores, Docker/Podman, Kubernetes, OpenShift, imágenes, secrets, ingress, policies, CI/CD cloud o workloads de aplicación.

## Cloud aplicado a producto

- Declarar proveedor, servicio, región, ambiente, cuenta/proyecto y alcance autorizado.
- Revisar IAM con mínimo privilegio, exposición pública, secretos, redes, logs, cifrado, buckets/storage y políticas.
- Validar identidad activa, permisos y contexto antes de sugerir cambios.
- No asumir equivalencia entre proveedores cloud sin validar documentación.
- Considerar monitoreo, alertas, drift, costos, cumplimiento y privacidad.

## Contenedores

- Revisar usuario no root, base image, paquetes, puertos, capabilities, montajes, filesystem read-only, secrets y healthchecks.
- Evitar secretos en imágenes, Dockerfiles, compose, manifests, variables impresas o logs.
- Revisar imágenes firmadas, procedencia, SBOM, CVEs, tag pinning y actualización de base image.
- Validar que el contenedor no requiera privilegios innecesarios.

## Kubernetes/OpenShift

- Revisar RBAC, namespaces, network policies, secrets, security context, admission policies, resources, images, ingress/routes y service accounts.
- Considerar Pod Security Standards, runtime security, límites de recursos, hostPath, privileged containers, hostNetwork y exposición externa.
- Validar configuración de ingress, TLS, rutas, autenticación externa y logs.
- Evitar comandos destructivos sin confirmación, respaldo y rollback.

## Validación mínima

- Revisión de configuración efectiva.
- Prueba de despliegue o dry-run cuando aplique.
- Validación de permisos mínimos.
- Verificación de exposición externa.
- Evidencia de logs/monitoreo.
- Criterio de rollback.
