# Skill SDLC — Pruebas, verificación y validación científica

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `pruebas_calidad_reglas.md; checklist_codigo_dev.md; notebooks_reproducibles_reglas.md` (cargar solo las pertinentes).

## Objetivo
Comprobar tanto la corrección del software como la validez metodológica de los resultados.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Construir matriz `REQ → PRU → EVI`, con entradas, procedimiento, resultado esperado, resultado observado y estado.
2. Ejecutar o planificar pruebas unitarias, integración, regresión, errores y humo según riesgo; no inventar ejecuciones.
3. Revisar integridad y procedencia de datos, calidad de etiquetas, cobertura, faltantes, desbalance, consistencia espacial y temporal.
4. Evaluar riesgos de fuga de información y definir particiones temporales/espaciales coherentes con la pregunta de investigación.
5. Si existen modelos predictivos, justificar baselines, métricas, incertidumbre, sensibilidad y límites de generalización; evitar reportar métricas inexistentes.
6. Separar fallos de software, defectos de datos, amenazas a validez y limitaciones del estudio; registrar evidencia reproducible.

## Salida obligatoria
Plan/informe de pruebas; matriz `PRU | REQ | Esperado | Observado | EVI | Estado`; hallazgos priorizados; amenazas a la validez; decisión de aceptación.

## Puerta de control
Bloquear entrega ante fallos críticos o evidencia insuficiente de requisitos esenciales; un programa sin errores no implica resultados científicamente válidos.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
