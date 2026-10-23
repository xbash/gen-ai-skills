# Skills globales

Skills que todo agente o LLM de trabajo debe tener disponibles, sin importar la herramienta con que se inició una sesión. Esta carpeta es la **fuente única**; las copias en el perfil de usuario y en cada proyecto son instalaciones derivadas.

## Contenido

| Skill | Función |
|---|---|
| `retomar-sesion-proyecto` | Recupera el contexto operativo de un proyecto (solo lectura) |
| `alinear-rectores-proyecto` | Detecta y alinea los demás archivos rectores con los cambios, antes de consolidar |
| `consolidar-sesion-proyecto` | Deja `docs/CONTEXT.md`, `DECISIONS.md` y `HANDOFF.md` para continuar después |
| `planificar-cambios` | Genera planes atómicos y verificables, sin implementar |
| `ingenieria-software` | Adaptador del dominio rector `skills/ingenieria-software/` |
| `auditoria-software` | Auditoría técnica de solo lectura |
| `auditar-contratos-proyecto` | Auditoría documental de contratos y gobernanza |
| `precheck-publica-repo` | Revisión previa a publicar un repositorio |

## Flujo

1. Probar y ajustar la skill en `~/.claude/skills` o `~/.codex/skills`.
2. Una vez aprobada, copiarla a esta carpeta (`skills/skill-globales/<nombre>/`).
3. Sincronizar desde el repo:

```powershell
# En un proyecto: crea .agents\skills, .claude\skills y .gemini\skills en su raíz
.\sincronizar_skills_en_proyecto.ps1 -Proyecto C:\ruta\al\proyecto -WhatIf   # muestra qué copiaría
.\sincronizar_skills_en_proyecto.ps1 -Proyecto C:\ruta\al\proyecto           # copia las nuevas; omite con aviso las que difieren
.\sincronizar_skills_en_proyecto.ps1 -Proyecto C:\ruta\al\proyecto -Force    # sobrescribe las que difieren

# En el perfil de usuario (~\.claude\skills y ~\.agents\skills)
.\sincronizar_skills_en_proyecto.ps1
```

Solo se copian los directorios que contienen `SKILL.md`. El script no borra skills ajenas en los destinos.

## Dónde lee cada agente (documentación oficial, consultada 2026-10-22)

| Agente | Proyecto | Usuario |
|---|---|---|
| Claude Code | `.claude/skills/` | `~/.claude/skills/` |
| Codex | `.agents/skills/` | `~/.agents/skills/` |
| Gemini CLI | `.gemini/skills/` o `.agents/skills/` | `~/.gemini/skills/` o `~/.agents/skills/` |

Las skills (`SKILL.md`) son agnósticas a la tecnología y no nombran herramientas concretas; solo este README y el script de sincronización mapean rutas por herramienta.

Con el mismo nombre en varios niveles, cada agente resuelve distinto (Claude Code: usuario sobre proyecto; Gemini CLI: proyecto sobre usuario; Codex: no fusiona y muestra ambas). Evita nombres repetidos.

## Agentes sin soporte de skills

Si el agente no carga skills por sí mismo, indícale que lea `skills/skill-globales/retomar-sesion-proyecto/SKILL.md` al iniciar. Esto no está verificado en todas las herramientas.
