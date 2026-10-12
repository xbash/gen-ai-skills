# Skill SDLC — Desarrollo e implementación controlada

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `instrucciones_base_dev.md; cli_pipeline_reglas.md; notebooks_reproducibles_reglas.md; checklist_codigo_dev.md` (cargar solo las pertinentes).

## Objetivo
Implementar exclusivamente trabajo aprobado, con cambios pequeños y trazables.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Comprobar autorización, requisitos y diseño aprobados; revisar estado real del repositorio.
2. Proponer cambios por unidad lógica con ID IMP, archivos afectados, dependencias y riesgos; no refactorizar por estética.
3. Implementar solo después de aprobación explícita; conservar convenciones existentes y separar configuración, datos, lógica y resultados.
4. Incorporar validaciones, errores, logs, metadatos de ejecución y pruebas proporcionales; respetar dependencias y entornos existentes.
5. Vincular cada cambio a REQ/DIS/PRU y registrar comandos, entorno y resultados realmente observados.
6. Identificar desviaciones que requieren volver a requisitos o diseño; no redefinir alcance silenciosamente.

## Salida obligatoria
Plan o parche autorizado; matriz `IMP | REQ | DIS | Archivos | Prueba | Estado`; síntesis de cambios, pruebas realizadas y pendientes.

## Puerta de control
No declarar terminado un cambio sin evidencia de ejecución y criterios de aceptación satisfechos; si no se ejecutó, indicarlo.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
