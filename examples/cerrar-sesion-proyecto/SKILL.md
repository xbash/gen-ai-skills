---
name: cerrar-sesion-proyecto
description: "Consolida una sesion de trabajo en docs/CONTEXT.md y docs/HANDOFF.md. Usar al cerrar sesion, dejar handoff o consolidar contexto del proyecto."
---

# Cerrar sesion de proyecto

## Objetivo

Consolidar el trabajo de la sesion en los archivos minimos del proyecto para que una futura sesion pueda continuar sin inventar contexto.

## Flujo

1. Identificar la raiz del proyecto. Si hay `AGENTS.md`, leerlo primero. Leer `README.md` y los archivos de continuidad existentes en `docs/` antes de editar.
2. Revisar evidencia real de la sesion: archivos leidos/modificados, comandos ejecutados, verificaciones, errores, decisiones y pendientes. No reconstruir desde memoria si hay evidencia local disponible.
3. Sobreescribir o crear:
   - `docs/CONTEXT.md`
   - `docs/HANDOFF.md`
   - `docs/DECISIONS.md` solo si el proyecto tiene decisiones arquitectonicas formales que requieren auditoria.

## Estructura de archivos de salida

### docs/CONTEXT.md
Estado estable del proyecto. Se sobreescribe cada sesion con la version mas fresca.
- Objetivo del proyecto
- Estado actual
- Stack tecnologico
- Decisiones clave vigentes
- Restricciones conocidas
- Supuestos activos

### docs/HANDOFF.md
Cierre de sesion. Se sobreescribe cada sesion (no acumula historial).
- Resumen de la sesion
- Archivos tocados
- Problemas encontrados y como se resolvieron
- Comandos utiles ejecutados
- Verificaciones realizadas y resultados
- Riesgos o limitaciones actuales
- Proximos pasos

### docs/DECISIONS.md (opcional)
Solo cuando aplique auditoria formal. Agrega entradas fechadas sin borrar anteriores.

## Contenido a consolidar

| Dato | Destino |
|---|---|
| Objetivo del proyecto | CONTEXT.md |
| Estado actual | CONTEXT.md |
| Decisiones tomadas | CONTEXT.md |
| Supuestos vigentes | CONTEXT.md |
| Restricciones conocidas | CONTEXT.md |
| Archivos modificados | HANDOFF.md |
| Problemas encontrados | HANDOFF.md |
| Comandos utiles ejecutados | HANDOFF.md |
| Verificaciones realizadas | HANDOFF.md |
| Resultados observados | HANDOFF.md |
| Riesgos o limitaciones | HANDOFF.md |
| Proximos pasos | HANDOFF.md |

## Reglas de escritura

- No inventar datos, metricas, resultados, archivos modificados, comandos ejecutados ni conclusiones.
- Distinguir hechos verificados, supuestos, recomendaciones, riesgos, limitaciones y pendientes.
- Si falta evidencia, usar `pendiente-de-verificacion`.
- Sobreescribir `CONTEXT.md` y `HANDOFF.md` en cada sesion; no acumular historial en estos archivos.
- Mantener contenido breve, auditable y util para continuidad.
- No registrar secretos, tokens, credenciales, rutas sensibles, datos personales ni informacion confidencial.

## Memories candidatas

Si durante la sesion surge una memory candidata, incluirla al final de `HANDOFF.md` bajo:

```markdown
## Memories candidatas
- Memory: 
- Motivo: 
- Alcance: 
```

No guardar memories sin confirmacion explicita del usuario.

## Respuesta final

Cerrar con:
- Archivos escritos (CONTEXT.md, HANDOFF.md, y si aplica DECISIONS.md).
- Los 3 proximos pasos principales.
- Memories candidatas si las hay (pendientes de confirmacion).
