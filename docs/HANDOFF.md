# HANDOFF — Punto de entrada para la siguiente sesión

Fecha de corte: 2026-10-23 (America/Santiago)
Repositorio: `<ruta-local>\gen-ai-skills-root\gen-ai-skills`. Commit de referencia: `fdbe0a5` (`main`, un commit por delante de `origin/main`); esta consolidación se commitea aparte.

## Estado actual

Las skills globales quedaron reorganizadas: fuente única en `skills/skill-globales/` (8 skills, incluida `alinear-rectores-proyecto`), copias versionadas por agente, script `sincronizar_skills_en_proyecto.ps1`, LF con `.editorconfig` y `.gitattributes`, contenido agnóstico a proveedores, nombres en inglés y `PLAN.md` como plan canónico. `AGENTS.md` incluye el «Flujo de cierre». Los rectores `README.md`, `CHANGELOG.md`, `examples/README.md` y el README de `precheck-publica-repo` están alineados (commits `4f098d6` y `fdbe0a5`). El perfil de usuario (`~/.claude/skills`, `~/.agents/skills`) coincide con el repositorio. Decisiones en [DECISIONS.md](DECISIONS.md) (SG-01 a SG-09); evidencia en [CONTEXT.md](CONTEXT.md).

## Al retomar

1. Leer este archivo, `docs/CONTEXT.md` y `docs/DECISIONS.md`.
2. Consultar `git status --short` y `git log --oneline`.
3. Para el flujo de sincronización y las rutas por agente, ver `skills/skill-globales/README.md`; para el orden de cierre, la sección «Flujo de cierre» de `AGENTS.md`.
4. La integración anterior (IS-GLOBAL) y su respaldo están descritos en `docs/archivados/` y en `docs/CONTEXT.md`.

## Próximas acciones

1. Hacer el commit de esta consolidación y, tras `precheck-publica-repo`, el push de `main` (faltan `fdbe0a5` y la consolidación). Requiere solicitud explícita. Cierre: `main` y `origin/main` en el mismo commit.
2. El usuario probará manualmente el flujo nuevo (`alinear-rectores-proyecto` y `consolidar-sesion-proyecto`) en el proyecto `mgtr-ti-root`. Cierre: resultado de esa prueba; si la skill no alcanza los README de cada fase, `FLUJOS_ACTUALIZACION.md` o `REQUIREMENTS.md`, ajustarla.
3. Verificación funcional: abrir una sesión de cada agente en este repositorio y comprobar que lista o carga las skills desde su ruta. Cierre: resultado observado por agente.

## Riesgos, bloqueos y discrepancias

- Observado el 2026-10-23: una skill invocada en esta sesión mostró el texto anterior a ediciones hechas durante la misma sesión, aunque el archivo en disco ya era el nuevo. Causa probable, no verificada: el agente carga las skills al iniciar la sesión. Tras editar una skill conviene reiniciar la sesión antes de usarla.
- `alinear-rectores-proyecto` no se ha probado en un proyecto con componentes. Su búsqueda por referencias puede omitir un documento que describa un cambio sin citar su ruta, nombre o identificador; ya omitió la lista de dominios del README.
- Las rutas por agente se verificaron en documentación, no por ejecución. Las rutas de Gemini CLI bajo el reemplazo anunciado de ese CLI no están verificadas.
- Con `~/.codex/skills` y `~/.agents/skills` coexistiendo, Codex puede mostrar skills duplicadas.
- Si se edita una skill sin resincronizar, la fuente y las tres copias divergen.
- Con el mismo nombre en varios niveles, cada agente resuelve la precedencia de forma distinta.
- No se puede descartar la existencia de consumidores externos de los nombres retirados ni se dispone de telemetría de selección automática.

## Pendientes de decisión del usuario

- Si `skills/skill-globales/` es un dominio sujeto a las reglas de `CONTRIBUTING.md` y `AGENTS.md` sobre `SKILL.md`, o un caso aparte exento (hallazgo ALR-01).
- Cuándo retomar la dependencia de `ingenieria-software` y `auditoria-software` respecto del dominio `skills/ingenieria-software/` (diferida en SG-07).
- Cuándo y cómo retirar `~/.codex/skills` (no se elimina hasta nuevo aviso, SG-09).
- El proyecto `resumir-contenidos` está fuera de este repositorio y sin Git; su decisión de inicializarlo consta en su propio `HANDOFF.md`.
