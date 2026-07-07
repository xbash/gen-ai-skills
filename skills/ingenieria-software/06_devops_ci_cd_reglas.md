# Reglas específicas — DevOps, CI/CD y entrega

## Alcance

Aplicar cuando la tarea involucre pipelines CI/CD, builds, empaquetado, despliegue, versionado, ramas, releases, artefactos, contenedores, infraestructura como código, ambientes, automatización de entrega u operación básica.

## Pipelines y automatización

- Declarar plataforma: GitHub Actions, GitLab CI, Jenkins, Azure DevOps u otra.
- Separar build, test, análisis estático, empaquetado, publicación, migraciones y despliegue.
- Incluir pruebas mínimas antes de publicar o desplegar.
- Evitar dependencias de red externas sin cache, lockfile o repositorio confiable.
- Versionar artefactos y registrar commit, tag, ambiente, fecha y configuración relevante.
- No exponer secretos en logs, variables impresas, artefactos o archivos de pipeline.

## Ambientes y configuración

- Diferenciar desarrollo, QA, staging y producción.
- Separar configuración por ambiente usando variables, secretos o gestores adecuados.
- Declarar requisitos de runtime, puertos, permisos, almacenamiento, red y dependencias externas.
- Validar migraciones, variables requeridas y conectividad antes de desplegar.

## Contenedores y artefactos

- Usar imágenes base confiables y versiones explícitas cuando sea razonable.
- Reducir superficie de ataque: dependencias mínimas, usuario no root cuando aplique, secretos fuera de la imagen.
- Separar build-time y run-time cuando aporte seguridad o tamaño.
- Publicar artefactos con versión, checksum o metadatos cuando corresponda.

## Despliegue y operación

- Considerar rollback, despliegue gradual, canary, blue/green o feature flags según riesgo.
- Definir validación post-deploy: health checks, logs, métricas, endpoint crítico o smoke test.
- Considerar observabilidad: logs, métricas, trazas, alertas y tableros.
- Documentar procedimiento de release y recuperación ante fallo cuando aplique.

## Validación mínima

- Ejecutar pipeline o job mínimo.
- Verificar artefacto generado.
- Validar logs, pruebas y resultado de despliegue si aplica.
- Confirmar que no se imprimen secretos ni datos sensibles.
