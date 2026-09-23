# Auditoría funcional — derecho

## Alcance y evidencia

- Proyecto: `C:/rutinas-local/gen-ai-skills-root/gen-ai-skills`
- Dominio: `derecho`
- Ruta: `skills/derecho/`
- Fecha: `20260913`
- Prompt aplicado: `prompts/02B_audita_skills_dominio_terra.md`
- Workflow: `workflows/workflow_skills_dominio_v1.1.md`
- Evidencia previa leída: `docs/precheck_derecho_20260913.md` y `docs/estado_derecho_20260913.md`.

Se revisó el contenido completo de los 11 archivos Markdown identificados por el PRECHECK. Esta es una auditoría de contenido y arquitectura de instrucciones; no es una validación funcional con tareas jurídicas representativas ni una verificación de derecho vigente.

## Hechos observados

- Existe una base transversal con alcance, prudencia, rigor, exigencia de jurisdicción, vigencia y fuentes oficiales.
- Ocho módulos de reglas delimitan materias por su objeto de análisis y contienen alcance, reglas y una validación mínima propia.
- El README mapea los archivos, pero su sección `Recomendacion de uso` no tiene instrucciones de carga progresiva.
- El checklist concentra verificaciones de contexto, fuentes, análisis y prudencia, sin repetir reglas de una submateria particular.
- No hay subdirectorios, `SKILL.md`, archivos vacíos ni placeholders, según el PRECHECK.

## Evaluación funcional

### Cobertura y límites de responsabilidad

La cobertura es suficiente para el alcance declarado: estudio y análisis jurídico general, no asesoría personalizada. La base contiene límites transversales; los módulos aportan criterios operativos por tipo de problema. Las fronteras observadas son funcionales:

- teoría, historia y filosofía comparten un análisis conceptual, histórico e interpretativo;
- público, constitucional y administrativo comparten autoridad, competencia, acto y control estatal;
- derechos humanos, internacional y ambiental comparten fuentes supranacionales, obligaciones, sujetos y mecanismos;
- privado, comercial y competencia comparten relaciones entre partes, remedios, mercado y documentos;
- penal y ciencias penales comparten garantías y la evaluación de hechos, rol, tipo y defensa;
- procesal y sistema de justicia comparten etapa, órgano, acción, prueba y riesgo de inacción;
- laboral, seguridad social y tributario comparten una relación regulada, documentos, periodo, autoridad y alta necesidad de vigencia;
- tecnología, datos, IA y sociedad comparten sistema, datos, actores, finalidad, controles y riesgos de regulación cambiante.

Los solapamientos temáticos son concretos pero no contradictorios: la evidencia digital aparece en procesal como admisibilidad y cadena de custodia, y en tecnología como preservación y mitigación; las garantías aparecen en penal, público y derechos humanos con objetos de análisis distintos. No se observó una contradicción normativa entre módulos.

### Granularidad, arquitectura y carga progresiva

La estructura plana es la mínima suficiente: nueve archivos operativos autocontenidos, sin evidencia de recursos propios, routing condicional complejo ni dependencias que justifiquen una arquitectura compound, subdirectorios o `SKILL.md`.

La base no está sobrecargada: conserva las salvaguardas transversales y delega la materia a módulos. El checklist está ubicado y delimitado adecuadamente para revisión/cierre. El README ya facilita selección por materia, pero la recomendación de carga progresiva está ausente; esto reduce la explicitud del routing sin impedir identificar los módulos desde la tabla.

### Riesgo jurídico-metodológico

Los controles centrales están cubiertos por la base y los módulos: jurisdicción, vigencia, fuentes oficiales, incertidumbre, distinción entre información general y asesoría, y derivación profesional ante alto impacto. El tratamiento de datos aparece en el módulo tecnológico. No se encontró una regla transversal explícita de minimización de datos para todos los casos; la necesidad y redacción de tal regla requerirían validación con tareas representativas para evitar duplicar o sobrecargar la base.

No se evalúa la corrección de legislación, jurisprudencia o fuentes externas: esos elementos deben verificarse en cada tarea real.

## Hallazgos priorizados

### P0

- Ninguno.

### P1

- Ninguno.

### P2

- `README.md` tiene una sección `Recomendacion de uso` vacía. Como mejora no bloqueante, puede documentarse una ruta explícita de carga progresiva: README + base + un módulo primario + secundarios solo por dependencia concreta + checklist al cierre o revisión. La tabla actual permite orientar la selección, por lo que no se clasifica como bloqueo.
- La cobertura transversal de datos sensibles no está explicitada fuera del módulo tecnológico. Antes de cambiar la base, conviene validar con tareas representativas si una regla breve añade protección sin duplicar el módulo especializado.

### P3

- No se observan hallazgos P3 independientes.

## Decisiones

| Campo | Decisión |
|---|---|
| ESTADO_AUDITORIA | PASS_WITH_BACKLOG |
| COBERTURA | SUFICIENTE_PARA_EL_ALCANCE_DECLARADO |
| SOBRECARGA_BASE | NO |
| REDUNDANCIA | NO_SIGNIFICATIVA |
| SOBREFRAGMENTACION | NO |
| SKILLS_FALTANTES | NO_DEMOSTRADAS |
| FUSIONES_REQUERIDAS | NO |
| SEPARACIONES_REQUERIDAS | NO |
| ARQUITECTURA | PLANA_MANTENER |
| SUBDIRECTORIOS | NO_REQUERIDOS |
| SKILL_MD | NO_REQUERIDO |
| P0 | 0 |
| P1 | 0 |
| P2 | 2 |
| P3 | 0 |
| AMBIGUEDAD_SIGNIFICATIVA | NO |
| PLAN_EJECUCION_LUNA | NO_REQUERIDO |
| GATE_TERRA_HIGH | NO_REQUERIDO |

## Routing

Con `P0 = 0`, `P1 = 0` y `AMBIGUEDAD_SIGNIFICATIVA = NO`, el workflow enruta a **FASE 10 — CIERRE**. Los dos P2 quedan como backlog no bloqueante. No se generó `docs/plan_refactor_derecho_luna_20260913.md` porque no corresponde.

