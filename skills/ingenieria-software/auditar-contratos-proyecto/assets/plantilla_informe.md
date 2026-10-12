# Auditoría de contratos de proyecto — <proyecto y revisión>

## Contexto y alcance

- Proyecto, finalidad, etapa, colaboración, visibilidad y tipo de solución: <hechos verificados o no verificado>.
- Fuentes y rutas examinadas: <lista concreta>.
- Estado del repositorio, exclusiones, supuestos y validaciones no realizadas: <detalle breve>.

## Inventario y matriz de aplicabilidad y cumplimiento

| Contrato | Ruta y existencia | Aplicabilidad y fuente | Resultado | Evidencia o condición pendiente |
| --- | --- | --- | --- | --- |
| <contrato> | <ruta / ausente / no verificado> | <OBLIGATORIO / RECOMENDADO / CONDICIONAL / NO_APLICA; fuente> | <CUMPLE / PARCIAL / NO_CUMPLE / NO_APLICA / NO_VERIFICADO> | <ruta, sección, línea o comprobación> |

## Hallazgos

### DOC-01 — <título>

- Tipo: `INCUMPLIMIENTO` | `RIESGO POTENCIAL` | `RECOMENDACIÓN`.
- Severidad: `CRÍTICA` | `ALTA` | `MEDIA` | `BAJA`, solo si el impacto está sustentado.
- Criterio y fuente: <requisito externo verificado / política interna / recomendación>.
- Ubicación y evidencia observada: <archivo, línea o sección y contraste verificable>.
- Impacto e inferencia: <separar efecto observado de efecto posible>.
- Contradicción o duplicación relacionada: <si existe>.
- Incertidumbre y comprobación pendiente: <si existe>.
- Acción propuesta: <ID de la tabla de acciones o ninguna>.

## Riesgos, contradicciones y no aplicación

| Contrato o conflicto | Evidencia | Decisión o resolución propuesta | Límite de la conclusión |
| --- | --- | --- | --- |
| <contrato no aplicable o conflicto> | <evidencia concreta> | <motivo de NO_APLICA o propuesta sin imponer precedencia> | <dato pendiente, si existe> |

## Acciones correctivas priorizadas

| ID | Prioridad | Estado | Hallazgo | Archivo y cambio atómico | Dependencias | Validación y criterio de aceptación |
| --- | --- | --- | --- | --- | --- | --- |
| ACT-01 | P0 / P1 / P2 | READY / BLOCKED / REQUIRES_CONFIRMATION | DOC-01 | <ruta y cambio concreto> | <ninguna o IDs> | <comprobación observable y resultado esperado> |

Usa `P0` para una brecha que bloquea un uso seguro o correcto, `P1` para una corrección necesaria en el alcance y `P2` para una mejora diferible. Una acción `READY` no debe depender de decisiones abiertas ni precondiciones incumplidas. No incluyas acciones si los contratos evaluados ya cumplen su propósito.

## Conclusión y limitaciones

Conformidad dentro del alcance: `CONFORME` | `CON BRECHAS` | `NO DETERMINABLE`.

Fundamento: <síntesis basada en evidencia>. Limitaciones y verificaciones pendientes: <detalle>. La conclusión no certifica proyectos, herramientas o componentes fuera del alcance examinado.
