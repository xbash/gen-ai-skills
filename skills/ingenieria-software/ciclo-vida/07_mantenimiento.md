# Skill SDLC — Mantenimiento y evolución controlada

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `pruebas_calidad_reglas.md; devops_ci_cd_reglas.md; auditar_codigo_contra_skill.md` (cargar solo las pertinentes).

## Objetivo
Gestionar defectos, cambios metodológicos y mejoras sin perder trazabilidad ni comparabilidad.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Clasificar solicitud como corrección, adaptación, mejora, cambio de requisito o cambio metodológico.
2. Establecer línea base: versión, comportamiento previo, datos, configuración, resultados y evidencia disponible.
3. Analizar impacto en OBJ, REQ, DIS, IMP, PRU, EVI, documentación, datasets y experimentos anteriores.
4. Definir plan mínimo, pruebas de regresión, migración y reversión cuando aplique.
5. Repetir etapas previas afectadas antes de implementar; evitar cambios silenciosos en etiquetas, particiones o métricas.
6. Actualizar registro de cambios y decisiones; declarar si los resultados históricos siguen siendo comparables.

## Salida obligatoria
Solicitud CAM; análisis de impacto; plan y pruebas de regresión; cambios de versión; actualización de matriz de trazabilidad y decisiones.

## Puerta de control
No aceptar cambios que rompan reproducibilidad o comparabilidad sin documentar la ruptura y revalidar resultados afectados.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
