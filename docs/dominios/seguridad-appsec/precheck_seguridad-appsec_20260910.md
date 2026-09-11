# Precheck — seguridad-appsec — 20260910

## Alcance ejecutado

Únicamente FASE 1 — PRECHECK. Se inspeccionó `skills/seguridad-appsec/` sin modificar archivos dentro de esa ruta.

## Evidencia encontrada

- La ruta existe y es accesible.
- Se encontraron 12 archivos Markdown no vacíos.
- No se encontraron subdirectorios con `SKILL.md`.
- No se encontraron archivos vacíos ni placeholders identificables por contenido.
- El contenido real incluye instrucciones de alcance, reglas, validaciones, restricciones y criterios defensivos.

### Skills operativas (10)

1. `instrucciones_base_appsec.md`
2. `gobernanza_secure_sdlc_modelado_reglas.md`
3. `owasp_web_api_reglas.md`
4. `revision_codigo_logica_reglas.md`
5. `auth_autorizacion_sesiones_reglas.md`
6. `cripto_secretos_datos_reglas.md`
7. `supply_chain_sbom_dependencias_reglas.md`
8. `hardening_configuracion_infra_reglas.md`
9. `cloud_contenedores_k8s_reglas.md`
10. `pentesting_autorizado_reporte_reglas.md`

### Auxiliares (2)

- `checklist_appsec.md`: checklist transversal de preparación, evidencia, seguridad de respuesta, remediación y validación.
- `README.md`: índice, uso recomendado y descripción del dominio.

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
- Se encontró `prompts/dominios/seguridad-appsec/paso1-precheck.md`, cuyo contenido contiene referencias inconsistentes a `academia`; no se usó para inferir el estado del dominio.
- No se cargó documentación histórica ni se realizó auditoría arquitectónica.

