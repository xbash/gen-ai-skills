# Skills globales

Skills que todo agente o LLM de trabajo debe tener disponibles, sin importar la herramienta con que se inició una sesión. Esta carpeta es la **fuente única**; las copias en `~/.claude/skills` y `~/.codex/skills` son instalaciones derivadas.

## Contenido

| Skill | Función |
|---|---|
| `retomar-sesion-proyecto` | Recupera el contexto operativo de un proyecto (solo lectura) |
| `consolidar-sesion-proyecto` | Deja `docs/CONTEXT.md`, `DECISIONS.md` y `HANDOFF.md` para continuar después |
| `planificar-cambios` | Genera planes atómicos y verificables, sin implementar |
| `ingenieria-software` | Adaptador del dominio rector `skills/ingenieria-software/` |
| `auditoria-software` | Auditoría técnica de solo lectura |
| `auditar-contratos-proyecto` | Auditoría documental de contratos y gobernanza |
| `precheck-publica-repo` | Revisión previa a publicar un repositorio |

## Flujo

1. Probar y ajustar la skill en `~/.claude/skills` o `~/.codex/skills`.
2. Una vez aprobada, copiarla a esta carpeta (`skills/skill-globales/<nombre>/`).
3. Instalar en los agentes desde el repo:

```powershell
.\instalar.ps1 -WhatIf   # muestra qué copiaría
.\instalar.ps1           # copia las nuevas; omite con aviso las que difieren
.\instalar.ps1 -Force    # sobrescribe las instaladas que difieren
```

Solo se instalan los directorios que contienen `SKILL.md`. El script no borra skills ajenas en los destinos.

## Agentes sin soporte de skills

Si el agente no carga skills por sí mismo, indícale que lea `skills/skill-globales/retomar-sesion-proyecto/SKILL.md` al iniciar. Esto no está verificado en todas las herramientas.
