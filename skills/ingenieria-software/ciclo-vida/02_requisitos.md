# Skill SDLC — Análisis y especificación de requisitos

## Uso
Activar en la etapa correspondiente del ciclo de vida; puede repetirse iterativamente. Skills técnicas relacionadas: `diseno_arquitectura_reglas.md; cli_pipeline_reglas.md` (cargar solo las pertinentes).

## Objetivo
Traducir objetivos aprobados en requisitos comprobables y criterios de aceptación.

## Reglas transversales obligatorias
- Leer `instrucciones_base_dev.md`, los artefactos vigentes del proyecto y las skills técnicas aplicables. No asumir acceso a archivos no suministrados.
- Trabajar inicialmente en **solo lectura**: analizar y proponer; no escribir código ni alterar archivos sin autorización explícita para la ejecución.
- Distinguir evidencia comprobada, decisión aprobada, hipótesis, supuesto y pendiente. No inventar métricas, experimentos ni resultados.
- Mantener identificadores trazables: OBJ (objetivo), REQ (requisito), DIS (diseño), IMP (implementación), PRU (prueba), EVI (evidencia), DEC (decisión), CAM (cambio).
- Cada entregable debe identificar fuente, versión o fecha, dependencias, riesgos y criterios de aceptación. No crear documentación redundante si existe un documento canónico.
- Para la tesis: separar validez científica (datos, metodología, inferencia, evaluación) de corrección del software; documentar incertidumbre y amenazas a la validez.
- Terminar con una puerta de control: `APROBADO`, `CONDICIONADO` o `BLOQUEADO`, con justificación verificable. La IA solo recomienda; la aprobación corresponde al responsable humano.

## Procedimiento
1. Leer objetivos y límites aprobados; identificar usuarios, investigadores, entradas, salidas, fuentes y restricciones.
2. Formular requisitos funcionales (REQ-F) y no funcionales (REQ-NF), cada uno atómico, inequívoco, priorizado y verificable.
3. Definir contratos de datos: esquema, unidad, CRS, resolución espacial/temporal, procedencia, cobertura, nulos, duplicados, licencias y reglas de calidad cuando apliquen.
4. Especificar criterios de aceptación medibles, escenarios nominales, fallos esperables y requisitos de trazabilidad/reproducibilidad.
5. Elaborar matriz `OBJ → REQ → aceptación → prueba prevista`; detectar requisitos huérfanos y objetivos sin cobertura.
6. Separar requisitos del producto de hipótesis científicas, criterios de evaluación del modelo y decisiones de diseño.

## Salida obligatoria
Catálogo priorizado de requisitos; contratos de entradas/salidas; matriz de trazabilidad; criterios de aceptación; supuestos, conflictos y preguntas abiertas.

## Puerta de control
No pasar a diseño con requisitos críticos ambiguos o sin criterio de aceptación; no inventar umbrales de calidad o desempeño.

## Prompt de invocación
> Actúa como revisor académico y responsable de ingeniería de software. Aplica esta skill a los artefactos efectivamente disponibles del proyecto. Trabaja en solo lectura; distingue hechos, hipótesis y faltantes; entrega únicamente los productos especificados, una matriz de trazabilidad y un dictamen de avance con evidencia. No implementes ni modifiques archivos sin autorización explícita.
