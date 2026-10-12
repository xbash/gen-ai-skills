# Skill SDLC — Diseño y arquitectura

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `diseno_arquitectura_reglas.md; bases_datos_sql_reglas.md; cli_pipeline_reglas.md` (cargar solo las pertinentes).

## Objetivo
Definir una solución mínima, evaluable y reproducible antes de programar.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Revisar requisitos aprobados y restricciones de datos, cómputo y metodología.
2. Proponer al menos una solución mínima y, cuando exista una decisión relevante, alternativas con trade-offs.
3. Diseñar componentes, interfaces, dependencias, flujo de datos, entradas/salidas, errores, estados, configuración y artefactos.
4. Diseñar pruebas y controles de calidad desde cada requisito; definir identificadores DIS y PRU.
5. Documentar decisiones arquitectónicas (ADR breves), riesgos de seguridad y reproducibilidad, estrategia de versionado y experimentación.
6. Descomponer implementación en acciones atómicas, ordenadas, verificables y sin trabajo innecesario.

## Salida obligatoria
Arquitectura textual; contratos; matriz `REQ | DIS | PRU | Riesgo`; ADR; plan de implementación priorizado con archivos afectados y validación.

## Puerta de control
No codificar si los contratos esenciales o decisiones metodológicas que condicionan el diseño siguen abiertos.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
