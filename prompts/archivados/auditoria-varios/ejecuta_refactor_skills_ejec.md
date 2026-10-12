# Ejecución determinista de refactor — Luna

## Parámetros
- Proyecto: `<PROYECTO>`
- Dominio: `<DOMINIO>`
- Ruta: `<RUTA>`
- Fecha: `<FECHA>`
- Plan: `<PLAN>`
- Acciones autorizadas: `<ACCIONES>`

## Modelo
Usa Luna / Low para MKDIR, MOVE, RENAME, UPDATE_REFERENCE, DELETE autorizado, VALIDATE y EDIT con `replacement_content`.

Usa Luna / Medium para CREATE, REWRITE, MERGE y EDIT semántico, siempre con `content_contract`.

## Reglas
1. Lee el plan aprobado.
2. Ejecuta únicamente `<ACCIONES>`.
3. Respeta `depends_on`.
4. Carga únicamente `files_to_load`.
5. No cargues todo el dominio salvo exigencia del plan.
6. Cumple objective, instructions, must_preserve, must_remove, acceptance_criteria, content_contract y replacement_content.
7. No inventes fuentes, datos, endpoints, métricas, defaults ni decisiones.
8. Si falta una decisión, marca `BLOCKED`.
9. Si una dependencia está FAIL/BLOCKED, no ejecutes dependientes.
10. No ejecutes `TERRA_REQUIRED`.
11. No hagas mejoras oportunistas.
12. DELETE requiere validación PASS según el plan.

## Reporte
Genera o actualiza:
`docs/execution_report_<DOMINIO>_<FECHA>.md`

Por acción:
```text
ACTION_ID:
STATUS: PASS | FAIL | BLOCKED
FILES_LOADED:
FILES_MODIFIED:
ACCEPTANCE_CRITERIA:
INCIDENTS:
```

## DELETE
- confirma dependencia PASS;
- confirma ruta exacta;
- elimina solo targets enumerados;
- no elimines archivos ambiguos;
- no elimines conocimiento especializado sin migración validada;
- conserva rollback con Git o respaldo.

## Respuesta
```text
DOMINIO:
ACCIONES_SOLICITADAS:
RESULTADO:
PASS:
FAIL:
BLOCKED:
ARCHIVOS_MODIFICADOS:
ARCHIVOS_ELIMINADOS:
INCIDENCIAS:
SIGUIENTE_ACCION:
```
