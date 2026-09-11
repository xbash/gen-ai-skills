# Auditoría funcional — seguridad-appsec — 20260910

## Alcance y evidencia de entrada

Modo: `AUDITORÍA_FUNCIONAL` (FASE 2B).

Se leyeron `docs/precheck_seguridad-appsec_20260910.md`, `docs/estado_seguridad-appsec_20260910.md` y los 12 Markdown actuales de `skills/seguridad-appsec/`. No se modificó ningún archivo del dominio.

Evidencia estática actual:

- 10 módulos operativos, un checklist auxiliar y un README; no hay placeholders ni subdirectorios con `SKILL.md`.
- Los módulos especializados declaran un alcance de activación y contienen reglas y validaciones mínimas.
- El README establece carga de base, módulos pertinentes y checklist cuando corresponda.
- No hay enlaces Markdown internos que puedan quedar rotos.
- Los 12 Markdown terminan con salto de línea, no tienen BOM ni espacios finales; usan CRLF aunque `.gitattributes` y `.editorconfig` declaran LF.

Esta evidencia es estática. No mide tokens reales, calidad de respuestas ni cobertura efectiva ante tareas representativas.

## Resultado de auditoría

| Dimensión | Evaluación | Evidencia e interpretación |
|---|---|---|
| Cobertura funcional | Adecuada | Cubre gobernanza, web/API, código/lógica, identidad, datos/secretos, supply chain, hardening aplicacional, cloud/workloads y pentesting autorizado. |
| Responsabilidades y límites | Adecuados | La base fija invariantes; cada módulo aplica a un contexto técnico; el checklist cierra entregables. La base excluye explícitamente SOC/GRC amplio e intrusión no autorizada. |
| Redundancia y solapamientos | Tolerables y complementarios | Autorización, evidencia, validación, secretos y límites defensivos se repiten entre base y módulos. Son guardrails transversales; no hay evidencia de daño que justifique compactación o fusión. |
| Contradicciones | No observadas | Los módulos refuerzan autorización, enfoque defensivo, evidencia y validación. |
| Granularidad | Mínima suficiente | Los 9 módulos responden a capacidades y workflows reconocibles; no se halló evidencia para fusionar o dividir. |
| Routing y carga selectiva | Funcional con mejora P2 | El README indica base + archivos pertinentes + checklist condicional. La regla operativa deseada de "una unidad primaria y complementos solo por dependencia concreta" no queda expresada como contrato inequívoco. |
| Sobrecarga de la base | No demostrada | La base concentra alcance, invariantes y formato. Enumera áreas especializadas, pero no sustituye sus reglas; no hay medición que demuestre sobrecarga contextual. |
| Checklist | Bien ubicado | Es auxiliar de cierre para análisis, scripts, reportes, revisiones y remediación; no corresponde cargarlo por defecto en consultas simples. |
| Mantenibilidad y portabilidad | Adecuada con observación P2 | La estructura plana es navegable para 12 archivos y portable como Markdown. El CRLF contradice la política declarada de LF, sin evidencia de impacto funcional. |

## Escala cualitativa 1–5

| Componente | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Base | 5 | 4 | 4 | 5 | 4 | 5 | 4 | 3 |
| 9 módulos especializados | 4–5 | 4–5 | 4 | 4–5 | 4 | 4 | 4 | 3 |
| Checklist | 4 | 4 | 5 | 4 | 4 | 5 | 5 | 3 |
| README | 4 | 4 | 4 | 4 | 4 | 5 | 5 | 2 |

En la última columna, 1 significa baja repetición perjudicial y 5 alta repetición perjudicial.

## Decisiones explícitas

| Campo | Decisión |
|---|---|
| ESTADO_AUDITORIA | `APROBADO_CON_MEJORAS` |
| COBERTURA | Adecuada para el alcance declarado; no se justifican nuevas skills. |
| SOBRECARGA_BASE | No demostrada; mantener la base. |
| REDUNDANCIA | Repetición transversal principalmente necesaria; sin fusión requerida. |
| SKILLS_FALTANTES | Ninguna demostrada. |
| FUSIONES_REQUERIDAS | Ninguna. |
| SEPARACIONES_REQUERIDAS | Ninguna. |
| ARQUITECTURA | Mantener estructura plana: README + base + un módulo principal + secundarios por dependencia concreta + checklist al cierre. |
| SUBDIRECTORIOS | No requeridos. |
| SKILL_MD | No requerido. |

## Hallazgos priorizados

### P0

Ninguno.

### P1

Ninguno.

### P2

1. Validar con casos representativos si el README requiere explicitar el contrato de carga progresiva: base + un módulo principal; módulos secundarios solo ante dependencia concreta; checklist al cierre. La evidencia actual confirma routing general, pero no mide omisiones, correcciones ni costo contextual de ese contrato.
2. La normalización de CRLF a LF queda como mantenimiento de formato condicionado a autorización; la divergencia con la política del repositorio no demuestra una falla funcional.
3. Antes de cualquier cambio que afecte límites externos, verificar casos combinados AppSec/SecOps e Ingeniería de Software. La documentación actual delimita AppSec frente a SOC/GRC amplio, pero no sustituye validación funcional de routing entre dominios.

### P3

Ninguno.

## Riesgos y límites

- Fusionar módulos por vocabulario compartido podría perder activadores y controles especializados; no procede sin evidencia de uso conjunto redundante.
- Separar módulos o crear nuevas skills para completar una taxonomía aumentaría carga de mantenimiento sin brecha demostrada.
- Una estructura compound o subdirectorios no aporta beneficio demostrado para el tamaño actual del dominio.
- No se afirma ahorro de tokens ni preservación de calidad: ambos requieren evaluación funcional con tareas representativas, archivos cargados, omisiones, correcciones y uso de contexto observados.

## Routing

`P0 = 0`, `P1 = 0` y no hay ambigüedad significativa. Por tanto:

- `PLAN_EJECUCION_LUNA: NO REQUERIDO`.
- `GATE_TERRA_HIGH: NO REQUERIDO`.
- No se generó `docs/plan_refactor_seguridad-appsec_luna_20260910.md`.
- Según el workflow, la ruta queda en FASE 10 — CIERRE; no se ejecuta automáticamente.

