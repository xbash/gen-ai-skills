# Contexto de continuidad

Fecha de corte: 2026-09-09
Repositorio: `C:\rutinas-local\gen-ai-skills\gen-ai-skills`

## Objetivo actual

Mantener una biblioteca modular de instrucciones Markdown bajo `skills/<dominio>/`, con carga selectiva, activación clara, bajo contexto redundante y reglas reutilizables para distintos agentes y modelos.

## Trabajo realizado en esta sesión

### `skills/ciencia-ingenieria-datos`

- Se incorporó `reglas_transversales_cied.md`.
- Se añadió selección de módulos y activadores `Usar cuando`.
- Se actualizó su README.

### `skills/desarrollo-ia`

- Se incorporó `base/reglas_transversales_ia.md`.
- Se compactó `base/instrucciones_base_ia.md`.
- Se añadieron límites de activación a los módulos.
- Se redujo duplicación entre LLM/NLP, seguridad, MLOps/serving, datos/testing y checklist.
- Se creó `seguridad/gobernanza_uso_responsable_ia_reglas.md`.
- Se dividió RL y optimización evolutiva en:
  - `modelamiento/rl_control_decisiones_secuenciales_reglas.md`
  - `modelamiento/optimizacion_evolutivos_busqueda_reglas.md`
- Se aplicó la estructura física `base`, `modelamiento`, `sistemas_generativos`, `ciclo_de_vida`, `seguridad` y `validacion`.
- Se actualizaron referencias relativas y README.

## Decisiones confirmadas por el usuario

- Los nombres descriptivos sin prefijos numéricos son la convención canónica.
- Los subdirectorios `pack-chatgpt/` fueron eliminados intencionalmente y no deben recrearse.
- El usuario revisará y subirá los cambios a GitHub; no hacer commit ni push.

## Política de archivos

- UTF-8 sin BOM.
- Finales de línea LF.
- Nueva línea final y sin espacios finales.
- `.gitattributes` y `.editorconfig` establecen la política para cambios futuros.

## Estado funcional

- Validación estática ejecutada: archivos no vacíos, referencias nuevas existentes, sin referencias al módulo RL antiguo y Markdown normalizado.
- No se ha ejecutado todavía una validación funcional con un LLM.
- No se ha medido todavía el ahorro neto de tokens/contexto.

## Restricciones

- No inventar métricas, resultados, capacidades, benchmarks ni evidencia.
- No restaurar numeración ni `pack-chatgpt/`.
- No limpiar, revertir, hacer staging ni publicar cambios sin solicitud explícita.
- Tratar el working tree como intencionalmente sucio; no asumir que todos los cambios son de esta sesión.

## Consolidación de sesión — 2026-09-25 (AGENTS.md)

- Se actualizó `AGENTS.md` como guía normativa estable para agentes, con reglas
  de alcance, seguridad, carga progresiva, autorización, validación y selección
  Luna/Terra.
- `git diff --check` pasó; `AGENTS.md` quedó en UTF-8 sin BOM, LF, newline final
  y sin espacios finales.
- `AGENTS.md` es el único archivo modificado por esa sesión. Se preservaron
  los no rastreados `prompts/otros/creacion-agents.md` y
  `prompts/otros/reanalizar-archivos-residuales.md`.
- No hubo staging, commit, push, release ni publicación. No hubo validación
  funcional con LLM ni medición de tokens/contexto.

## Consolidación de sesión — 2026-09-26 (README.md raíz — plan completo)

### Trabajo realizado

Se ejecutó un plan de 9 acciones sobre `README.md` raíz, generado a partir de análisis en modo solo lectura al inicio de la sesión:

- ACCION-01: Lista de dominios verificada contra directorios reales; `desarrollo-ia` marcado como dominio compuesto.
- ACCION-02: Agregada sección «Conceptos clave» con tabla de 6 artefactos (skill, workflow, template, checklist, prompt, example).
- ACCION-03: «Uso recomendado» reemplazado por «Uso básico» con 4 pasos y ejemplo concreto del dominio `academia`.
- ACCION-04: Agregada sección «Templates por plataforma» con los 6 archivos verificados en `templates/`.
- ACCION-05: Descripción de `docs/` actualizada para reflejar su estado real (luego corregida en ACCION-09b al verificar que el directorio tiene contenido real).
- ACCION-06: Agregada sección «Ejemplos» con enlace a `examples/README.md`.
- ACCION-07: Agregada línea introductoria en «Workflow de mantenimiento» que aclara que es para mantenedores/contribuidores.
- ACCION-08: `checklists/` marcado como vacío/en desarrollo en el árbol.
- ACCION-09: «Documentación adicional» reordenada antes de «Workflow de mantenimiento».
- ACCION-09b (corrección): Descripción de `docs/` actualizada con la estructura real: `archivos/`, `dominios/`, `eliminar/`.

### Estado de incertidumbres

- A: `fotografias` existe con README.md. Resuelta.
- B/C: `leeme-por-favor.txt` es ayuda memoria personal sin valor documental. Resuelta.
- D: `checklists/` vacío marcado como en desarrollo. Resuelta.
- E: `academia` confirmado como ejemplo de uso básico con todos los artefactos necesarios. Resuelta.

### Estado de `docs/`

- `docs/eliminar/`: contiene archivos pendientes de eliminación (decisión del usuario pendiente).
- `docs/archivos/`: auditorías iniciales por dominio (sept. 2026).
- `docs/dominios/`: estados, planes, auditorías y reportes por dominio.
- `docs/CONTEXT.md`, `docs/DECISIONS.md`, `docs/HANDOFF.md`: archivos de continuidad activos.
- `estado_dominio_skills.md` en `templates/`: uso no determinado; excluido del README por ahora.

### Restricciones de esta sesión

- Solo lectura para análisis inicial; modificaciones limitadas a `README.md` y archivos de continuidad en `docs/`.
- No se hizo commit, push ni publicación.

## Consolidación de sesión — 2026-09-25 (README.md raíz)

### Trabajo realizado

Se ejecutó un plan de 7 acciones de limpieza y actualización del `README.md` raíz:

- ACCION-01: Enlace de workflow corregido de `v1.md` a `v1.1.md`.
- ACCION-02: Eliminada sección "Skills operacionales" (redundante con lista Dominios).
- ACCION-03: Eliminada sección "Criterios de calidad" (duplicaba `AGENTS.md`).
- ACCION-04: Eliminada sección "Convención de dominios" (cubierta por `CONTRIBUTING.md`).
- ACCION-05: Añadida sección "Documentación adicional" con enlaces a `CONTRIBUTING.md`, `SECURITY.md` y `docs/`.
- ACCION-06: Sección "Workflow de mantenimiento" comprimida a una oración con dos enlaces.
- ACCION-07: Eliminada línea sobre `SKILL.md` de "Uso recomendado" (regla de agente, no instrucción de usuario).

### Verificaciones

- `git diff --check README.md`: PASS.
- Archivos destino de los nuevos enlaces verificados como existentes: `CONTRIBUTING.md`, `SECURITY.md`, `workflows/workflow_skills_dominio_v1.1.md`, `prompts/GUIA_EJECUCION_PROMPTS.md`.
- No se ejecutaron pruebas funcionales ni comandos de publicación.

### Estado del working tree

- `AGENTS.md`: modificado (staged area, cambios previos).
- `README.md`: modificado (unstaged, cambios de esta sesión).
- `docs/CONTEXT.md`, `docs/DECISIONS.md`, `docs/HANDOFF.md`: modificados (unstaged, esta sesión).
- `docs/CONTEXT.md`, `docs/DECISIONS.md`, `docs/HANDOFF.md`: modificados (unstaged — `M` en índice, previo a esta sesión también).
- Varios archivos no rastreados en `prompts/otros/` y `skills/ingenieria-software/`; no modificados por esta sesión.
