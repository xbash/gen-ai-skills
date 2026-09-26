Aplica estrictamente:

prompts/02B_audita_skills_dominio_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
lenguaje-castellano

Ruta:
skills/lenguaje-castellano

Fecha:
20260913

Estado PRECHECK:
FUNCTIONAL

Workflow vigente:

workflows/workflow_skills_dominio_v1.1.md

Evidencia previa:

docs/precheck_lenguaje-castellano_20260913.md
docs/estado_lenguaje-castellano_20260913.md

Objetivo:
realizar exclusivamente la FASE 2B — AUDITORÍA FUNCIONAL
del dominio `lenguaje-castellano`.

El PRECHECK ya confirmó mecánicamente:

- 14 archivos Markdown;
- 10 skills operativas por contenido real;
- 3 auxiliares;
- 0 placeholders;
- 0 archivos Markdown vacíos;
- 0 subdirectorios;
- 0 directorios con SKILL.md.

Skills operativas existentes:

- instrucciones_base_lenguaje.md
- gramatica_morfosintaxis_ortografia_reglas.md
- semantica_pragmatica_discurso_reglas.md
- sociolinguistica_variacion_chile_latam_reglas.md
- escritura_academica_argumentacion_reglas.md
- literatura_teoria_analisis_reglas.md
- filologia_latin_tradicion_clasica_reglas.md
- comprension_lectora_alfabetizacion_critica_reglas.md
- didactica_espanol_pedagogia_reglas.md
- comunicacion_profesional_creativa_reglas.md

Auxiliares:

- README.md
- checklist_correccion_reescritura.md
- checklist_analisis_linguistico_literario.md

No repitas el PRECHECK.

Evalúa el contenido real completo del dominio respecto de:

1. cobertura funcional;
2. responsabilidades y límites entre módulos;
3. redundancias y solapamientos;
4. contradicciones;
5. granularidad;
6. routing y carga progresiva;
7. sobrecarga de instrucciones_base_lenguaje.md;
8. función y ubicación de ambos checklists;
9. skills faltantes realmente necesarias;
10. fusiones potenciales;
11. separaciones potenciales;
12. conveniencia de arquitectura plana vs compound;
13. necesidad o no de subdirectorios;
14. necesidad o no de SKILL.md;
15. mantenibilidad;
16. portabilidad;
17. riesgo de pérdida de conocimiento ante cualquier refactor.

Aplica estrictamente estos principios:

- concepto ≠ skill;
- no crear skills para completar una taxonomía lingüística;
- no dividir únicamente porque existan varias subdisciplinas del lenguaje;
- no fusionar únicamente porque dos módulos compartan vocabulario;
- no migrar a SKILL.md por uniformidad;
- no copiar la arquitectura de otro dominio;
- preferir estructura mínima suficiente;
- preservar conocimiento especializado;
- no afirmar ahorro de tokens sin medición;
- distinguir hechos, inferencias y recomendaciones.

Presta especial atención a las fronteras entre:

- gramática / morfosintaxis / ortografía;
- semántica / pragmática / discurso;
- sociolingüística / variación Chile-LatAm;
- escritura académica / argumentación;
- comprensión lectora / alfabetización crítica;
- didáctica del español / pedagogía;
- comunicación profesional / creativa;
- literatura / teoría / análisis;
- filología / latín / tradición clásica.

No asumas que estos agrupamientos son incorrectos por contener varias áreas.
Evalúa si comparten responsabilidad operativa, triggers, criterios de análisis
y patrones de uso.

Evalúa además:

- si la distinción entre corrección/revisión y análisis lingüístico-literario
  está bien resuelta mediante los dos checklists;
- si existe solapamiento excesivo entre escritura académica,
  comprensión lectora y comunicación profesional;
- si la base contiene demasiadas reglas transversales que podrían delegarse;
- si README funciona como router suficiente;
- si existe carga progresiva explícita;
- si el dominio distingue adecuadamente español general,
  español de Chile/LatAm y contextos normativos o descriptivos;
- si las reglas diferencian descripción lingüística de prescripción normativa;
- si existen límites claros para corrección de estilo,
  reescritura, análisis literario y enseñanza.

Clasifica hallazgos:

P0 = crítico
P1 = relevante/bloqueante
P2 = mejora no bloqueante
P3 = mantenimiento menor

Determina explícitamente:

ESTADO_AUDITORIA:
COBERTURA:
SOBRECARGA_BASE:
REDUNDANCIA:
SOBREFRAGMENTACION:
SKILLS_FALTANTES:
FUSIONES_REQUERIDAS:
SEPARACIONES_REQUERIDAS:
ARQUITECTURA:
SUBDIRECTORIOS:
SKILL_MD:
P0:
P1:
P2:
P3:
AMBIGUEDAD_SIGNIFICATIVA:
RIESGO_METODOLOGICO_LINGUISTICO:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:

Regla de routing:

Si:

P0 = 0
P1 = 0
AMBIGUEDAD_SIGNIFICATIVA = NO

entonces:

PLAN_EJECUCION_LUNA: NO_REQUERIDO
RUTA_SIGUIENTE: FASE 10 — CIERRE

P2/P3 pueden quedar como backlog no bloqueante.

Si existen P0/P1 que requieren modificación:

PLAN_EJECUCION_LUNA: REQUERIDO

y genera:

docs/plan_refactor_lenguaje-castellano_luna_20260913.md

El plan debe contener solo acciones deterministas READY/BLOCKED.

Genera o actualiza:

docs/auditoria_lenguaje-castellano_20260913.md
docs/estado_lenguaje-castellano_20260913.md

No ejecutes refactor.
No modifiques skills/lenguaje-castellano/.
No avances automáticamente a fases posteriores.

En el chat responde únicamente:

ESTADO_AUDITORIA:
COBERTURA:
SOBRECARGA_BASE:
REDUNDANCIA:
SOBREFRAGMENTACION:
SKILLS_FALTANTES:
FUSIONES_REQUERIDAS:
SEPARACIONES_REQUERIDAS:
ARQUITECTURA:
SUBDIRECTORIOS:
SKILL_MD:
P0:
P1:
P2:
P3:
AMBIGUEDAD_SIGNIFICATIVA:
RIESGO_METODOLOGICO_LINGUISTICO:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:
RUTA_SIGUIENTE:
PROMPT_SIGUIENTE: