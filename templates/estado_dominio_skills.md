# Estado de workflow de skills por dominio

## Identificación

```yaml
dominio: <DOMINIO>
ruta: skills/<DOMINIO>/
fecha_inicio: <YYYYMMDD>
estado: IN_PROGRESS
fase_actual: <FASE>
```

## Arquitectura

```yaml
arquitectura_aprobada: NO_DEFINIDA
core: []
specialized: []
auxiliares: []
pendientes: []
```

## Últimos artefactos

```yaml
precheck:
diseno:
auditoria:
plan:
execution_report:
auditoria_post_refactor:
plan_post_refactor:
```

## Estado de acciones

```yaml
ultima_accion:
acciones_ready:
acciones_pass:
acciones_fail:
acciones_blocked:
```

## Hallazgos

```yaml
P0:
P1:
P2:
P3:
ambiguedad_significativa:
```

## Siguiente paso

```yaml
siguiente_modelo:
siguiente_esfuerzo:
siguiente_prompt:
siguiente_accion:
files_to_load: []
```

## Regla de handoff

El siguiente modelo debe:
1. leer este archivo primero;
2. cargar solo el artefacto indicado;
3. cargar únicamente `files_to_load` o los archivos exigidos por la acción;
4. no reanalizar fases ya cerradas;
5. detenerse si una dependencia es ambigua.

## Criterio de cierre

```yaml
P0: 0
P1: 0
ambiguedad_significativa: false
validacion_final: PASS
estado: STABLE
```
