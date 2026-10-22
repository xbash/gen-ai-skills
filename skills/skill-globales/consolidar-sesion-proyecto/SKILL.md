---
name: consolidar-sesion-proyecto
description: "Consolida el estado operativo de una sesión de trabajo en docs/CONTEXT.md, docs/DECISIONS.md y docs/HANDOFF.md para permitir continuidad posterior sin depender de la conversación previa. Usar antes de interrumpir, reiniciar, transferir o cerrar una sesión de trabajo."
---

# Consolidar sesión de proyecto

## Objetivo

Consolidar el estado operativo vigente del proyecto antes de interrumpir, reiniciar, transferir o cerrar una sesión de trabajo.

La consolidación debe permitir que una nueva sesión, agente o modelo pueda continuar correctamente sin depender de la conversación anterior y sin reconstruir contexto mediante suposiciones.

Esta skill puede utilizarse cuando:

- el contexto o los tokens disponibles estén próximos a agotarse;
- se vaya a iniciar una nueva sesión;
- se cambie de agente o modelo;
- se transfiera el trabajo a otro entorno;
- se realice una pausa;
- se cierre VS Code, Codex, terminales o navegador;
- finalice la jornada de trabajo.

El resultado debe ser el mismo independientemente de cuánto tiempo transcurra antes de retomar el proyecto.

## Principios

1. Priorizar continuidad operativa por sobre historia de la sesión.
2. Registrar únicamente información que afecte trabajo futuro.
3. Basarse en evidencia verificable del proyecto y de la sesión.
4. No reconstruir hechos desde memoria si existe evidencia local.
5. Mantener un único estado canónico y vigente.
6. Eliminar redundancias y contenido obsoleto.
7. No crear archivos auxiliares, históricos o temporales innecesarios.
8. Los artefactos de continuidad representan estado, no una bitácora histórica.

## Artefactos obligatorios

Toda ejecución debe crear o actualizar exclusivamente los siguientes artefactos de continuidad:

```text
docs/
├── CONTEXT.md
├── DECISIONS.md
└── HANDOFF.md