# Auditoría funcional — ingenieria-software

Fecha: 20260910  
Modo: AUDITORÍA_FUNCIONAL  
Evidencia principal: contenido real y actual de `skills/ingenieria-software/`.

## Resultado ejecutivo

**ESTADO: APROBADO_CON_MEJORAS.** El dominio permite carga selectiva: `README.md` para routing, `instrucciones_base_dev.md` como invariantes y un módulo técnico principal, con complementos solo cuando el alcance lo requiere. No hay evidencia que justifique fusionar, dividir, eliminar módulos, crear subdirectorios o migrar a `SKILL.md`.

- Componentes operativos auditados: 8.
- Auxiliares auditados: 2.
- P0: 0; P1: 0; P2: 2; P3: 0.
- Sobrefragmentación: BAJA.
- Redundancia perjudicial: BAJA.
- Ambigüedad significativa: NO.
- REVISIÓN_TERRA_ALTA: 0.
- PLAN_EJECUCION_LUNA: NO REQUERIDO.

## Inventario y recomendación

| Componente | Tipo | Decisión | Evidencia operacional |
|---|---|---|---|
| `instrucciones_base_dev.md` | Base | MANTENER | Invariantes de veracidad, cambios acotados, validación, mantenibilidad, seguridad y formato. |
| `diseno_arquitectura_reglas.md` | Operativo | MANTENER | Responsabilidades, contratos, algoritmos, requisitos no funcionales y evolución. |
| `backend_api_reglas.md` | Operativo | MANTENER | Servicios, APIs, workers, integraciones, idempotencia y fallas externas. |
| `frontend_web_reglas.md` | Operativo | MANTENER | UI, estado, accesibilidad, rendimiento de cliente y consumo de API. |
| `bases_datos_sql_reglas.md` | Operativo | MANTENER | Modelo, consultas, transacciones, consistencia, migraciones y persistencia. |
| `devops_ci_cd_reglas.md` | Operativo | MANTENER | Pipeline, ambientes, artefactos, despliegue, rollback y operación. |
| `pruebas_calidad_reglas.md` | Operativo | MANTENER | Estrategia de pruebas, regresión, calidad y evidencia de validación. |
| `seguridad_codigo_reglas.md` | Operativo | MANTENER | Riesgos y controles defensivos activables por superficie de riesgo. |
| `README.md` | Auxiliar | MANTENER | Routing compacto y límites de carga. |
| `checklist_codigo_dev.md` | Auxiliar | MANTENER | Verificación de cierre; no sustituye procedimientos técnicos. |

No existen placeholders, subdirectorios relevantes ni archivos `SKILL.md`.

## Métricas cualitativas

Escala 1–5; valora contenido observado, no uso, tokens o rendimiento de modelos.

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Base | 5 | 4 | 5 | 5 | 4 | 5 | 5 | 4 |
| Diseño/arquitectura | 5 | 5 | 5 | 4 | 5 | 5 | 5 | 5 |
| Backend/API | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 |
| Frontend | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 |
| Datos/SQL | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 |
| DevOps/CI-CD | 5 | 5 | 5 | 4 | 5 | 5 | 5 | 5 |
| Pruebas/calidad | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 5 |
| Seguridad | 5 | 5 | 5 | 5 | 5 | 5 | 5 | 4 |
| README | 4 | 4 | 5 | 5 | 5 | 5 | 5 | 5 |
| Checklist | 4 | 4 | 5 | 4 | 5 | 5 | 5 | 4 |

## Fronteras

La base concentra reglas compartidas: evidencia verificable, supuestos explícitos, cambios mínimos, validación, trazabilidad, mantenimiento y protección de información sensible. Los módulos añaden procedimiento por capa; no hay detalle especializado en la base que vuelva prescindible algún módulo. La repetición de validación, secretos y errores es necesaria: base fija el invariante, cada módulo lo contextualiza y seguridad realiza análisis por amenazas.

Arquitectura es primaria al decidir límites, responsabilidades, contratos, algoritmos, requisitos no funcionales o evolución. Backend y frontend son primarios ante cambios locales. Arquitectura solo complementa cambios que afecten contratos compartidos, modularidad, escalabilidad o trade-offs.

Backend cubre contratos de servicio, lógica, integraciones, workers e idempotencia; Datos/SQL cubre esquema, consulta, transacciones, migraciones, consistencia y rendimiento. El solapamiento de validación, errores y datos sensibles es control de borde. No hay evidencia para fusionarlos.

Arquitectura considera operación como requisito de diseño; DevOps define build, publicación, despliegue, observabilidad y recuperación. Pruebas/calidad define estrategia y evidencia; el checklist verifica cierre. Seguridad se activa por riesgo y añade análisis de amenazas; los módulos técnicos retienen controles mínimos contextualizados para preservar autonomía. Frontend permanece limitado a UI, estado, accesibilidad, rendimiento de cliente y consumo de API.

## Carga selectiva

`README + base + un módulo principal` es suficiente para la mayoría de tareas acotadas. Casos de carga múltiple:

| Caso | Complementos |
|---|---|
| API que modifica esquema, transacción o consulta | Datos/SQL; seguridad si hay exposición, datos sensibles o acceso. |
| Refactor entre capas o contrato compartido | Diseño/arquitectura y pruebas/calidad. |
| Pantalla con permisos, sesión o contrato cambiado | Backend y/o seguridad según el cambio real. |
| Migración desplegada | Datos/SQL y DevOps; pruebas/calidad y seguridad según riesgo. |
| Release, pipeline o recuperación | DevOps; seguridad al tocar secretos, dependencias, imagen o configuración sensible. |
| Entrega final | Checklist y módulos aplicables. |

## Arquitectura física

**MANTENER estructura plana.** Diez archivos, nombres descriptivos y routing directo no justifican subdirectorios. Tampoco hay evidencia de mejora de routing, portabilidad o carga selectiva mediante una migración a `SKILL.md`.

## Hallazgos

### P0 — 0

No se detectan pérdidas funcionales, errores críticos ni riesgos bloqueantes.

### P1 — 0

No se detectan cambios de alto impacto necesarios.

### P2 — 2

1. La carga selectiva está justificada estáticamente por triggers y límites, pero no existe evidencia de evaluación con tareas representativas. Antes de compactar, fusionar o reestructurar, comparar casos de backend, frontend, datos y entrega.
2. La base incluye texto de alcance general y una referencia temporal que no modifican el routing. Una revisión editorial futura solo tendría sentido con evidencia de costo de contexto y sin eliminar reglas que cambian decisiones; no se justifica hacerla ahora.

### P3 — 0

No se registran mejoras marginales que ameriten intervención.

## Cierre

- Arquitectura: **MANTENER**.
- Sobrefragmentación: **BAJA**.
- Redundancia: **BAJA**; las repeticiones son invariantes o controles contextualizados.
- Ambigüedad significativa: **NO**.
- REVISIÓN_TERRA_ALTA: **0**.
- PLAN_EJECUCION_LUNA: **NO REQUERIDO**.

No se genera `docs/plan_refactor_ingenieria-software_luna_20260910.md`: no existe una acción de cambio justificada sin evidencia nueva de uso o evaluación. La siguiente acción es cierre del workflow.
