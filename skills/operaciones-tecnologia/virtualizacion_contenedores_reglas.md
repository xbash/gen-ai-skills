# Reglas específicas — Virtualización, contenedores y plataformas

## Alcance

Aplicar cuando la tarea involucre KVM, OLVM, VMware, Hyper-V, Podman, Docker, compose, Kubernetes, OpenShift, imágenes, volúmenes, redes, rootless containers, almacenamiento persistente o despliegue de servicios.

## Buenas prácticas

- Declarar plataforma, versión y modo de ejecución: VM, root/rootless, compose, systemd, Kubernetes, OpenShift u otro.
- Separar configuración, secretos, volúmenes, redes, puertos, variables de entorno y manifiestos.
- Validar imágenes, tags, registros, permisos, UID/GID, SELinux, rutas persistentes y puertos.
- No hardcodear secretos en compose, manifiestos, scripts, imágenes o logs.
- Considerar entornos sin internet: repositorios internos, registro local, imágenes previamente cargadas y mirrors.
- Validar ciclo de vida: pull/load, create, start, healthcheck, logs, stop, backup, restore y rollback.
- Para rootless, validar subuid/subgid, systemd user services, lingering, rutas, puertos bajos y permisos.
- Documentar puertos expuestos, volúmenes persistentes, variables requeridas y dependencias entre servicios.

## Contenedores y Kubernetes

- Para contenedores, diferenciar build, runtime, volumen persistente, red, healthcheck y logs.
- Para Kubernetes/OpenShift, validar namespace, context, permisos RBAC, secrets, configmaps, deployments, services, ingress/routes, PVC, probes y limits/requests.
- No aplicar manifiestos en producción sin revisar contexto, namespace y diff de cambios.
- Considerar readiness/liveness probes, resource limits, rollout status, rollback y eventos del cluster.
- Evitar imágenes `latest` en entornos controlados salvo justificación.

## Virtualización

- Para VMs, validar CPU, memoria, disco, snapshots, red, datastore, herramientas de guest, backups y dependencia de host.
- No usar snapshots como respaldo permanente.
- Considerar impacto de overcommit, thin provisioning, crecimiento de discos y afinidad/anti-afinidad.

## Validación mínima

- Prueba de humo: servicio levanta, puertos escuchan, healthcheck responde, logs no muestran errores críticos.
- Verificar persistencia de datos y reinicio controlado.
- Validar conectividad entre contenedores/VMs y hacia dependencias externas.

## Riesgos habituales

- Pérdida de datos por volúmenes mal definidos.
- Puertos en conflicto.
- Permisos incorrectos en rootless.
- Dependencia de imágenes externas no disponibles.
- Mezclar configuración QA/PROD.
- Aplicar manifiestos en namespace o cluster incorrecto.
