Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-ia

Ruta:
skills/investigacion-ia/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_investigacion-ia_20260910.md

y:

docs/precheck_investigacion-ia_20260910.md

Usa estos archivos únicamente para conocer:

- clasificación del PRECHECK;
- fase actual;
- inventario;
- routing;
- estado general.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/investigacion-ia/

No asumas que la estructura plana actual es correcta solo porque los archivos
son operativos.

## Estado conocido

El dominio fue clasificado:

FUNCTIONAL

Existen 9 componentes operativos:

- instrucciones_base_ia_investiga.md
- diseno_metodologico_experimentos_ia_reglas.md
- etica_seguridad_gobernanza_investigacion_reglas.md
- evaluacion_benchmarks_metricas_reglas.md
- lectura_critica_papers_reglas.md
- redaccion_academica_comunicacion_reglas.md
- reproducibilidad_open_science_reglas.md
- revision_estado_arte_reglas.md
- vigilancia_tendencias_agenda_reglas.md

Y 3 auxiliares:

- README.md
- checklist_investigacion_ia.md
- matriz_propiedad_reglas.md

No existen placeholders.
No existen SKILL.md.

## Objetivo

Audita si el dominio maximiza:

calidad metodológica / costo de contexto

Evalúa especialmente:

- utilidad científica;
- aplicabilidad;
- granularidad;
- redundancia;
- solapamiento semántico;
- claridad de triggers;
- densidad informativa;
- costo de contexto;
- reutilización;
- mantenibilidad;
- reproducibilidad;
- trazabilidad;
- portabilidad;
- cobertura;
- carga selectiva;
- fronteras entre responsabilidades.

No optimices por número de archivos.

No reduzcas contenido metodológico si ello degrada rigor,
reproducibilidad, ética, trazabilidad o validez experimental.

## Frontera 1 — base vs módulos especializados

Evalúa:

instrucciones_base_ia_investiga.md

contra todos los módulos operativos.

Determina:

- qué reglas deben permanecer en la base;
- qué reglas son realmente especializadas;
- si existe duplicación transversal;
- si la base contiene contenido demasiado específico;
- si los módulos repiten innecesariamente reglas generales;
- si base + un módulo principal es suficiente para la mayoría de tareas.

Busca especialmente repetición en:

- problema de investigación;
- hipótesis;
- objetivos;
- evidencia;
- reproducibilidad;
- ética;
- trazabilidad;
- limitaciones;
- fuentes;
- comunicación académica.

Distingue repetición necesaria de redundancia perjudicial.

## Frontera 2 — diseño metodológico vs evaluación

Evalúa:

diseno_metodologico_experimentos_ia_reglas.md
↔
evaluacion_benchmarks_metricas_reglas.md

Distingue claramente entre:

- pregunta/hipótesis;
- variables;
- diseño experimental;
- datasets;
- splits;
- baseline;
- protocolo;
- métricas;
- comparación;
- pruebas estadísticas;
- análisis de error;
- criterios de éxito.

Determina qué módulo debe ser primario en:

A. formulación/diseño del experimento;
B. evaluación de un experimento ya definido.

No fusiones solamente porque ambos tratan experimentación.

## Frontera 3 — diseño experimental vs reproducibilidad

Evalúa:

diseno_metodologico_experimentos_ia_reglas.md
↔
reproducibilidad_open_science_reglas.md

Busca solapamientos en:

- semillas;
- particiones;
- configuraciones;
- versiones;
- hardware/software;
- datasets;
- artefactos;
- registro experimental;
- trazabilidad.

Distingue:

diseño de un experimento válido
vs
capacidad de reproducir, auditar y compartir sus resultados.

No centralices todo en reproducibilidad si perjudica la autonomía del módulo metodológico.

## Frontera 4 — evaluación vs reproducibilidad

Evalúa:

evaluacion_benchmarks_metricas_reglas.md
↔
reproducibilidad_open_science_reglas.md

Determina si:

- evaluación define cómo medir/comparar;
- reproducibilidad define cómo registrar/repetir/verificar;
- existe duplicación perjudicial;
- ambos deben cargarse conjuntamente solo en ciertos escenarios.

## Frontera 5 — revisión del estado del arte vs lectura crítica de papers

Evalúa:

revision_estado_arte_reglas.md
↔
lectura_critica_papers_reglas.md

Distingue entre:

- buscar/seleccionar/cubrir literatura;
- sintetizar estado del arte;
- analizar críticamente un paper individual;
- extraer metodología;
- evaluar evidencia;
- comparar resultados;
- detectar limitaciones.

Determina si ambos son capacidades realmente separadas.

No fusionar por compartir papers como objeto de trabajo.

## Frontera 6 — revisión del estado del arte vs vigilancia de tendencias

Evalúa:

revision_estado_arte_reglas.md
↔
vigilancia_tendencias_agenda_reglas.md

Distingue:

- revisión académica con objetivo y método explícitos;
- seguimiento continuo de desarrollos recientes;
- identificación de agenda;
- señales emergentes;
- papers/preprints/modelos/datasets nuevos.

Comprueba si vigilancia es una capacidad operativa reutilizable
o una extensión demasiado cercana al estado del arte.

No elimines por frecuencia de uso si su función es claramente distinta.

## Frontera 7 — lectura crítica vs evaluación de benchmarks

Evalúa:

lectura_critica_papers_reglas.md
↔
evaluacion_benchmarks_metricas_reglas.md

Busca solapamientos en:

- métricas;
- comparación;
- significancia;
- baselines;
- claims;
- generalización;
- limitaciones;
- reproducibilidad.

Distingue:

evaluar críticamente evidencia publicada
vs
diseñar/evaluar el propio experimento.

## Frontera 8 — ética, seguridad y gobernanza

Evalúa:

etica_seguridad_gobernanza_investigacion_reglas.md

contra:

- instrucciones_base_ia_investiga.md;
- diseno_metodologico_experimentos_ia_reglas.md;
- reproducibilidad_open_science_reglas.md.

Determina si el módulo está correctamente limitado a:

- ética de investigación;
- privacidad;
- sesgos;
- fairness;
- seguridad;
- riesgos de uso indebido;
- gobernanza;
- supervisión;
- límites de uso.

Distingue reglas éticas transversales mínimas
de análisis especializado requerido por investigaciones sensibles.

No expandas innecesariamente hacia AppSec/SecOps o cumplimiento jurídico general.

## Frontera 9 — redacción académica

Evalúa:

redaccion_academica_comunicacion_reglas.md

contra:

- lectura_critica_papers_reglas.md;
- revision_estado_arte_reglas.md;
- instrucciones_base_ia_investiga.md.

Determina si aporta una capacidad operativa propia para:

- abstracts;
- artículos;
- propuestas;
- tesis;
- informes técnicos;
- discusión;
- limitaciones;
- comunicación de resultados.

Comprueba que no sea solamente una colección de reglas estilísticas genéricas.

## Frontera 10 — checklist

Evalúa:

checklist_investigacion_ia.md

contra:

- base;
- reproducibilidad;
- diseño metodológico;
- evaluación.

Determina si:

- sigue siendo auxiliar de cierre;
- verifica sin sustituir procedimientos;
- duplica en exceso reglas operativas;
- debe cargarse solo al cierre/revisión.

No fusionar únicamente porque repite verificaciones.

## Frontera 11 — matriz de propiedad

Evalúa:

matriz_propiedad_reglas.md

Determina si:

- cumple realmente una función auxiliar de mantenimiento/routing;
- aclara qué archivo es responsable de cada regla;
- reduce ambigüedad y duplicación;
- su costo de contexto justifica cargarla solo para mantenimiento/auditoría;
- no debería cargarse en tareas académicas normales.

No la conviertas automáticamente en skill operativa.

## Frontera 12 — investigacion-ia vs dominios vecinos

Evalúa el contenido actual para detectar duplicación conceptual potencial con:

- investigacion-general
- desarrollo-ia
- academia

No cargues esos dominios completos salvo evidencia concreta de que sea necesario para resolver una frontera.

Evalúa conceptualmente:

investigacion-ia
debe cubrir metodología específica de investigación en IA.

investigacion-general
debería cubrir principios metodológicos agnósticos al dominio.

desarrollo-ia
debería cubrir construcción/evaluación/operación de sistemas de IA.

academia
debería cubrir apoyo académico transversal y perfiles de revisión.

Identifica si investigacion-ia contiene conocimiento demasiado genérico
que sería mejor delegado a otra capa,
pero no propongas moverlo sin evidencia actual suficiente.

## Carga selectiva

Evalúa como hipótesis principal:

README
+
instrucciones_base_ia_investiga.md
+
un módulo principal

y según la tarea:

+ diseño metodológico
+ evaluación
+ reproducibilidad
+ revisión/lectura crítica
+ ética/gobernanza
+ redacción
+ vigilancia
+ checklist

La matriz de propiedad debería ser principalmente de mantenimiento,
no de ejecución cotidiana, salvo evidencia contraria.

Determina si este patrón es viable y suficiente.

## Reproducibilidad

Verifica específicamente si el dominio cubre de manera adecuada:

- splits;
- prevención de leakage;
- semillas;
- configuración;
- versionamiento;
- datasets;
- código;
- modelos;
- hardware/software;
- artefactos;
- registro experimental;
- trazabilidad;
- replicabilidad/reproducibilidad cuando corresponda.

No inventes requisitos inexistentes.

Identifica vacíos como hallazgo si son relevantes y soportados por contenido.

## Evaluación experimental

Comprueba cobertura de:

- baseline;
- métricas apropiadas;
- validación;
- análisis de error;
- incertidumbre;
- comparación justa;
- pruebas estadísticas cuando correspondan;
- ablation studies cuando correspondan;
- criterios de éxito;
- validez interna/externa.

No exijas todas estas técnicas a toda investigación;
evalúa si existen criterios de activación adecuados.

## Estado del arte y veracidad

Evalúa si las reglas:

- evitan inventar papers/autores/resultados;
- diferencian evidencia verificada de hipótesis;
- exigen fuentes adecuadas;
- distinguen paper revisado por pares, preprint, documentación oficial y otras fuentes cuando sea pertinente;
- evitan claims de SOTA sin soporte.

## Densidad informativa

Busca:

- definiciones generales de investigación que el modelo ya conoce;
- tutoriales;
- explicaciones introductorias largas;
- listas de técnicas sin efecto sobre decisiones;
- reglas genéricas repetidas;
- contenido que no cambia conducta metodológica.

Preserva especialmente:

- criterios de validez;
- prevención de leakage;
- reproducibilidad;
- trazabilidad;
- evaluación;
- ética;
- veracidad de fuentes.

## Arquitectura física

Evalúa:

- mantener estructura plana;
- crear subdirectorios;
- migrar a SKILL.md.

No cambies estructura por uniformidad.

Solo recomienda cambio físico si mejora de manera concreta:

- routing;
- carga selectiva;
- mantenibilidad;
- separación de responsabilidades;
- portabilidad.

## Métricas

Aplica la escala 1–5 del auditor genérico para:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

No uses una media matemática como sustituto del juicio arquitectónico.

## Hallazgos

Clasifica:

P0
P1
P2
P3

Presta especial atención a P0/P1 relacionados con:

- leakage;
- evaluación incorrecta;
- claims no verificables;
- pérdida de reproducibilidad;
- sesgos metodológicos;
- ética/privacidad;
- mala separación entre investigación y desarrollo.

## Terra High

Trabaja inicialmente con razonamiento MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si:

- se eliminará conocimiento metodológico especializado;
- se fusionarán tres o más responsabilidades distintas;
- se afectará reproducibilidad, ética o validez científica;
- existe evidencia contradictoria;
- impacto alto + baja confianza.

No repitas toda la auditoría con High.

## Plan Luna

Si existen cambios justificados genera:

docs/plan_refactor_investigacion-ia_luna_20260910.md

Cada acción debe seguir el contrato determinista del auditor.

Clasifica como:

LUNA_LOW
LUNA_MEDIUM
TERRA_REQUIRED

No delegues decisiones metodológicas abiertas a Luna.

Si:

P0 = 0
P1 = 0
ambigüedad significativa = NO

y no existe cambio suficientemente justificado:

PLAN_EJECUCION_LUNA: NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_investigacion-ia_terra_20260910.md

Si corresponde:

docs/plan_refactor_investigacion-ia_luna_20260910.md

Actualiza:

docs/estado_investigacion-ia_20260910.md

## Restricciones

NO modifiques:

skills/investigacion-ia/

No crees archivos dentro del dominio.
No elimines archivos.
No muevas archivos.
No renombres archivos.

Esta fase es exclusivamente:

ANALIZAR
COMPARAR
DECIDIR
PLANIFICAR

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-ia

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

COMPONENTES_OPERATIVOS_AUDITADOS:

ARQUITECTURA:
MANTENER | REORGANIZAR | REFACTORIZAR

P0:
P1:
P2:
P3:

SOBREFRAGMENTACION:
BAJA | MEDIA | ALTA

REDUNDANCIA:
BAJA | MEDIA | ALTA

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

RIESGO_METODOLOGICO:
BAJO | MEDIO | ALTO

REVISION_TERRA_ALTA:

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_investigacion-ia_terra_20260910.md

PLAN:
docs/plan_refactor_investigacion-ia_luna_20260910.md
o NO_REQUERIDO