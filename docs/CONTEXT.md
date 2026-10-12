# CONTEXT — Estado actual del repositorio

Fecha de corte: 2026-10-11 (America/Santiago)
Repositorio: `<ruta-local>\gen-ai-skills-root\gen-ai-skills`

## Proyecto activo

Integración de las skills globales de ingeniería de software, registrada en `docs/PLAN_integracion_skills_globales_20261011.md` (plan `IS-GLOBAL-20261011`). La fuente técnica rectora sigue siendo `skills/ingenieria-software/`.

IS-01 a IS-06, incluida la retirada autorizada IS-06B, figuran DONE en el plan. Los paquetes distribuibles canónicos son `examples/ingenieria-software/` y `examples/auditoria-software/`; las instalaciones globales correspondientes permanecen en `~/.codex\skills\`. Las cuatro carpetas heredadas autorizadas fueron retiradas. La presencia de los paquetes canónicos y la ausencia de los heredados se comprobaron nuevamente el 2026-10-11. `examples/README.md` documenta los dos paquetes canónicos.

## Evidencia operativa vigente

- El respaldo de IS-06B está en `~/.codex\backups\IS-GLOBAL-20261011\IS-06B-backup-20261011T211024\`, con `manifest.json`; se verificaron los hashes SHA-256 y una restauración simulada de los nueve archivos.
- Las copias globales canónicas coincidieron por SHA-256 con sus paquetes de distribución durante IS-06B.
- Se ejecutaron sesiones funcionales explícitas para `ingenieria-software`, `auditoria-software` y `planificar-cambios`. La auditoría fue de solo lectura. La prueba implícita posterior al retiro no leyó una skill; por tanto, no demuestra selección automática.
- El CLI no expone telemetría autoritativa de selección automática. T05 encontró el dominio rector desde un directorio externo, pero no aisló completamente la memoria global. Durante T05 también se observó la lectura de `revisar-codigo-dev`; la instalación heredada fue retirada y se repitió una auditoría canónica.
- Los alias antiguos bajo `examples/gen-ia-codex/` ya estaban ausentes al comenzar IS-06B. No se atribuye esa ausencia a dicha acción.

## Estado del árbol de trabajo

El repositorio ya tenía numerosas modificaciones y eliminaciones ajenas a IS-06B, incluidas modificaciones del dominio rector y eliminaciones en otros paquetes de `examples/` y `prompts/`. Fueron preservadas. Consultar `git status --short` antes de cualquier nueva modificación y limitarla a su autorización; no asumir que el árbol está limpio.

Los registros de ejecución están en el plan y en `logs/planificacion.jsonl`. No se conoce evidencia que permita descartar consumidores externos no observables de los nombres retirados.
