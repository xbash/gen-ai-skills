Aplica estrictamente:

prompts/audita_skills_dominios_v2_terra.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_investigacion-general_20260910.md

y:

docs/precheck_investigacion-general_20260910.md

Usa esos archivos únicamente para conocer:

- clasificación;
- inventario;
- estructura;
- alcance declarado;
- routing.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/investigacion-general/

## Estado conocido

El dominio fue clasificado:

FUNCTIONAL

Contiene actualmente:

OPERATIVO:
- instrucciones_base_investiga.md

AUXILIAR:
- checklist_investigacion.md

No existen placeholders.
No existen subdirectorios.
No existen SKILL.md.

El alcance declarado cubre investigación:

- cuantitativa;
- cualitativa;
- mixta;
- documental;
- experimental;
- observacional;
- evaluativa;
- aplicada;

en cualquier disciplina.

## Objetivo principal

Esta auditoría debe evaluar simultáneamente:

1. calidad del contenido existente;
2. sobrecarga de la skill base;
3. cobertura metodológica;
4. capacidades faltantes;
5. necesidad real de separar nuevas skills;
6. necesidad o no de subdirectorios;
7. relación con dominios especializados.

No asumas:

pocos archivos = dominio incompleto

ni:

mucho contenido en un archivo = debe dividirse.

Toda división debe justificarse por capacidad operativa,
trigger propio y beneficio de carga selectiva.

## Pregunta central

Determina si la arquitectura actual:

instrucciones_base_investiga.md
+
checklist_investigacion.md

es suficiente y eficiente para un dominio de investigación general,

o si concentra demasiadas responsabilidades distintas que deberían
separarse en capacidades reutilizables.

## Criterio de calidad/costo

Evalúa:

calidad metodológica / costo de contexto

y especialmente:

- aplicabilidad transversal;
- rigor científico;
- independencia disciplinaria;
- claridad de routing;
- carga selectiva;
- densidad informativa;
- mantenibilidad;
- reutilización;
- redundancia;
- cobertura;
- separación de responsabilidades.

## Evaluación 1 — Skill base

Audita:

instrucciones_base_investiga.md

Determina cuántas responsabilidades metodológicas distintas contiene.

Identifica bloques funcionales como hipótesis, por ejemplo:

- formulación del problema;
- preguntas;
- hipótesis;
- objetivos;
- marco conceptual;
- revisión de literatura;
- diseño metodológico;
- muestreo;
- variables y operacionalización;
- recolección de datos;
- análisis;
- inferencia;
- interpretación;
- reproducibilidad;
- ética;
- impacto;
- comunicación.

NO conviertas automáticamente cada bloque en una skill.

Para cada responsabilidad significativa determina:

- ¿tiene trigger propio?
- ¿puede usarse independientemente?
- ¿requiere reglas suficientemente específicas?
- ¿aparece en tareas frecuentes?
- ¿su separación reduciría carga de contexto?
- ¿su separación aumentaría demasiado las dependencias?

## Evaluación 2 — Checklist

Audita:

checklist_investigacion.md

Determina si:

- funciona como instrumento de cierre;
- duplica demasiado la base;
- contiene metodología operativa que debería estar fuera del checklist;
- puede mantenerse como auxiliar;
- su tamaño está justificado;
- obliga a cargar contenido innecesario en revisiones parciales.

No fusiones checklist con base solo por compartir conceptos.

## Evaluación 3 — cobertura metodológica

Verifica si el dominio cubre adecuadamente, cuando corresponda:

### Formulación
- problema;
- pregunta de investigación;
- hipótesis;
- objetivos;
- alcance;
- contribución.

### Diseño metodológico
- experimental;
- observacional;
- descriptivo;
- correlacional;
- comparativo;
- exploratorio;
- estudio de caso;
- documental;
- evaluativo;
- aplicado.

No exijas una taxonomía rígida si el contenido usa otra clasificación válida.

### Variables y medición
- constructos;
- variables;
- indicadores;
- operacionalización;
- escalas;
- error de medición;
- confiabilidad;
- validez.

### Muestreo
- población;
- muestra;
- selección de casos;
- sesgo de selección;
- representatividad;
- tamaño muestral cuando corresponda.

### Datos y evidencia
- fuentes;
- calidad;
- faltantes;
- trazabilidad;
- instrumentos;
- recolección;
- integridad.

### Cuantitativo
- estadística descriptiva;
- inferencia cuando corresponda;
- incertidumbre;
- estimación;
- pruebas;
- tamaño de efecto;
- supuestos;
- causalidad vs asociación.

No conviertas el dominio en un manual de estadística.

### Cualitativo
Evalúa si existen criterios generales para:

- selección de participantes/casos;
- entrevistas/observación/documentos;
- codificación;
- categorías/temas;
- saturación cuando corresponda;
- reflexividad;
- triangulación;
- trazabilidad interpretativa.

No impongas terminología propia de una sola tradición cualitativa.

### Métodos mixtos
Comprueba si existen criterios para:

- justificar la combinación;
- secuencia;
- integración;
- triangulación;
- interpretación conjunta.

### Validez y confiabilidad

Evalúa si el dominio distingue según método:

- validez interna;
- validez externa;
- validez de constructo;
- confiabilidad;
- credibilidad;
- transferibilidad;
- robustez;
- amenazas a la validez.

No exijas todos los conceptos en toda investigación.

### Reproducibilidad y trazabilidad

Comprueba cobertura de:

- datos;
- instrumentos;
- protocolos;
- código;
- versiones;
- decisiones metodológicas;
- artefactos;
- transformaciones;
- registro de análisis.

Reconoce que reproducibilidad puede variar según disciplina y método.

### Ética

Evalúa cobertura de:

- consentimiento;
- privacidad;
- minimización de datos;
- poblaciones vulnerables;
- conflicto de interés;
- riesgo/beneficio;
- uso secundario de datos;
- atribución;
- integridad científica.

No conviertas este módulo en asesoría jurídica.

### Comunicación

Evalúa soporte para:

- artículo;
- tesis;
- informe;
- propuesta;
- resultados;
- discusión;
- limitaciones;
- conclusiones;
- trabajo futuro.

## Evaluación 4 — gap analysis

Identifica explícitamente:

CAPACIDADES AUSENTES
CAPACIDADES PARCIALES
CAPACIDADES SUFICIENTES

Pero aplica esta regla:

capacidad ausente
≠
skill nueva automática

Para cada gap candidato responde:

1. ¿es transversal a disciplinas?
2. ¿es metodológico y no disciplinar?
3. ¿cambia decisiones?
4. ¿tiene trigger independiente?
5. ¿puede cargarse selectivamente?
6. ¿justifica mantenimiento propio?

Solo si la mayoría es afirmativa,
puede recomendarse una nueva skill.

## Evaluación 5 — posibles skills nuevas

Si existe evidencia, considera como CANDIDATAS,
no como arquitectura predeterminada:

- formulacion_problema_objetivos
- diseno_metodologico
- muestreo_medicion_datos
- analisis_interpretacion
- revision_evidencia_fuentes
- reproducibilidad_trazabilidad
- etica_integridad
- comunicacion_cientifica

También puedes proponer menos, más o ninguna.

Agrupa responsabilidades cuando compartan:

- trigger;
- workflow;
- criterios;
- artefactos;
- dependencias.

Evita micro-skills.

## Evaluación 6 — investigación cuantitativa/cualitativa/mixta

Determina si conviene:

A. mantenerlas integradas dentro de skills metodológicas generales;

B. crear skills especializadas por enfoque;

C. usar un núcleo general y complementos selectivos.

No elijas B solo por taxonomía académica.

Recomienda separación solo si las diferencias metodológicas
son suficientemente grandes para justificar carga selectiva.

## Evaluación 7 — arquitectura física

Compara como mínimo:

### Opción A — mantener estructura plana actual

instrucciones_base_investiga.md
checklist_investigacion.md

### Opción B — estructura plana modular

README.md
instrucciones_base_investiga.md
<skills metodológicas>
checklist_investigacion.md

### Opción C — subdirectorios

solo si existe una cantidad o agrupación de capacidades que lo justifique.

### Opción D — SKILL.md

solo si aporta un beneficio demostrado.

Para cada opción evalúa:

- routing;
- carga selectiva;
- mantenibilidad;
- costo de contexto;
- simplicidad;
- portabilidad;
- riesgo de fragmentación.

No recomiendes subdirectorios por estética.

## Evaluación 8 — frontera con dominios vecinos

Compara conceptualmente, sin cargar todos los dominios salvo necesidad:

investigacion-general
↔
investigacion-ia
↔
academia
↔
ciencia-ingenieria-datos
↔
dominios disciplinarios

La función esperada de investigacion-general es:

método científico y metodología de investigación transversal

No debería absorber:

- reglas específicas de IA;
- reglas específicas de software;
- estadística especializada exhaustiva;
- metodologías disciplinares detalladas;
- reglas de dominio que ya pertenecen a otra skill.

Identifica qué contenido debería permanecer genérico
y qué tipo de contenido debería delegarse.

## Evaluación 9 — independencia disciplinaria

Comprueba que las reglas sean suficientemente generales para:

- ciencias naturales;
- ingeniería;
- computación;
- ciencias sociales;
- humanidades;
- investigación aplicada.

No exijas que todas las metodologías sean igualmente apropiadas
para todas las disciplinas.

Evalúa si el dominio usa criterios condicionales del tipo:

“cuando corresponda”
“según diseño”
“según evidencia”
“según disciplina”

en vez de imponer una metodología única.

## Evaluación 10 — riesgo de sobre-generalización

Busca reglas que:

- parezcan universales pero solo sirvan para cuantitativo;
- usen reproducibilidad computacional como requisito universal;
- asuman hipótesis en toda investigación;
- exijan métricas numéricas donde no corresponden;
- confundan confiabilidad con validez;
- traten correlación como causalidad;
- impongan significancia estadística;
- descuiden evidencia cualitativa;
- ignoren investigación documental o humanística.

Clasifica cualquier problema relevante como P0/P1/P2/P3.

## Densidad informativa

Busca:

- definiciones académicas genéricas que el modelo ya conoce;
- tutoriales;
- listas exhaustivas sin decisión;
- contenido repetido;
- prose extensa;
- reglas que no cambian comportamiento.

Pero preserva:

- reglas metodológicas;
- prevención de sesgos;
- trazabilidad;
- validez;
- ética;
- criterios de evidencia;
- límites de inferencia.

## Métricas

Aplica la escala 1–5 del auditor para:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

Evalúa por responsabilidad o componente cuando sea útil.

No inventes métricas de tokens.

## Hallazgos

Clasifica:

P0
P1
P2
P3

## Terra High

Trabaja inicialmente con razonamiento MEDIUM.

Marca REVISIÓN_TERRA_ALTA solo si:

- dividir la base implica riesgo de pérdida metodológica;
- se propone eliminar conocimiento especializado;
- se fusionan/dividen muchas responsabilidades;
- existe contradicción metodológica;
- impacto alto + baja confianza.

Si High es necesario:

NO repitas toda la auditoría.

Indica exactamente qué decisión necesita revisión.

## Decisión obligatoria sobre cobertura

Al final responde explícitamente:

COBERTURA_ACTUAL:
SUFICIENTE | PARCIAL | INSUFICIENTE

SKILLS_FALTANTES:
NINGUNA | CANDIDATAS | NECESARIAS

SUBDIRECTORIOS:
NO_REQUERIDOS | OPCIONALES | RECOMENDADOS

SKILL_MD:
NO_REQUERIDO | OPCIONAL | RECOMENDADO

## Si se requiere refactor

Genera:

docs/plan_refactor_investigacion-general_luna_20260910.md

El plan debe ser determinista.

No permitas a Luna decidir:

- qué responsabilidades separar;
- qué contenido pertenece a cada skill;
- qué conocimiento eliminar.

Toda migración debe incluir trazabilidad:

contenido original
→
archivo destino

y validación antes de eliminar o compactar la base.

## Si se requieren nuevas skills

Define para cada una:

- nombre;
- propósito;
- USAR CUANDO;
- NO USAR CUANDO;
- contenido que debe migrarse desde la base;
- contenido nuevo necesario;
- dependencias;
- relación con checklist;
- criterios de aceptación.

No generes contenido disciplinar específico salvo que sea estrictamente
necesario para aclarar un principio metodológico general.

## Criterio de no cambio

Si concluyes:

P0 = 0
P1 = 0
COBERTURA_ACTUAL = SUFICIENTE
AMBIGÜEDAD_SIGNIFICATIVA = NO

y no existe mejora estructural justificada:

PLAN_EJECUCION_LUNA: NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_investigacion-general_terra_20260910.md

Si corresponde:

docs/plan_refactor_investigacion-general_luna_20260910.md

Actualiza:

docs/estado_investigacion-general_20260910.md

## Restricciones

NO modifiques:

skills/investigacion-general/

Esta fase es exclusivamente:

ANALIZAR
EVALUAR COBERTURA
IDENTIFICAR GAPS
DECIDIR
PLANIFICAR

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

COMPONENTES_OPERATIVOS_AUDITADOS:

COBERTURA_ACTUAL:
SUFICIENTE | PARCIAL | INSUFICIENTE

SKILLS_FALTANTES:
NINGUNA | CANDIDATAS | NECESARIAS

ARQUITECTURA:
MANTENER | MODULARIZAR | REFACTORIZAR

SUBDIRECTORIOS:
NO_REQUERIDOS | OPCIONALES | RECOMENDADOS

SKILL_MD:
NO_REQUERIDO | OPCIONAL | RECOMENDADO

P0:
P1:
P2:
P3:

SOBRECARGA_BASE:
BAJA | MEDIA | ALTA

SOBREFRAGMENTACION:
BAJA | MEDIA | ALTA

REDUNDANCIA:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

RIESGO_METODOLOGICO:
BAJO | MEDIO | ALTO

REVISION_TERRA_ALTA:
SI | NO

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_investigacion-general_terra_20260910.md

PLAN:
docs/plan_refactor_investigacion-general_luna_20260910.md
o NO_REQUERIDO