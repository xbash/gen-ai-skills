# Supply chain, hardening, cloud y Kubernetes

## Alcance

Usar cuando la tarea involucre dependencias, SBOM, SCA, CVEs, licencias, EOL/EOS, integridad de artefactos, hardening de infraestructura aplicativa, cloud, contenedores, Kubernetes, secrets, ingress, policies o workloads.

## Supply chain

- No inventes CVEs, versiones afectadas, severidades ni explotación activa.
- Verifica paquete, versión, ecosistema, fuente, advisory y contexto.
- Diferencia vulnerabilidad, obsolescencia, licencia riesgosa, configuración insegura, dependencia transitiva y riesgo operacional.
- Genera SBOM cuando aplique usando SPDX o CycloneDX.
- Valida procedencia, firmas, checksums, repositorios confiables y política de descarga.
- Revisa lockfiles, SCA, secret scanning, build reproducible, artefactos y permisos de pipeline.

## Hardening

- Declara plataforma, versión, ambiente, criticidad, dueño, ventana y dependencias.
- Compara contra CIS, vendor hardening o política interna cuando exista.
- Identifica defaults inseguros, puertos expuestos, servicios innecesarios, credenciales heredadas, permisos excesivos, TLS débil, logs insuficientes y falta de segmentación.
- No propongas cambios masivos sin respaldo, validación, ventana, monitoreo y rollback.

## Cloud, contenedores y Kubernetes

- Revisa IAM con mínimo privilegio, exposición pública, secretos, redes, logs, cifrado, buckets/storage y políticas.
- En contenedores, revisa usuario no root, base image, paquetes, puertos, capabilities, montajes, filesystem read-only, secrets y healthchecks.
- En Kubernetes, revisa RBAC, namespaces, network policies, secrets, security context, admission policies, resources, images, ingress/routes y service accounts.
- Evita comandos destructivos sin confirmación, respaldo y rollback.

## Validación mínima

- Inventario de dependencias/activos.
- Fuente verificable.
- Dry-run o revisión efectiva cuando aplique.
- Build/test posterior.
- Evidencia de configuración corregida.
- Plan de rollback.
