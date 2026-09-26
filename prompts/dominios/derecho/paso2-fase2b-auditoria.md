Aplica estrictamente:

prompts/02B_audita_skills_dominio_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
derecho

Ruta:
skills/derecho

Fecha:
20260913

Estado PRECHECK:
FUNCTIONAL

Workflow vigente:

workflows/workflow_skills_dominio_v1.1.md

Evidencia previa:

docs/precheck_derecho_20260913.md
docs/estado_derecho_20260913.md

Objetivo:
realizar exclusivamente la FASE 2B — AUDITORÍA FUNCIONAL del dominio `derecho`.

El PRECHECK ya confirmó mecánicamente:

- 11 archivos Markdown;
- 9 skills operativas por contenido real;
- 2 auxiliares;
- 0 placeholders;
- 0 archivos Markdown vacíos;
- 0 subdirectorios;
- 0 directorios con SKILL.md.

Skills operativas existentes:

- instrucciones_base_juridicas.md
- teoria_historia_filosofia_derecho_reglas.md
- derecho_publico_constitucional_admin_reglas.md
- derechos_humanos_internacional_ambiental_reglas.md
- derecho_privado_comercial_competencia_reglas.md
- derecho_penal_ciencias_penales_reglas.md
- derecho_procesal_sistema_justicia_reglas.md
- laboral_seguridad_social_tributario_reglas.md
- tecnologia_datos_ia_sociedad_reglas.md

Auxiliares:

- README.md
- checklist_analisis_juridico.md

No repitas el PRECHECK.

Evalúa el contenido real completo del dominio respecto de:

1. cobertura funcional;
2. responsabilidades y límites entre módulos;
3. redundancias y solapamientos;
4. contradicciones;
5. granularidad;
6. routing y carga progresiva;
7. sobrecarga de instrucciones_base_juridicas.md;
8. función y ubicación del checklist;
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
- no crear skills para completar una taxonomía jurídica;
- no fusionar únicamente porque dos módulos compartan terminología;
- no dividir únicamente porque existan varias ramas del Derecho;
- no migrar a SKILL.md por uniformidad;
- no copiar la arquitectura de otro dominio;
- preferir estructura mínima suficiente;
- preservar conocimiento jurídico especializado;
- no afirmar ahorro de tokens sin medición;
- distinguir hechos, interpretación y recomendación.

Presta especial atención a posibles fronteras entre:

- teoría / historia / filosofía del Derecho;
- Derecho público / constitucional / administrativo;
- derechos humanos / internacional / ambiental;
- privado / comercial / competencia;
- penal / ciencias penales;
- procesal / sistema de justicia;
- laboral / seguridad social / tributario;
- tecnología / datos / IA / sociedad.

No asumas que estos agrupamientos son incorrectos solo porque contienen varias subdisciplinas. Evalúa si comparten responsabilidad operativa, criterios de análisis y routing.

También evalúa si existen riesgos específicos por tratarse de un dominio jurídico:

- jurisdicción;
- vigencia normativa;
- diferencia entre información jurídica y asesoría legal;
- necesidad de verificación de legislación vigente;
- citas y fuentes;
- incertidumbre;
- sensibilidad de datos;
- contexto Chile cuando corresponda.

No agregues legislación ni contenido jurídico externo durante esta auditoría salvo que sea necesario para identificar un problema estructural. La fuente principal debe ser el contenido actual del dominio.

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
RIESGO_JURIDICO_METODOLOGICO:
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

docs/plan_refactor_derecho_luna_20260913.md

El plan debe contener solo acciones deterministas READY/BLOCKED.

Genera o actualiza:

docs/auditoria_derecho_20260913.md
docs/estado_derecho_20260913.md

No ejecutes refactor.
No modifiques skills/derecho/.
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
RIESGO_JURIDICO_METODOLOGICO:
PLAN_EJECUCION_LUNA:
GATE_TERRA_HIGH:
RUTA_SIGUIENTE:
PROMPT_SIGUIENTE: