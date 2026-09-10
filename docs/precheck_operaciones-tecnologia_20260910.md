# Precheck — operaciones-tecnologia

Fecha: 20260910  
Ruta inspeccionada: `skills/operaciones-tecnologia/`

## Verificación de ruta

- La ruta existe y es accesible: PASS.
- La inspección se basó en el contenido actual del dominio.
- No se cargó documentación histórica para decidir la clasificación.

## Inventario Markdown

| Archivo | Tamaño (bytes) | No vacío | README/auxiliar | Skill operativa por contenido |
|---|---:|---|---|---|
| `bases_datos_operacion_reglas.md` | 2658 | Sí | No | Sí |
| `checklist_script_operacional.md` | 2314 | Sí | Sí, checklist | No, auxiliar |
| `cloud_iac_kubernetes_reglas.md` | 2836 | Sí | No | Sí |
| `incidentes_cambios_dr_reglas.md` | 2863 | Sí | No | Sí |
| `instrucciones_base_ops.md` | 6332 | Sí | No | Sí, base |
| `linux_rhel_oel_bash_reglas.md` | 2546 | Sí | No | Sí |
| `observabilidad_continuidad_reglas.md` | 2624 | Sí | No | Sí |
| `README.md` | 2270 | Sí | Sí, índice/router | No, auxiliar |
| `redes_conectividad_firewall_reglas.md` | 2360 | Sí | No | Sí |
| `virtualizacion_contenedores_reglas.md` | 2597 | Sí | No | Sí |
| `windows_server_powershell_reglas.md` | 2758 | Sí | No | Sí |

## Directorios con SKILL.md

No se encontraron directorios que contengan `SKILL.md` (0). No se infiere una arquitectura alternativa desde los nombres.

## Evidencia mínima de funcionalidad

Los 9 componentes marcados como operativos contienen alcance explícito y reglas aplicables a tareas de operación, sistemas, infraestructura, redes, cloud, bases de datos, observabilidad, continuidad o plataformas. `README.md` funciona como índice/router y `checklist_script_operacional.md` como checklist auxiliar. No se detectaron archivos vacíos ni placeholders.

## Clasificación obligatoria

**FUNCTIONAL**

Existen instrucciones operativas reales en el contenido actual; la clasificación no depende solo de nombres ni de la presencia de `SKILL.md`.

## Routing resultante

- Ruta siguiente: FASE 2B — AUDITORÍA FUNCIONAL.
- Modelo: GPT-5.6 Terra / Medium.
- Esfuerzo: Medium.
- Prompt: `prompts/audita_skills_dominios_v2_terra.md`.

No se diseñó, auditó arquitectura, refactorizó ni modificó ningún archivo bajo `skills/operaciones-tecnologia/`. No se avanzó automáticamente a ninguna fase posterior.
