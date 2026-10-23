# DECISIONS — Decisiones vigentes

Fecha de corte: 2026-10-23 (America/Santiago)

## Integración de skills globales (IS-GLOBAL-20261011)

- `skills/ingenieria-software/` es la fuente técnica rectora. Las skills globales actúan como adaptadores y no duplican esas reglas.
- `ingenieria-software` y `auditoria-software` son los únicos nombres canónicos para las funciones de ingeniería general y auditoría estructurada, respectivamente. Sus paquetes de distribución son `skills/skill-globales/ingenieria-software/` y `skills/skill-globales/auditoria-software/` (antes en `examples/`).
- `planificar-cambios` conserva la responsabilidad de producir planes; `ingenieria-software` aporta criterios técnicos y respeta los contratos locales. La auditoría es de solo lectura por defecto y no autoriza correcciones.
- Se retiraron las instalaciones y paquetes heredados `usar-reglas-dev` y `revisar-codigo-dev` en las cuatro rutas autorizadas por IS-06B. Los alias bajo `examples/gen-ia-codex/` ya estaban ausentes antes de esa operación.
- Esa consolidación no modificó las reglas rectoras, los AGENTS globales o locales, ni `planificar-cambios`. Las modificaciones posteriores constan en la sección siguiente.

## Skills globales (aprobadas por el usuario, 2026-10-22 y 2026-10-23)

| ID | Estado | Fecha | Decisión | Motivo |
|---|---|---|---|---|
| SG-01 | aprobada | 2026-10-22 | `skills/skill-globales/` es la fuente única de las skills globales; las copias en el perfil de usuario y en cada proyecto son derivadas y se generan con `sincronizar_skills_en_proyecto.ps1`. | Retomar un trabajo con cualquier agente sin depender de lo instalado en `~/.claude/skills` o `~/.codex/skills`. |
| SG-02 | aprobada | 2026-10-22 | Las copias `.agents/`, `.claude/` y `.gemini/` de este repositorio se versionan y se publican tal como están; no se ignoran. | Es el proyecto madre del uso de IA del usuario. |
| SG-03 | aprobada | 2026-10-22 | La versión de referencia de las skills es la de `~/.claude/skills`, validada por el usuario durante meses; el usuario la copia al repositorio. | Skills probadas y bien definidas. |
| SG-04 | aprobada | 2026-10-23 | LF siempre, en todas las skills y en `AGENTS.md`; se agregan `.editorconfig` y `.gitattributes`. | Evitar saltos de línea mezclados (CRLF/LF). |
| SG-05 | aprobada | 2026-10-23 | El contenido de las skills es agnóstico a la tecnología: no nombra proveedores ni herramientas. El mapeo de rutas por herramienta vive solo en el README de `skill-globales/` y en el script. | El proyecto debe poder usarse con cualquier agente. |
| SG-06 | aprobada | 2026-10-23 | Los archivos Markdown rectores llevan nombre en inglés. `PLAN.md` es siempre el plan canónico y manda sobre otros planes, que se renombran o consolidan con confirmación. `auditar-contratos-proyecto` lo evalúa. | Coherencia con `CONTEXT`, `DECISIONS` y `HANDOFF`. |
| SG-07 | aprobada | 2026-10-23 | No se modifica por ahora la dependencia de `ingenieria-software` y `auditoria-software` respecto del dominio `skills/ingenieria-software/`. | El proyecto que lo motivaba aún no se modificará. |
| SG-08 | aprobada | 2026-10-23 | `alinear-rectores-proyecto` es una skill separada de `consolidar-sesion-proyecto`: la primera detecta y alinea los demás rectores (modo detectar o aplicar con autorización); la segunda escribe solo `CONTEXT`, `DECISIONS` y `HANDOFF`. El orden de cierre consta en la sección «Flujo de cierre» de `AGENTS.md`: sincronizar, alinear rectores, commit, consolidar, commit aparte, precheck y push. | Cada skill responde a un caso distinto; mezclarlas perjudicaría el resto del flujo. |
| SG-09 | aprobada | 2026-10-23 | `~/.codex/skills/` no se elimina hasta nuevo aviso. | Evitar pérdidas; sus copias antiguas conviven con `~/.agents/skills/`. |
| SG-10 | aprobada | 2026-10-23 | `docs/archivados/` no se versiona: se agrega a `.gitignore` y se quita del índice de Git; queda solo en el equipo local. Se eliminaron `docs/archivados/eliminar/` y `docs/archivados/sesiones/`, y las rutas de usuario se sustituyen por `<ruta-usuario>`. | El material histórico contenía rutas personales y un correo personal que no deben sincronizarse. El historial ya publicado conserva esos datos; no se reescribe. |

## Propuestas sin aprobación explícita (el usuario no las contradijo)

- El script de sincronización usa por defecto `~/.claude/skills` y `~/.agents/skills`; `~/.codex/skills` ya no es destino.
- Nombre sugerido para planes secundarios: `<topic>-plan.md`.

## Compatibilidad y evidencia

- La comprobación de hashes demuestra identidad de copias, no activación funcional por sí sola.
- El CLI no ofrece una señal independiente y autoritativa de selección automática de skills; no debe presentarse como evidencia de activación automática.
- Las rutas por agente (documentación oficial, 2026-10-22) no se comprobaron por ejecución. La documentación de Gemini CLI indica un reemplazo por otro CLI para ciertos planes; sus rutas en ese caso no están verificadas.
- T05 probó localizar el dominio desde un directorio externo, pero no aisló completamente la memoria global.
- El retiro de IS-06B se respaldó con manifiesto SHA-256 y una restauración simulada verificada. El riesgo de consumidores externos no observables permanece.

## Conservación del trabajo previo

Ninguna limpieza, reversión global o normalización general queda autorizada por estas decisiones, salvo las acotadas en SG-04.
