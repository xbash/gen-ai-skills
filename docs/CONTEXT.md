# CONTEXT — Estado actual del repositorio

Fecha de corte: 2026-10-23 (America/Santiago)
Repositorio: `<ruta-local>\gen-ai-skills-root\gen-ai-skills`. Commit de referencia: `4f098d6` en `main`. Esta consolidación se commitea aparte, después de ese commit.

## Proyecto activo

Biblioteca modular de instrucciones para asistentes de IA, con dominios bajo `skills/` y, además, las skills globales que todo agente debe tener, en `skills/skill-globales/` (fuente única). La fuente técnica rectora de ingeniería sigue siendo `skills/ingenieria-software/`. La integración `IS-GLOBAL-20261011` (plan en `docs/archivados/PLAN_integracion_skills_globales_20261011.md`) está cerrada: IS-01 a IS-06 figuran DONE. Los paquetes que vivían en `examples/` se movieron a `skills/skill-globales/`.

## Estado técnico

- Hay 8 skills globales en `skills/skill-globales/`: `alinear-rectores-proyecto`, `auditar-contratos-proyecto`, `auditoria-software`, `consolidar-sesion-proyecto`, `ingenieria-software`, `planificar-cambios`, `precheck-publica-repo` y `retomar-sesion-proyecto`. Son la versión validada por el usuario desde `~/.claude/skills`, con los ajustes registrados en [DECISIONS.md](DECISIONS.md) (sección «Skills globales»).
- Hay copias por agente, versionadas, en `.agents/skills/`, `.claude/skills/` y `.gemini/skills/`, generadas con `skills/skill-globales/sincronizar_skills_en_proyecto.ps1`. Verificado el 2026-10-23: las 24 copias (8 skills por 3 carpetas) coinciden con la fuente según la comparación de hashes del script.
- Los rectores `README.md`, `CHANGELOG.md`, `examples/README.md` y `skills/precheck-publica-repo/README.md` se alinearon con las skills globales el 2026-10-23 (commit `4f098d6`).
- La raíz tiene `.editorconfig` y `.gitattributes` (LF, UTF-8 sin BOM). Verificado el 2026-10-23: no hay CR ni BOM en `skills/skill-globales/`, `.agents/`, `.claude/` ni `.gemini/`.
- El contenido de las skills (`SKILL.md` y referencias) no nombra proveedores ni herramientas concretas. El mapeo de rutas por herramienta está solo en `skills/skill-globales/README.md` y en el script de sincronización.
- Perfil de usuario: no se resincronizó tras los cambios posteriores al 2026-10-22 y no se re-verificó hoy. `~/.agents/skills/` se creó con 7 skills antes de esos cambios y no contiene `alinear-rectores-proyecto`. `~/.codex/skills/` conserva copias antiguas y ya no es destino por defecto del script.
- Evidencia funcional: no se han ejecutado las skills en sesiones nativas de cada agente. Las pruebas fueron la aplicación manual de los procedimientos de `auditar-contratos-proyecto` y `retomar-sesion-proyecto` sobre otro proyecto (2026-10-23) y esta consolidación. `alinear-rectores-proyecto` aún no se ha probado.

## Evidencia operativa vigente (integración IS-GLOBAL)

- El respaldo de IS-06B está en `~/.codex\backups\IS-GLOBAL-20261011\IS-06B-backup-20261011T211024\`, con `manifest.json`; se verificaron hashes SHA-256 y una restauración simulada.
- El CLI no expone telemetría autoritativa de selección automática de skills; la respuesta funcional y los hashes no la demuestran.
- Los registros de ejecución de IS-GLOBAL están en el plan archivado y en `logs/planificacion.jsonl`.

## Límites y restricciones

- Las rutas de skills por agente provienen de la documentación oficial consultada el 2026-10-22: `.claude/skills/` (Claude Code), `.agents/skills/` (Codex) y `.gemini/skills/` o `.agents/skills/` (Gemini CLI). No se comprobó por ejecución que cada agente cargue las skills desde esas rutas.
- Formato: LF siempre, UTF-8 sin BOM, newline final y sin espacios finales.
- Los archivos Markdown rectores llevan nombre en inglés; `PLAN.md` es el plan canónico.
- Las skills globales se editan solo en `skills/skill-globales/` y luego se sincronizan las copias.
- El cierre de un conjunto de cambios sigue el «Flujo de cierre» de `AGENTS.md`.
- `AGENTS.md` exige autorización explícita para staging, commit, push, movimientos o eliminaciones.

## Estado del árbol de trabajo

Limpio en el commit `4f098d6`, salvo los tres archivos de `docs/` de esta consolidación. Los cambios extensos previos que existían el 2026-10-11 ya quedaron en commits.
