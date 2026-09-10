# Workflow genérico de diseño, auditoría y refactorización de skills por dominio — v1.0

## Objetivo

Aplicar un proceso reproducible a cualquier dominio bajo `skills/<dominio>/` para maximizar calidad por token, separar razonamiento arquitectónico de ejecución mecánica y evitar refactorizaciones innecesarias.

Política de modelos:
- GPT-5.6 Terra / Medium: diseño, auditoría, arquitectura y decisiones.
- GPT-5.6 Terra / High: solo decisiones de alto impacto y baja confianza.
- GPT-5.6 Luna / Medium: redacción acotada por contrato aprobado.
- GPT-5.6 Luna / Low: inventario, filesystem, reemplazos exactos, validaciones y limpieza autorizada.

## Variables

```text
<PROYECTO> = C:/rutinas-local/gen-ai-skills-root/gen-ai-skills
<DOMINIO>  = nombre del dominio
<RUTA>     = skills/<DOMINIO>/
<FECHA>    = YYYYMMDD
```

## Artefactos estándar

```text
docs/estado_<DOMINIO>_<FECHA>.md
docs/precheck_<DOMINIO>_<FECHA>.md
docs/diseno_<DOMINIO>_terra_<FECHA>.md
docs/plan_creacion_<DOMINIO>_luna_<FECHA>.md
docs/auditoria_<DOMINIO>_terra_<FECHA>.md
docs/plan_refactor_<DOMINIO>_luna_<FECHA>.md
docs/execution_report_<DOMINIO>_<FECHA>.md
docs/auditoria_post_refactor_<DOMINIO>_<FECHA>.md
docs/plan_post_refactor_<DOMINIO>_luna_<FECHA>.md
```

No es obligatorio crear todos los archivos; solo los de la ruta ejecutada.

# FASE 0 — Baseline

Responsable: humano / Git.

1. Verificar `git status`.
2. Crear commit o respaldo previo.
3. No iniciar refactor con cambios ajenos sin identificar.

Salida: `BASELINE_READY`.

# FASE 1 — Precheck

Modelo: GPT-5.6 Luna / Low.

Prompt: `prompts/precheck_skills_dominio_luna.md`.

Clasificación:
- EMPTY
- PLACEHOLDER_ONLY
- FUNCTIONAL
- MIXED
- INVALID

Routing:
- EMPTY / PLACEHOLDER_ONLY → FASE 2A — DISEÑO.
- FUNCTIONAL → FASE 2B — AUDITORÍA.
- MIXED → FASE 2C — AUDITORÍA HÍBRIDA.
- INVALID → detener.

Actualizar siempre `docs/estado_<DOMINIO>_<FECHA>.md`.

# FASE 2A — Diseño de dominio

Modelo: GPT-5.6 Terra / Medium.

Prompt base: `prompts/diseno_skills_dominio.md`.

Reglas:
- tratar nombres/placeholders como candidatos exploratorios;
- priorizar capacidades y workflows;
- evitar `un concepto = una skill`;
- distinguir skills, referencias, checklists, formatos, sensores, algoritmos y herramientas;
- producir Minimum Viable Skill Set;
- producir arquitectura objetivo y trazabilidad;
- no modificar todavía `skills/<DOMINIO>/`;
- generar plan para Luna.

Salidas:
- `docs/diseno_<DOMINIO>_terra_<FECHA>.md`
- `docs/plan_creacion_<DOMINIO>_luna_<FECHA>.md`

# FASE 2B — Auditoría de dominio funcional

Modelo: GPT-5.6 Terra / Medium.

Prompt: `prompts/audita_skills_dominios_v2_terra.md`.

Evaluar:
- utilidad;
- granularidad;
- redundancia;
- triggers;
- densidad;
- costo de contexto;
- mantenibilidad;
- arquitectura.

Si hay cambios justificados, generar `docs/plan_refactor_<DOMINIO>_luna_<FECHA>.md`.

Si P0=0, P1=0 y no existe ambigüedad significativa, ir a FASE 10 — CIERRE.

# FASE 2C — Dominio MIXED

Modelo: GPT-5.6 Terra / Medium.

Usar como base `prompts/audita_skills_dominios_v2_terra.md`.

Separar:
- OPERATIVO;
- PLACEHOLDER_NO_EVALUABLE;
- AUXILIAR.

Auditar solo contenido real, preservar conocimiento válido y diseñar únicamente lo necesario para cerrar brechas.

# FASE 3 — Gate de ambigüedad

Modelo por defecto: GPT-5.6 Terra / Medium.

Escalar a Terra / High solo si:
- se eliminará conocimiento especializado;
- se fusionarán tres o más skills con responsabilidades distintas;
- se afectará reproducibilidad, seguridad o metodología;
- hay evidencia contradictoria;
- impacto alto + confianza baja.

Nunca repetir todo el dominio con High. Revisar solo la decisión y archivos afectados.

Toda decisión no resuelta queda `BLOQUEADA`.

# FASE 4 — Congelar plan

Un plan está listo para Luna si cada acción incluye:

```yaml
action_id:
priority:
type:
execution_level:
status:
depends_on:
files_to_load:
target:
objective:
instructions:
must_preserve:
must_remove:
acceptance_criteria:
rollback:
```

Para CREATE/EDIT/REWRITE/MERGE:

```yaml
content_contract:
  required_sections:
  concepts_to_preserve:
  duplicated_content_to_remove:
  forbidden_changes:
```

Para cambio exacto:

```yaml
replacement_content: |
  ...
```

Niveles:
- LUNA_LOW: filesystem, validación, cambio exacto.
- LUNA_MEDIUM: redacción delimitada por contrato.
- TERRA_REQUIRED: decisión arquitectónica pendiente.

# FASE 5 — Ejecución

Prompt: `prompts/ejecuta_refactor_skills_luna.md`.

Luna / Low:
- MKDIR
- MOVE
- RENAME
- reemplazos exactos
- UPDATE_REFERENCE
- VALIDATE
- DELETE autorizado

Luna / Medium:
- CREATE
- REWRITE
- MERGE
- EDIT semántico

Regla de contexto: leer PLAN + `files_to_load` de cada acción, no todo el dominio por defecto.

Actualizar `docs/execution_report_<DOMINIO>_<FECHA>.md`.

# FASE 6 — Validación antes de DELETE

Modelo: GPT-5.6 Luna / Low.

Verificar:
1. estructura objetivo;
2. archivos requeridos;
3. referencias;
4. criterios de aceptación;
5. trazabilidad origen→destino;
6. `must_preserve`;
7. lista exacta de archivos a eliminar.

Regla: `DELETE requiere VALIDATION = PASS`.

Se recomienda aprobación humana antes del primer DELETE.

# FASE 7 — Limpieza

Modelo: GPT-5.6 Luna / Low.

Solo:
- DELETE aprobado;
- DEPRECATE;
- limpieza de placeholders/referencias obsoletas.

Nunca borrar archivos ambiguos o conocimiento especializado no migrado.

Después revisar:
```text
git status
git diff --stat
git diff
```

# FASE 8 — Auditoría post-refactor

Modelo: GPT-5.6 Terra / Medium.

Usar `prompts/audita_skills_dominios_v2_terra.md` en modo `AUDITORÍA POST-REFACTORIZACIÓN`.

Evidencia principal: contenido real actual en `skills/<DOMINIO>/`.

Evaluar:
- fidelidad de implementación;
- triggers/anti-triggers;
- carga selectiva;
- densidad;
- cobertura;
- fronteras;
- redundancia transversal;
- antes/después.

No recomendar cambios solo porque sean posibles.

# FASE 9 — Correcciones post-auditoría

Si existe plan:
- Luna / Low para replacement_content exacto, validación, referencias y filesystem.
- Luna / Medium para redacción acotada.

No volver a Terra si la decisión ya quedó completamente especificada.

# FASE 10 — Criterio de parada

Cerrar cuando:

```text
P0 = 0
P1 = 0
ambigüedad significativa = NO
validación final = PASS
```

P2/P3 pueden quedar en backlog.

Estado final: `STABLE`.

# Política de eficiencia de contexto

1. Guardar informes completos en archivos.
2. Responder en chat con resúmenes breves.
3. Usar `files_to_load`.
4. No releer archivos sin relación con la acción.
5. Revisar diffs cuando sea suficiente.
6. No regenerar archivos correctos.
7. No repetir auditorías completas con High.
8. Mantener un archivo de estado pequeño por dominio.
9. Pasar al siguiente modelo solo el contexto necesario.

# Matriz modelo/tarea

| Tarea | Modelo | Esfuerzo |
|---|---|---|
| Inventario/precheck | Luna | Low |
| Diseño de arquitectura | Terra | Medium |
| Auditoría | Terra | Medium |
| Caso crítico ambiguo | Terra | High |
| Crear/redactar skills | Luna | Medium |
| Move/rename/mkdir | Luna | Low |
| Reemplazo exacto | Luna | Low |
| Validación | Luna | Low |
| DELETE autorizado | Luna | Low |
| Auditoría post-refactor | Terra | Medium |
| Corrección exacta post-audit | Luna | Low |

# Flujo resumido

```text
BASELINE
   ↓
LUNA LOW — PRECHECK
   ↓
PLACEHOLDER/EMPTY → DISEÑO TERRA
FUNCTIONAL        → AUDIT TERRA
MIXED             → HYBRID TERRA
   ↓
¿AMBIGÜEDAD CRÍTICA?
   ├─ NO
   └─ SÍ → TERRA HIGH (solo casos)
   ↓
PLAN CONGELADO
   ↓
LUNA LOW / MEDIUM
   ↓
VALIDACIÓN
   ↓
APROBACIÓN HUMANA
   ↓
DELETE
   ↓
TERRA MEDIUM POST-AUDIT
   ↓
P0/P1 = 0 ?
   ├─ NO → LUNA corrige → validar
   └─ SÍ → STABLE
```
