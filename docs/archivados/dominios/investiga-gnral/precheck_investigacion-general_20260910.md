# Precheck — investigacion-general

Fecha: 20260910  
Ruta inspeccionada: `skills/investigacion-general/`

## Verificación de ruta

- La ruta existe y es accesible: PASS.
- La inspección se basó en el contenido actual del dominio.
- No se evaluó qué capacidades faltan ni se cargó documentación histórica para decidir la clasificación.

## Inventario Markdown

| Archivo | Tamaño (bytes) | No vacío | README/auxiliar | Instrucciones operativas reales |
|---|---:|---|---|---|
| `checklist_investigacion.md` | 15774 | Sí | Sí, checklist | No, auxiliar |
| `instrucciones_base_investiga.md` | 10606 | Sí | No | Sí, base |

## Estructura y `SKILL.md`

- Estructura: plana; no se encontraron subdirectorios relevantes.
- Directorios que contienen `SKILL.md`: 0.
- Archivos vacíos: 0.
- Placeholders detectados: 0.

## Alcance declarado en los archivos existentes

`instrucciones_base_investiga.md` declara un alcance transversal para investigación cuantitativa, cualitativa, mixta, documental, experimental, observacional, evaluativa y aplicada, en cualquier disciplina. Incluye formulación de problemas y preguntas, antecedentes, diseño, análisis de evidencia, resultados, conclusiones, reproducibilidad, ética, impacto y comunicación.

`checklist_investigacion.md` declara una función auxiliar de revisión de artefactos de investigación. Cubre alcance y evidencia, fuentes, datos faltantes, diseño metodológico, código y pipelines, métricas, inferencia, reproducibilidad, ética, privacidad, impacto y comunicación; define estados de cumplimiento y reglas de evidencia.

No se interpreta la cantidad de archivos como evidencia de cobertura insuficiente ni se decide qué skills faltan en esta fase.

## Clasificación obligatoria

**FUNCTIONAL**

Existe una instrucción base operativa real y un checklist auxiliar no vacío. La clasificación se basa en el contenido actual, no solo en nombres ni en la presencia de `SKILL.md`.

## Routing resultante

- Ruta siguiente: FASE 2B — AUDITORÍA FUNCIONAL.
- Modelo: GPT-5.6 Terra / Medium.
- Esfuerzo: Medium.
- Prompt: `prompts/audita_skills_dominios_v2_terra.md`.

No se diseñó, auditó arquitectura, propusieron skills faltantes ni refactorizó. No se modificó ningún archivo bajo `skills/investigacion-general/` y no se avanzó automáticamente a ninguna fase posterior.
