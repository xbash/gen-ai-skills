# HANDOFF — Punto de entrada para la siguiente sesión

Fecha de corte: 2026-10-23 (America/Santiago)
Repositorio: `<ruta-local>\gen-ai-skills-root\gen-ai-skills`. Commit de referencia: `4f098d6` (`main`); esta consolidación se commitea aparte.

## Estado actual

Las skills globales quedaron reorganizadas y publicadas: fuente única en `skills/skill-globales/` (8 skills, incluida la nueva `alinear-rectores-proyecto`), copias versionadas por agente, script `sincronizar_skills_en_proyecto.ps1`, LF con `.editorconfig` y `.gitattributes`, contenido agnóstico a proveedores, nombres en inglés y `PLAN.md` como plan canónico. `AGENTS.md` incluye el «Flujo de cierre». Los rectores `README.md`, `CHANGELOG.md`, `examples/README.md` y el README de `precheck-publica-repo` se alinearon con ese cambio (commit `4f098d6`). Las decisiones constan en [DECISIONS.md](DECISIONS.md) (SG-01 a SG-08). Evidencia en [CONTEXT.md](CONTEXT.md).

## Al retomar

1. Leer este archivo, `docs/CONTEXT.md` y `docs/DECISIONS.md`.
2. Consultar `git status --short` y `git log --oneline`.
3. Para el flujo de sincronización y las rutas por agente, ver `skills/skill-globales/README.md`; para el orden de cierre, la sección «Flujo de cierre» de `AGENTS.md`.
4. La integración anterior (IS-GLOBAL) y su respaldo están descritos en `docs/archivados/` y en `docs/CONTEXT.md`.

## Próximas acciones

1. Probar `alinear-rectores-proyecto` en modo detectar sobre el proyecto `mgtr-ti-root`, sin modificar archivos. Cierre: plan `ALR-NN` que cubra los README de cada fase y los documentos `FLUJOS_ACTUALIZACION.md` y `REQUIREMENTS.md` de ese proyecto, o la lista de lo que la búsqueda no alcanzó.
2. Resincronizar el perfil de usuario con `skills/skill-globales/sincronizar_skills_en_proyecto.ps1 -Force` (destinos `~/.claude/skills` y `~/.agents/skills`). Requiere autorización del usuario. Cierre: una segunda ejecución sin diferencias.
3. Verificación funcional: abrir una sesión de cada agente en este repositorio y comprobar que lista o carga las skills desde su ruta. Cierre: resultado observado por agente.
4. Tras el punto 3, decidir qué hacer con las copias antiguas de `~/.codex/skills`.

## Riesgos, bloqueos y discrepancias

- `alinear-rectores-proyecto` no se ha probado. Su búsqueda por referencias puede omitir un documento que describa un cambio sin citar su ruta, nombre o identificador.
- El perfil de usuario y `~/.codex/skills` pueden estar desactualizados; no se re-verificó hoy.
- Las rutas por agente se verificaron en documentación, no por ejecución. Las rutas de Gemini CLI bajo el reemplazo anunciado de ese CLI no están verificadas.
- Con `~/.codex/skills` y `~/.agents/skills` coexistiendo, Codex puede mostrar skills duplicadas.
- Si se edita una skill sin resincronizar, la fuente y las tres copias divergen.
- Con el mismo nombre en varios niveles, cada agente resuelve la precedencia de forma distinta.
- No se puede descartar la existencia de consumidores externos de los nombres retirados ni se dispone de telemetría de selección automática.

## Pendientes de decisión del usuario

- Autorizar la resincronización del perfil de usuario (próxima acción 2).
- Qué hacer con `~/.codex/skills`.
- Cuándo retomar la dependencia de `ingenieria-software` y `auditoria-software` respecto del dominio `skills/ingenieria-software/` (diferida en SG-07).
- El proyecto `resumir-contenidos` está fuera de este repositorio y sin Git; su decisión de inicializarlo consta en su propio `HANDOFF.md`.
