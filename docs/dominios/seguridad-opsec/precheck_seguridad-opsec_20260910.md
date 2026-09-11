# Precheck — seguridad-opsec — 20260910

## Alcance ejecutado

Únicamente FASE 1 — PRECHECK. Se inspeccionó `skills/seguridad-opsec/` sin modificar archivos dentro de esa ruta.

## Evidencia encontrada

- La ruta existe y es accesible.
- Se encontraron 13 archivos Markdown no vacíos.
- No se encontraron subdirectorios con `SKILL.md`.
- No se encontraron archivos vacíos ni placeholders identificables por contenido.
- El contenido real incluye alcances de aplicación, reglas, restricciones defensivas y validaciones mínimas.

### Skills operativas (11)

1. `instrucciones_base_secops.md`
2. `grc_riesgo_cumplimiento_reglas.md`
3. `modelado_amenazas_attck_intel_reglas.md`
4. `hardening_redes_endpoints_servidores_reglas.md`
5. `iam_identidad_accesos_reglas.md`
6. `soc_deteccion_siem_edr_reglas.md`
7. `dfir_respuesta_incidentes_bcp_reglas.md`
8. `cloud_contenedores_k8s_reglas.md`
9. `vulnerabilidades_parches_eol_reglas.md`
10. `appsec_api_seguridad_aplicativa_reglas.md`
11. `seguridad_terceros_concientizacion_metricas_reglas.md`

### Auxiliares (2)

- `checklist_secops.md`: checklist transversal de alcance, autorización, evidencia, seguridad y validación.
- `README.md`: índice, uso recomendado, descripción y principios del dominio.

### Placeholders

Ninguno observado.

## Clasificación

`FUNCTIONAL`

La carpeta contiene instrucciones operativas reales y suficientes para enrutar el dominio como funcional. Esta clasificación no constituye una auditoría de arquitectura, calidad, redundancia o cobertura.

## Routing según workflow v1

- Siguiente ruta: FASE 2B — AUDITORÍA FUNCIONAL.
- Prompt: `prompts/audita_skills_dominios_v2_terra.md`.
- Modelo: GPT-5.6 Terra / Medium.
- Esfuerzo: Medium.

La fase posterior no fue ejecutada automáticamente.

## Limitaciones y discrepancias

- El archivo solicitado `prompts/lanzador_workflow_skills_dominio.md` no existe en la ruta indicada.
- No se cargó documentación histórica ni se realizó auditoría arquitectónica.
- El README denomina 12 archivos como activos; el inventario mecánico separa 11 operativos y 2 auxiliares, sin usar el nombre para inferir capacidades.

