# Precheck de dominio de skills — Luna / Low

## Rol
Clasifica mecánicamente el estado de un dominio. No diseñes, no audites arquitectura y no modifiques archivos.

## Parámetros
- Proyecto: `<PROYECTO>`
- Dominio: `<DOMINIO>`
- Ruta: `<RUTA>`
- Fecha: `<FECHA>`

## Procedimiento
1. Verifica que `<RUTA>` exista y sea accesible.
2. Enumera archivos y subdirectorios relevantes.
3. Para cada Markdown determina ruta, tamaño, vacío/no vacío, tipo auxiliar y si contiene instrucciones operativas reales.
4. Registra directorios con `SKILL.md`.
5. No interpretes técnicamente archivos vacíos.
6. No infieras arquitectura desde nombres.
7. No cargues documentación histórica salvo necesidad estricta.

## Clasificación
- `EMPTY`: sin contenido funcional relevante.
- `PLACEHOLDER_ONLY`: candidatos/placeholders, sin skills operativas suficientes.
- `FUNCTIONAL`: instrucciones operativas reales.
- `MIXED`: funcionales + placeholders/candidatos.
- `INVALID`: no puede clasificarse con fiabilidad.

## Routing
```text
EMPTY / PLACEHOLDER_ONLY
→ DISEÑO
→ GPT-5.6 Terra / Medium
→ prompts/diseno_skills_dominio.md

FUNCTIONAL
→ AUDITORÍA FUNCIONAL
→ GPT-5.6 Terra / Medium
→ prompts/audita_skills_dominios_v2_terra.md

MIXED
→ AUDITORÍA HÍBRIDA
→ GPT-5.6 Terra / Medium
→ prompts/audita_skills_dominios_v2_terra.md

INVALID
→ STOP
```

## Salidas
Genera:
`docs/precheck_<DOMINIO>_<FECHA>.md`

Actualiza:
`docs/estado_<DOMINIO>_<FECHA>.md`

## Restricciones
- No modificar `<RUTA>`.
- No recomendar fusiones.
- No decidir arquitectura.
- No generar plan de refactorización.
- No avanzar de fase.

## Respuesta en chat
```text
DOMINIO:
ESTADO:
SKILLS_OPERATIVAS:
PLACEHOLDERS:
AUXILIARES:
RUTA_SIGUIENTE:
MODELO:
ESFUERZO:
PROMPT:
```
