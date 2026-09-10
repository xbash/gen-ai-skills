# Reglas específicas — Cloud, IaC, Kubernetes y automatización moderna

## Alcance

Aplicar cuando la tarea involucre AWS, Azure, GCP, IaaS, PaaS, redes cloud, IAM operativo, almacenamiento cloud, Terraform, Ansible, Kubernetes, OpenShift, Helm, GitOps, pipelines de infraestructura o automatización de plataformas.

## Cloud operativo

- Declarar proveedor, región, cuenta/suscripción/proyecto, ambiente, permisos y alcance.
- Validar identidad activa, perfil, tenant, subscription, project, región y contexto antes de cambiar recursos.
- Considerar IAM, mínimo privilegio, grupos, roles, service accounts, keys, políticas y rotación de credenciales.
- Considerar costos, cuotas, límites, tagging, ownership, backups, cifrado, logs y auditoría.
- No proponer recursos administrados sin revisar red, seguridad, costos, dependencia de proveedor y operación.
- Para redes cloud, declarar VPC/VNet, subnets, rutas, security groups/NSG, firewalls, NAT, DNS, peering y conectividad híbrida.

## Infraestructura como código

- Preferir cambios declarativos, revisables y versionados cuando el entorno lo permita.
- Para Terraform, validar `fmt`, `validate`, `plan`, backend remoto, state locking, workspaces y variables sensibles.
- No aplicar `apply` sin revisar plan, alcance, recursos a destruir y ambiente.
- Para Ansible, validar inventario, grupos, variables, idempotencia, check mode y limitación por hosts.
- Separar módulos, variables, secretos, outputs y ambientes.
- Proteger state files, inventarios, vaults, claves y outputs sensibles.

## Kubernetes y GitOps

- Validar cluster, namespace, context, permisos RBAC y ambiente antes de aplicar cambios.
- Revisar deployments, services, ingress/routes, configmaps, secrets, PVC, service accounts, probes, limits/requests y network policies.
- Usar `diff`, `dry-run`, `helm template`, `helm diff` o revisión equivalente cuando sea posible.
- Considerar rollout status, rollback, eventos, logs, readiness/liveness probes y recursos insuficientes.
- Para GitOps, mantener trazabilidad entre commit, manifiesto, ambiente, sincronización y estado real.

## Automatización y plataformas

- Diseñar automatizaciones idempotentes, auditables y reversibles.
- Considerar entornos sin internet, proxys, repositorios internos, registros privados y aprobaciones de cambio.
- Registrar actor, recurso, cambio, resultado, error y evidencia.
- Evitar automatizaciones con permisos amplios o credenciales persistentes innecesarias.

## Validación mínima

- Confirmar identidad, ambiente, región/proyecto y permisos antes de ejecutar.
- Ejecutar plan/dry-run/check mode cuando exista.
- Revisar recursos a crear, modificar o destruir.
- Validar post-cambio con estado del recurso, logs, métricas, conectividad y costo esperado.
