Aplica estrictamente:

prompts/01_precheck_skills_dominio_ejec.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
derecho

Ruta:
skills/derecho

Fecha:
20260913

Workflow vigente:

workflows/workflow_skills_dominio_v1.1.md

Objetivo:
determinar mecánicamente el estado real del dominio `derecho`.

Clasifica exclusivamente como:

EMPTY
PLACEHOLDER_ONLY
FUNCTIONAL
MIXED
INVALID

No diseñes.
No audites arquitectura.
No propongas fusiones.
No propongas separaciones.
No refactorices.
No modifiques archivos dentro de skills/derecho/.
No avances automáticamente a fases posteriores.

Inspecciona:

- existencia y accesibilidad de skills/derecho/;
- todos los archivos Markdown del dominio;
- archivos vacíos;
- placeholders identificables por contenido;
- skills operativas por contenido real;
- README y checklists como auxiliares cuando corresponda;
- subdirectorios;
- directorios que contengan SKILL.md.

No infieras funcionalidad únicamente a partir del nombre de un archivo.

Genera:

docs/precheck_derecho_20260913.md
docs/estado_derecho_20260913.md

Routing obligatorio:

- EMPTY → FASE 2A — DISEÑO
- PLACEHOLDER_ONLY → FASE 2A — DISEÑO
- FUNCTIONAL → FASE 2B — AUDITORÍA FUNCIONAL
- MIXED → FASE 2C — AUDITORÍA HÍBRIDA
- INVALID → STOP

En el chat responde únicamente:

DOMINIO:
ESTADO:
SKILLS_OPERATIVAS:
PLACEHOLDERS:
AUXILIARES:
RUTA_SIGUIENTE:
MODELO:
ESFUERZO:
PROMPT: