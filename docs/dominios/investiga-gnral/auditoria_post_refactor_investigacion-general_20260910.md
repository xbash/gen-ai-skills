# Auditoría post-refactor — investigacion-general

Fecha: 20260910  
Modo: AUDITORÍA_POST_REFACTOR  
Ruta auditada: `skills/investigacion-general/`

## Alcance y evidencia

Se comprobó el estado actual de los ocho Markdown del dominio y se contrastó con la auditoría funcional, el plan y el reporte de ejecución indicados. La revisión es estática: no ejecuta investigaciones ni prueba el comportamiento de un modelo con las combinaciones de carga.

El inventario es exacto: `README.md`, base, checklist y cinco módulos. La estructura es plana, sin subdirectorios ni `SKILL.md`. Todas las referencias Markdown internas detectadas resuelven a archivos existentes.

## Fidelidad plan → implementación

Las acciones `IG-P1-01` a `IG-P1-07` figuran `PASS` en el reporte, incluida la validación final `PASS`. La implementación conserva el diseño previsto: router, base transversal compacta, cinco módulos con responsabilidad propia y checklist auxiliar de cierre.

| Dimensión | Antes | Después | Resultado |
|---|---|---|---|
| Fragmentación | Base única y checklist; cinco workflows concentrados. | Base, router, cinco módulos y checklist, sin micro-módulos. | PASS |
| Activación selectiva | No había router ni contrato explícito de carga. | Base siempre, un módulo principal, secundarios por dependencia y checklist al cierre. | PASS |
| Cobertura | Fundamentos concentrados, con criterios dispersos. | Los cinco workflows conservan cobertura en módulos específicos. | PASS |
| Redundancia | Baja, pero el detalle especializado convivía en la base. | Baja; la base retiene invariantes y los módulos el detalle. | PASS |
| Densidad | La base reunía contexto no pertinente para tareas parciales. | La carga normal permite seleccionar solo el módulo pertinente. | PASS estático |
| Mantenibilidad | Cambios especializados afectaban la base monolítica. | Responsabilidades y archivos de destino explícitos. | PASS |
| Costo de contexto | No existía selección declarada. | Se reduce el contexto potencialmente irrelevante por selección; no hay medición de tokens. | PASS cualitativo |
| Ambigüedad | Routing no explícito. | Triggers, anti-triggers y precedencia explícitos. | PASS |

## Arquitectura, routing y fronteras

La arquitectura debe **MANTENERSE**. `README.md` y `instrucciones_base_investiga.md` declaran el mismo patrón: README para routing, base siempre, un módulo principal, módulos secundarios solo por dependencia concreta y checklist solo al cierre o revisión. Ambos prohíben cargar todos los módulos por defecto.

Cada módulo conserva una frontera verificable mediante `Usar cuando` y `No usar cuando`:

- diseño/datos: formulación, diseño, medición, muestra, calidad y validez;
- evidencia/fuentes: búsqueda, selección, verificación y trazabilidad;
- análisis/inferencia: resultados, incertidumbre, inferencia y límites;
- reproducibilidad/trazabilidad: artefactos, versiones, verificación y cambios;
- ética/integridad: actores, privacidad, integridad, impacto y límites de uso.

No se observó que un módulo sustituya el workflow principal de otro, ni que el checklist haya pasado a ser instrucción inicial.

## Base compacta, multimetodología y trazabilidad

La base conserva sus seis secciones contractuales, alcance transversal, no invención, proporcionalidad, separación entre evidencia e inferencia, límites de causalidad, faltantes y formato de respuesta. El detalle especializado se delega expresamente a los cinco módulos; no se detecta pérdida normativa respecto de la matriz de doce responsabilidades registrada en el reporte.

Los enfoques cuantitativo, cualitativo, mixto, documental, experimental, observacional, evaluativo y aplicado siguen explícitos como criterios condicionales. No se convirtieron en módulos independientes ni se impuso un método universal.

## Densidad, límites de evidencia y redundancia

La mejora de carga selectiva es verificable por la estructura y el contrato, pero no permite afirmar ahorros de tokens, mejora de calidad o desempeño sin una evaluación funcional con encargos representativos. Las referencias cruzadas son breves y necesarias para el routing; no se encontró duplicación normativa con la misma autoridad y propósito entre base, módulos y checklist.

## Hallazgos

| Prioridad | Hallazgo | Impacto | Decisión |
|---|---|---|---|
| P2 | Falta una evaluación funcional independiente que pruebe las cargas selectivas con tareas representativas de los enfoques declarados. | No impide validar la arquitectura estática, pero limita cualquier afirmación sobre comportamiento, calidad o costo de contexto. | Backlog no bloqueante; no requiere cambio de archivos ni plan de ejecución. |

P0: 0. P1: 0. P2: 1. P3: 0.

## Cierre

- ESTADO_POST_REFACTOR: **APROBADO_CON_MEJORAS**.
- ARQUITECTURA: **MANTENER**.
- BASE_COMPACTA, ROUTING, FRONTERAS_MODULOS, MULTIMETODOLOGIA y TRAZABILIDAD: **PASS**.
- PERDIDA_NORMATIVA: **NO**.
- REDUNDANCIA: **BAJA**.
- AMBIGÜEDAD_SIGNIFICATIVA: **NO**.
- REVISION_TERRA_ALTA: **NO**.
- PLAN_EJECUCION_LUNA: **NO REQUERIDO**, porque P0 y P1 son cero, no hay ambigüedad significativa y la validación final figura PASS.
- ESTADO_WORKFLOW: **STABLE**.

La mejora P2 puede validarse en una fase futura, sin reabrir alternativas de arquitectura ni crear nuevos módulos mientras no exista evidencia concreta de una brecha.
