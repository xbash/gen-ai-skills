# Skill SDLC — Despliegue y entrega reproducible

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `devops_ci_cd_reglas.md; contenedor_pipeline_reglas.md; seguridad_codigo_reglas.md` (cargar solo las pertinentes).

## Objetivo
Liberar un artefacto verificable que terceros puedan instalar, ejecutar y evaluar.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Definir destinatario y entorno de entrega: local, contenedor, notebook o servidor; no asumir producción comercial.
2. Identificar versión del código, dependencias, configuración, datos disponibles, licencias y requisitos de cómputo.
3. Preparar instrucciones de instalación, ejecución, parámetros, entradas, salidas, logs y solución de fallos conocidos.
4. Probar reconstrucción o ejecución desde entorno limpio cuando sea viable y registrar qué se verificó realmente.
5. Verificar exclusión de credenciales y datos restringidos; incluir checksums/identificadores de artefactos cuando aporte trazabilidad.
6. Definir rollback o recuperación apropiados al riesgo; obtener aprobación del responsable.

## Salida obligatoria
Manifiesto de entrega; instrucciones reproducibles; registro de versiones y artefactos; prueba de humo de despliegue; limitaciones y pendientes.

## Puerta de control
No afirmar reproducibilidad completa sin verificación independiente; distinguir reproducibilidad de entorno, datos, proceso y resultados.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
