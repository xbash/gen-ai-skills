# Reglas específicas — Seguridad cloud, contenedores y Kubernetes

## Alcance

Aplicar cuando la tarea involucre cloud, IAM cloud, redes, storage, logging, SaaS, contenedores, Docker/Podman, Kubernetes, OpenShift, secrets, ingress, policies, imágenes, workloads o postura de seguridad.

## Cloud security

- Declarar proveedor, servicio, región, cuenta/proyecto/suscripción, ambiente y alcance autorizado.
- Revisar exposición pública, IAM, secrets, cifrado, logging, redes, buckets/storage, backups, etiquetas y políticas.
- Validar identidad activa, permisos, tenant/proyecto y contexto antes de sugerir cambios.
- Considerar CSPM, postura, drift, costos, auditoría, cumplimiento, ownership y controles compensatorios.
- No asumir equivalencia entre proveedores cloud sin validar documentación.
- Revisar identidad cloud: roles excesivos, claves persistentes, service accounts, apps OAuth y permisos wildcard.

## Contenedores

- Revisar usuario no root, base image, paquetes, puertos, capabilities, montajes, secrets, healthchecks y permisos de filesystem.
- Evitar imágenes sin versión, imágenes no confiables, secretos en imagen y privilegios innecesarios.
- Considerar escaneo de imágenes, SBOM, firmas, registros privados, políticas de admisión y actualización de base image.

## Kubernetes/OpenShift

- Revisar RBAC, namespaces, network policies, secrets, security context, admission policies, recursos, imágenes, ingress/routes y service accounts.
- Validar límites de recursos, privilegios, hostPath, privileged containers, hostNetwork, escalamiento de permisos y exposición externa.
- Considerar logs de audit, eventos, runtime security, separación de namespaces y controles de ingreso.
- Evitar comandos destructivos sin confirmación, respaldo y rollback.

## Validación mínima

- Revisión de configuración efectiva.
- Prueba de dry-run cuando aplique.
- Validación de permisos mínimos.
- Verificación de exposición externa.
- Evidencia de logs/monitoreo.
- Plan de remediación priorizado por riesgo.
