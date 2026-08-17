---
name: cerrar-sesion-proyecto
description: "Consolida una sesion de trabajo en proyectos con AGENTS.md, GEMINI.md, docs de continuidad, bitacoras, decisiones, pendientes, metadata de plantilla y propuestas de memoria. Usar cuando el usuario pida cerrar sesion, consolidar contexto, dejar handoff, actualizar bitacoras o bajar el prompt de cierre a archivos del proyecto."
---

# Cerrar sesion de proyecto

## Objetivo

Consolidar el trabajo de la sesion en archivos versionados del proyecto para que una futura sesion de Codex, Gemini/Antigravity, Claude Code u otro agente pueda continuar sin inventar contexto.

## Flujo

1. Identificar la raiz del proyecto. Si hay `AGENTS.md`, leerlo primero. Si hay `GEMINI.md`, leerlo tambien. Leer `README.md` y docs de continuidad existentes antes de editar.
2. Revisar evidencia real de la sesion: archivos leidos/modificados, comandos ejecutados, verificaciones, errores, decisiones y pendientes. No reconstruir desde memoria si hay evidencia local disponible.
3. Actualizar o crear, segun corresponda:
   - `docs/CONTEXTO_PROYECTO.md`
   - `docs/DECISIONES_TECNICAS.md`
   - `docs/PENDIENTES.md`
   - `docs/REGISTRO_CAMBIOS.md`
   - `docs/BITACORA_CODEX.md`
   - `docs/BITACORA_AGENTES.md`
4. Si el proyecto usa Gemini/Antigravity, revisar si corresponde actualizar:
   - `GEMINI.md`
   - `.gemini/settings.json`
   - `docs/BITACORA_GEMINI.md`
   - `.agents/rules/`
5. Si el proyecto usa skills, revisar si corresponde actualizar:
   - `.agents/skills/*/SKILL.md`
6. Si el proyecto fue creado desde plantilla versionada, revisar metadata:
   - `.template/VERSION`
   - `.template/TEMPLATE.md`
   - `{{PLANTILLA_VERSION}}` ya reemplazado en README/contexto.
7. No guardar memories reales sin confirmacion explicita del usuario. Solo proponerlas en `docs/PENDIENTES.md` o en la respuesta final.

## Reglas de escritura

- No inventar datos, metricas, resultados, archivos modificados, comandos ejecutados ni conclusiones.
- Distinguir hechos verificados, supuestos, recomendaciones, riesgos, limitaciones y pendientes.
- Si falta evidencia, usar `pendiente-de-verificacion`.
- No sobrescribir informacion util previa; agregar secciones fechadas o actualizar entradas claramente obsoletas.
- Mantener contenido breve, auditable y util para continuidad.
- No registrar secretos, tokens, credenciales, rutas sensibles, datos personales ni informacion confidencial.
- Si el agente/modelo/version no puede verificarse, registrar `pendiente-de-verificacion`.
- No asumir que todos los agentes leen `.agents/skills/`; las reglas obligatorias deben quedar en `AGENTS.md`.

## Contenido a consolidar

Registrar cuando aplique:

- objetivo actual del proyecto;
- archivos modificados;
- decisiones tomadas;
- supuestos vigentes;
- problemas encontrados;
- comandos utiles ejecutados;
- verificaciones realizadas;
- resultados observados;
- riesgos o limitaciones;
- proximos pasos;
- instrucciones que deberian persistir en `AGENTS.md`;
- cambios que deberian quedar en `GEMINI.md`, `.agents/rules/` o `.agents/skills/*/SKILL.md`.

## Trazabilidad de agentes

En `docs/BITACORA_AGENTES.md`, agregar una entrada sin borrar anteriores:

```markdown
| Fecha | Agente/herramienta | Modelo/version | Entorno | Accion | Archivos afectados | Observaciones |
|---|---|---|---|---|---|---|
```

Usar `pendiente-de-verificacion` para modelo/version si no puede verificarse.

Si aplica, agregar una entrada especializada en `docs/BITACORA_CODEX.md` o `docs/BITACORA_GEMINI.md`.

## Plantillas y migraciones

Si el proyecto usa `.template/`, registrar version de plantilla aplicada. Las mejoras de plantillas no deben sobrescribir proyectos existentes automaticamente.

Para actualizar proyectos antiguos o manuales, tratarlo como migracion revisada:

- `preview`: listar diferencias, archivos faltantes y riesgos sin modificar.
- `apply-safe`: agregar solo archivos nuevos o cambios no conflictivos.
- `apply-reviewed`: aplicar patch revisado por el responsable.

No inferir version historica de proyectos manuales. Usar `pendiente-de-verificacion`.

## Memories durables propuestas

Cuando identifiques una memoria potencial, usar este formato:

```markdown
- Memory propuesta:
- Motivo:
- Alcance:
- Riesgo si se guarda:
- Alternativa si debe ir mejor en `AGENTS.md` o `docs/`:
```

Reglas:

- No guardar secretos, tokens, credenciales, rutas sensibles, datos personales ni informacion confidencial.
- No guardar detalles temporales o triviales.
- Solo proponer memories utiles por semanas o meses.
- Si una regla debe cumplirse siempre en este repositorio, priorizar `AGENTS.md`.
- Si una decision tecnica debe auditarse, priorizar `docs/DECISIONES_TECNICAS.md`.
- Si es trazabilidad de intervencion, priorizar `docs/BITACORA_AGENTES.md`.
- Si hay duda, marcar como `pendiente de confirmacion del usuario`.

## Respuesta final

Cerrar con un resumen breve que indique:

- archivos actualizados;
- decisiones registradas;
- pendientes principales;
- verificaciones ejecutadas;
- memories propuestas pendientes de confirmacion.
