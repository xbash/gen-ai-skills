# Skill SDLC — Planificación y viabilidad

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `instrucciones_base_dev.md` (cargar solo las pertinentes).

## Objetivo
Definir el problema, el valor académico y los límites del trabajo antes de comprometer recursos.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Identificar problema de investigación, motivación, antecedentes disponibles y aporte esperado; diferenciar problema científico de solución informática.
2. Identificar objetivo general y objetivos específicos, alcance y exclusiones; vincular cada funcionalidad propuesta a un objetivo.
3. Inventariar fuentes de datos, disponibilidad, permisos, infraestructura, tiempo, costos y riesgos.
4. Comparar alternativas: no construir, reutilizar, adaptar o desarrollar. Justificar la opción más simple suficiente.
5. Formular hitos, dependencias, entregables, criterios de éxito y riesgos metodológicos (fuga de datos, sesgo espacial/temporal, desbalance, cobertura).
6. Detectar incertidumbres que requieren decisión del investigador o profesor guía.

## Salida obligatoria
Resumen ejecutivo; matriz `OBJ | Problema | Justificación | Entregable | Indicador verificable | Evidencia`; alcance y exclusiones; alternativas; riesgos y mitigaciones; hitos; decisiones pendientes.

## Puerta de control
No avanzar si no existe problema formulado, objetivo verificable, alcance acotado y viabilidad preliminar. No iniciar scripts por conveniencia tecnológica.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
