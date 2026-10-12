# Ejemplos

Esta carpeta contiene ejemplos y paquetes de referencia que no forman parte del
catalogo principal de dominios bajo `skills/`.

## Paquetes canónicos de ingeniería de software

- [`ingenieria-software/`](ingenieria-software/) es el adaptador para tareas generales de ingeniería. Su fuente técnica rectora está en [`../skills/ingenieria-software/`](../skills/ingenieria-software/).
- [`auditoria-software/`](auditoria-software/) es el paquete especializado en auditorías técnicas de solo lectura.

Los dos paquetes anteriores son las únicas distribuciones canónicas de
ingeniería de software en esta carpeta.

## `gen-ia-codex`

`gen-ia-codex/` contiene paquetes nativos de Codex con la estructura propia de
cada skill, incluyendo cuando corresponde:

- `SKILL.md`;
- `agents/openai.yaml`;
- `references/`;
- `scripts/`;
- `assets/`.

Estos paquetes son ejemplos de integración y no deben confundirse con los
dominios Markdown de conocimiento ubicados directamente bajo `skills/`.

No se distribuyen variantes heredadas bajo `gen-ia-codex/`; usa los paquetes
canónicos indicados arriba.
