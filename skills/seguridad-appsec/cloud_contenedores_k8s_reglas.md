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

## Podman rootless: consideraciones de seguridad

- **Rootless por defecto:** Podman ejecuta contenedores sin daemon root; validar que `subuid`/`subgid` estén configurados para el usuario (`grep $(whoami) /etc/subuid /etc/subgid`).
- **SELinux y volúmenes:** en sistemas con SELinux activo (RHEL, Fedora), agregar `:Z` (relabel exclusivo, un solo contenedor) o `:z` (relabel compartido, varios contenedores) al montar volúmenes; sin este flag el contenedor puede no tener acceso al directorio del host.
- **`--userns=keep-id`:** mapea el UID del usuario host al mismo UID dentro del contenedor; útil cuando el proceso del contenedor escribe archivos que el host debe leer con el mismo propietario.
- **Sin privilegios innecesarios:** evitar `--privileged`; preferir capabilities mínimas con `--cap-add` solo cuando sea estrictamente necesario y documentado.
- **Registry y confianza de imágenes:** Quay.io (mantenido por Red Hat) es el registry de referencia para imágenes Podman-nativas; aplicar la misma validación de procedencia, firmas y CVEs que con Docker Hub. Preferir imágenes firmadas con Sigstore/cosign cuando estén disponibles.
- **Secretos en tiempo de ejecución:** usar `podman secret create nombre archivo` + `--secret nombre` en run para inyección segura; nunca incluir credenciales en capas de imagen.
