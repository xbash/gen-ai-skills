Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
economia-finanzas

Ruta:
skills/economia-finanzas/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/precheck_economia-finanzas_20260910.md

y, si existe:

docs/estado_economia-finanzas_20260910.md

Úsalos solo para conocer:

- clasificación;
- inventario;
- estructura;
- routing;
- estado previo.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/economia-finanzas/

## Estado conocido

Clasificación:

FUNCTIONAL

Componentes operativos:

- instrucciones_base_eco.md
- contabilidad_costos_reglas.md
- finanzas_corporativas_proyectos_reglas.md
- macro_micro_entorno_reglas.md
- econometria_datos_reglas.md
- riesgos_regulacion_chile_reglas.md
- estrategia_marketing_negocios_reglas.md
- personas_organizacion_reglas.md

Auxiliares:

- README.md
- checklist_modelos_decision_eco.md

No existen placeholders.
No existen subdirectorios.
No existen SKILL.md.

## Objetivo

Audita si el dominio maximiza:

calidad de decisión / costo de contexto

Evalúa:

- utilidad;
- especificidad;
- claridad;
- aplicabilidad;
- densidad;
- reutilización;
- mantenibilidad;
- redundancia;
- sobrefragmentación;
- carga selectiva;
- routing;
- fronteras funcionales;
- cobertura;
- riesgos metodológicos;
- riesgos de actualidad/regulación;
- necesidad real de modularización adicional.

No optimices por número de archivos.

No propongas subdirectorios o SKILL.md solo por uniformidad.

## Frontera 1 — base vs módulos

Evalúa:

instrucciones_base_eco.md

contra todos los módulos.

Determina:

- qué invariantes deben permanecer en la base;
- qué detalle pertenece a módulos;
- si la base repite reglas especializadas;
- si los módulos repiten innecesariamente reglas generales;
- si README + base + un módulo principal es suficiente para una tarea acotada.

Presta atención a:

- supuestos;
- fuentes;
- escenarios;
- incertidumbre;
- horizonte temporal;
- moneda;
- inflación;
- riesgo;
- regulación;
- límites de recomendación;
- datos actuales vs conocimiento estable.

## Frontera 2 — contabilidad/costos vs finanzas corporativas

Evalúa:

contabilidad_costos_reglas.md
↔
finanzas_corporativas_proyectos_reglas.md

Distingue:

CONTABILIDAD/COSTOS:
- estados financieros;
- costos;
- márgenes;
- presupuestos;
- control;
- clasificación contable;
- indicadores operativos.

FINANZAS CORPORATIVAS:
- inversión;
- financiamiento;
- valoración;
- costo de capital;
- flujos;
- proyectos;
- VAN/TIR cuando corresponda;
- estructura de capital;
- decisiones financieras.

No fusiones solo porque ambos trabajan con dinero o estados financieros.

## Frontera 3 — macro/micro vs estrategia/negocios

Evalúa:

macro_micro_entorno_reglas.md
↔
estrategia_marketing_negocios_reglas.md

Distingue:

- análisis económico del entorno;
- incentivos;
- oferta/demanda;
- inflación;
- tasas;
- empleo;
- crecimiento;
- competencia;

de:

- modelo de negocio;
- estrategia;
- posicionamiento;
- marketing;
- clientes;
- propuesta de valor;
- ejecución empresarial.

Comprueba si el segundo invade demasiado un eventual dominio de negocios.

## Frontera 4 — econometría/datos vs ciencia-ingeniería-datos

Evalúa:

econometria_datos_reglas.md

Determina si su alcance permanece en:

- modelación económica;
- inferencia;
- causalidad;
- series;
- panel;
- regresión;
- interpretación económica;
- supuestos;
- calidad de evidencia;

y no se convierte en:

- ingeniería de datos general;
- pipelines;
- infraestructura;
- bases de datos;
- MLOps;
- analítica genérica.

Identifica si requiere complementar con
ciencia-ingenieria-datos en tareas técnicas,
pero no dupliques ese dominio.

## Frontera 5 — econometría vs macro/micro

Evalúa:

econometria_datos_reglas.md
↔
macro_micro_entorno_reglas.md

Distingue:

teoría/interpretación económica

vs

métodos empíricos para estimar, contrastar o modelar relaciones.

No fusionar por compartir variables económicas.

## Frontera 6 — riesgos/regulación vs finanzas corporativas

Evalúa:

riesgos_regulacion_chile_reglas.md
↔
finanzas_corporativas_proyectos_reglas.md

Distingue:

- riesgo financiero;
- riesgo de mercado;
- crédito;
- liquidez;
- operacional cuando corresponda;
- regulación;
- restricciones;
- cumplimiento;

de:

- decisiones de inversión;
- evaluación de proyectos;
- financiamiento;
- valoración;
- estructura financiera.

Comprueba si el riesgo es módulo transversal condicional
o dependencia obligatoria en demasiados casos.

## Frontera 7 — regulación Chile

Audita especialmente:

riesgos_regulacion_chile_reglas.md

por contener conocimiento potencialmente temporal.

Distingue:

A. principios relativamente estables;
B. datos/reglas que dependen de vigencia;
C. referencias regulatorias que requieren verificación actual.

Evalúa si el archivo obliga a:

- verificar regulación vigente;
- indicar fecha de corte;
- distinguir fuente oficial de interpretación;
- evitar afirmar requisitos normativos sin fuente actual;
- separar análisis educativo de asesoría legal/regulatoria.

No verifiques ahora legislación externa salvo que el auditor genérico lo requiera.
Esta auditoría evalúa la calidad de las instrucciones.

No inventes normativa chilena.

## Frontera 8 — estrategia/marketing/negocios

Evalúa:

estrategia_marketing_negocios_reglas.md

Determina si constituye una capacidad coherente
o si agrupa demasiadas responsabilidades.

Analiza por separado:

- estrategia competitiva;
- modelo de negocio;
- marketing;
- mercado/cliente;
- propuesta de valor;
- planificación empresarial.

No dividas automáticamente.

Recomienda separación solo si existen workflows,
triggers y artefactos claramente independientes.

## Frontera 9 — personas/organización

Evalúa:

personas_organizacion_reglas.md

contra:

estrategia_marketing_negocios_reglas.md

Determina si aporta una capacidad propia en:

- estructura organizacional;
- roles;
- capacidades;
- incentivos;
- cultura;
- gestión de personas;
- cambio organizacional;

o si su contenido es demasiado genérico.

Evita expandir hacia psicología clínica,
derecho laboral o recursos humanos operacional detallado.

## Frontera 10 — inversiones y mercados

Determina si el dominio actual posee o NO posee
una capacidad explícita para:

- análisis de inversiones;
- valoración de activos;
- mercados financieros;
- portafolios;
- riesgo-retorno;
- instrumentos financieros.

IMPORTANTE:

capacidad ausente
≠
skill nueva automática

Si falta, determina si:

- pertenece realmente a economia-finanzas;
- tiene trigger independiente;
- es suficientemente frecuente/reutilizable;
- está ya cubierta parcialmente por finanzas corporativas;
- merece una skill propia.

Clasifica como:
SUFICIENTE
PARCIAL
AUSENTE_NO_JUSTIFICA_SKILL
AUSENTE_JUSTIFICA_CANDIDATA

No inventes una skill por completar taxonomía.

## Frontera 11 — finanzas personales

Evalúa si existe contenido de:

- presupuesto personal;
- deuda;
- ahorro;
- inversión personal;
- planificación financiera;
- seguros;
- jubilación.

No asumas que debe existir.

Determina si:
- pertenece al alcance del dominio;
- debería ser una skill especializada;
- o sería mejor mantener fuera del dominio actual.

No mezcles análisis financiero educativo con asesoramiento financiero personalizado.

## Frontera 12 — decisiones financieras sensibles

Comprueba que las instrucciones distingan entre:

- explicación educativa;
- análisis;
- simulación;
- comparación de escenarios;
- recomendación general;

y:

- recomendación financiera individualizada;
- consejo de inversión;
- consejo crediticio;
- interpretación regulatoria definitiva.

Verifica existencia de:

- supuestos;
- horizonte;
- moneda;
- inflación;
- impuestos cuando correspondan;
- riesgo;
- sensibilidad;
- incertidumbre;
- vigencia de datos;
- fuentes.

No exijas todos los campos a toda tarea;
deben activarse según el problema.

## Frontera 13 — datos actuales

Evalúa si el dominio diferencia correctamente:

CONOCIMIENTO ESTABLE:
- conceptos;
- métodos;
- fórmulas;
- marcos analíticos.

DATOS VOLÁTILES:
- tasas;
- inflación;
- UF;
- IPC;
- precios;
- tipo de cambio;
- mercados;
- regulación;
- indicadores macro;
- valores de activos.

Las instrucciones deben exigir verificación actual
cuando la respuesta dependa de datos volátiles.

No aceptes números actuales de memoria como regla de trabajo.

## Frontera 14 — Chile vs portabilidad

Evalúa si:

riesgos_regulacion_chile_reglas.md

es correctamente específico de Chile,
mientras el resto del dominio mantiene portabilidad.

Determina si conviene:

- mantener Chile como módulo especializado;
- separar regulación general de regulación Chile;
- o mantener arquitectura actual.

No propongas separar sin un beneficio claro.

## Frontera 15 — checklist

Evalúa:

checklist_modelos_decision_eco.md

Determina si:

- sigue siendo auxiliar;
- sirve para cierre/revisión;
- duplica excesivamente reglas;
- contiene metodología operativa que debería estar en módulos;
- debe cargarse solo en análisis de decisión, revisión o cierre.

No fusionar por repetición de verificaciones.

## Gap analysis

Evalúa si faltan capacidades transversales relevantes.

Considera como hipótesis, NO como arquitectura predefinida:

- inversiones_mercados
- valoracion
- riesgo_financiero
- finanzas_personales
- politica_economica
- comercio_internacional
- decision_bajo_incertidumbre
- emprendimiento/modelos_negocio

Para cada candidato pregunta:

1. ¿pertenece al dominio?
2. ¿cambia decisiones?
3. ¿tiene trigger propio?
4. ¿es reutilizable?
5. ¿no está ya suficientemente cubierto?
6. ¿justifica contexto separado?

Solo entonces:

SKILL_CANDIDATA = SI

No rellenes huecos taxonómicos.

## Arquitectura física

Evalúa:

A. mantener estructura plana actual;
B. modularizar conservando archivos .md;
C. crear subdirectorios;
D. migrar alguna capacidad a SKILL.md.

Prefiere la estructura mínima suficiente.

No uses geoespacial como patrón obligatorio.

## Carga selectiva

Evalúa como hipótesis:

README
+
instrucciones_base_eco.md
+
un módulo principal

y módulos secundarios solo cuando haya dependencia.

Ejemplos a evaluar:

### Evaluación de proyecto
base
+ finanzas corporativas
+ riesgos si aplica

### Análisis de inflación
base
+ macro/micro

### Análisis econométrico
base
+ econometría/datos

### Costeo
base
+ contabilidad/costos

### Modelo de negocio
base
+ estrategia/marketing/negocios

### Diseño organizacional
base
+ personas/organización

Comprueba si el README actual permite inferir estas combinaciones.

## Cobertura temporal y fuentes

Evalúa si las reglas ordenan:

- declarar fecha de corte;
- verificar actualidad;
- usar fuentes oficiales cuando corresponda;
- distinguir hechos, supuestos y escenarios;
- no inventar datos;
- no asumir vigencia regulatoria.

Para Chile, fuentes oficiales serían una categoría de fuente,
pero NO inventes referencias específicas si los archivos no las contienen.

## Métricas cualitativas

Usa la escala 1–5 del auditor para:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

No uses una media matemática como decisión arquitectónica.

## Hallazgos

Clasifica:

P0
P1
P2
P3

Pon especial atención a P0/P1 por:

- reglas financieras incorrectas;
- mezcla contabilidad/finanzas que genere decisiones erróneas;
- ausencia de control de actualidad;
- afirmaciones regulatorias sin verificación;
- causalidad económica mal tratada;
- recomendaciones financieras individualizadas sin límites;
- pérdida de trazabilidad;
- sobrecarga que impida routing razonable.

## Terra High

Trabaja inicialmente con MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si:

- se eliminará conocimiento financiero especializado;
- se fusionarán tres o más responsabilidades;
- se modifica una frontera de alto impacto;
- existen contradicciones metodológicas;
- se afecta regulación/riesgo de manera sensible;
- impacto alto + baja confianza.

No repitas toda la auditoría con High.

## Plan Luna

Si existen cambios suficientemente justificados genera:

docs/plan_refactor_economia-finanzas_luna_20260910.md

El plan debe ser determinista.

No delegues a Luna decisiones abiertas sobre:

- qué skills crear;
- qué contenido mover;
- qué reglas regulatorias preservar;
- qué capacidades fusionar.

Toda acción debe tener:

action_id
priority
type
execution_level
status
depends_on
files_to_load
source
target
objective
instructions
must_preserve
must_remove
acceptance_criteria
rollback

Y, cuando corresponda:

content_contract

## Criterio de no cambio

Si:

P0 = 0
P1 = 0
AMBIGÜEDAD_SIGNIFICATIVA = NO

y no existe mejora estructural suficientemente justificada:

PLAN_EJECUCION_LUNA:
NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_economia-finanzas_terra_20260910.md

Si corresponde:

docs/plan_refactor_economia-finanzas_luna_20260910.md

Actualiza:

docs/estado_economia-finanzas_20260910.md

## Restricciones

NO modifiques:

skills/economia-finanzas/

NO crees archivos dentro del dominio.
NO muevas archivos.
NO renombres archivos.
NO elimines archivos.

Esta fase es exclusivamente:

ANALIZAR
COMPARAR
EVALUAR COBERTURA
DECIDIR
PLANIFICAR

## Respuesta en chat

Responde únicamente:

DOMINIO: economia-finanzas

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

RIESGO_FINANCIERO_METODOLOGICO:
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
docs/auditoria_economia-finanzas_terra_20260910.md

PLAN:
docs/plan_refactor_economia-finanzas_luna_20260910.md
o NO_REQUERIDO