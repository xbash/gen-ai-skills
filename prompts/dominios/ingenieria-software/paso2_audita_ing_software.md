Aplica estrictamente:

prompts/audita_skills_dominios_v2_terra.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
ingenieria-software

Ruta:
skills/ingenieria-software/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_ingenieria-software_20260910.md

y:

docs/precheck_ingenieria-software_20260910.md

Usa estos archivos únicamente para conocer:

- clasificación del PRECHECK;
- fase actual;
- inventario;
- routing;
- estado general.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/ingenieria-software/

No asumas que la estructura plana actual es correcta solo porque los archivos
son operativos.

## Estado conocido

El dominio fue clasificado:

FUNCTIONAL

Existen 8 componentes operativos:

- instrucciones_base_dev.md
- diseno_arquitectura_reglas.md
- backend_api_reglas.md
- frontend_web_reglas.md
- bases_datos_sql_reglas.md
- devops_ci_cd_reglas.md
- pruebas_calidad_reglas.md
- seguridad_codigo_reglas.md

Y 2 auxiliares:

- README.md
- checklist_codigo_dev.md

No existen placeholders.
No existen subdirectorios relevantes.
No existen SKILL.md.

## Objetivo

Audita si el dominio maximiza:

calidad operativa / costo de contexto

Evalúa:

- utilidad;
- aplicabilidad;
- granularidad;
- redundancia;
- solapamiento semántico;
- claridad de triggers;
- densidad informativa;
- costo de contexto;
- reutilización;
- mantenibilidad;
- portabilidad;
- cobertura;
- carga selectiva;
- fronteras entre responsabilidades.

No optimices por cantidad de archivos.

No reduzcas especialización si ello degrada calidad técnica,
seguridad, mantenibilidad o aplicabilidad.

## Frontera 1 — base vs módulos especializados

Evalúa:

instrucciones_base_dev.md
↔
diseno_arquitectura_reglas.md
backend_api_reglas.md
frontend_web_reglas.md
bases_datos_sql_reglas.md
devops_ci_cd_reglas.md
pruebas_calidad_reglas.md
seguridad_codigo_reglas.md

Determina:

- qué reglas deben estar en la base;
- qué reglas son realmente especializadas;
- si existe duplicación transversal;
- si la base contiene contenido demasiado específico;
- si los módulos repiten innecesariamente reglas generales;
- si la carga base + módulo principal es suficiente para la mayoría de tareas.

Distingue entre repetición necesaria y redundancia perjudicial.

## Frontera 2 — diseño/arquitectura vs backend/frontend

Evalúa:

diseno_arquitectura_reglas.md
↔
backend_api_reglas.md
↔
frontend_web_reglas.md

Busca posibles solapamientos en:

- separación de responsabilidades;
- contratos;
- capas;
- dependencias;
- acoplamiento;
- interfaces;
- modularidad;
- escalabilidad;
- mantenibilidad.

Determina cuándo arquitectura debe cargarse además de backend o frontend.

No conviertas arquitectura en dependencia obligatoria si no aporta valor.

## Frontera 3 — backend/API vs bases de datos

Evalúa:

backend_api_reglas.md
↔
bases_datos_sql_reglas.md

Distingue claramente entre:

- contratos de servicio;
- lógica de negocio;
- persistencia;
- transacciones;
- consultas;
- modelado de datos;
- consistencia;
- rendimiento.

Comprueba si existe duplicación en validación, errores, transacciones o acceso a datos.

No fusiones backend y persistencia salvo evidencia fuerte.

## Frontera 4 — DevOps vs arquitectura

Evalúa:

devops_ci_cd_reglas.md
↔
diseno_arquitectura_reglas.md

Busca solapamientos en:

- despliegue;
- configuración;
- dependencias;
- ambientes;
- observabilidad;
- rollback;
- resiliencia;
- operación.

Distingue:

arquitectura del sistema
vs
pipeline de entrega y operación.

## Frontera 5 — pruebas/calidad vs checklist

Evalúa:

pruebas_calidad_reglas.md
↔
checklist_codigo_dev.md

Determina si:

- pruebas_calidad define procedimiento;
- checklist verifica cierre;
- existe duplicación perjudicial;
- checklist debe seguir bajo demanda;
- alguna parte del checklist debería integrarse en pruebas_calidad.

No fusiones únicamente porque ambos contienen verificaciones.

## Frontera 6 — seguridad vs backend/frontend/DevOps

Evalúa:

seguridad_codigo_reglas.md

contra:

- backend_api_reglas.md;
- frontend_web_reglas.md;
- devops_ci_cd_reglas.md;
- bases_datos_sql_reglas.md.

Busca controles duplicados de:

- autenticación;
- autorización;
- secretos;
- validación;
- inyección;
- dependencias;
- configuración;
- transporte;
- acceso a datos.

Determina si la repetición existente es:

- necesaria para autonomía;
- o redundancia perjudicial.

Seguridad debe seguir siendo activable por riesgo, no necesariamente cargarse siempre.

## Frontera 7 — frontend

Evalúa:

frontend_web_reglas.md

Determina si su alcance está bien delimitado a:

- UI;
- estado;
- accesibilidad;
- rendimiento de cliente;
- UX técnica;
- interacción con APIs.

Comprueba que no absorba reglas de backend, arquitectura o seguridad general sin necesidad.

## Carga selectiva

Evalúa como hipótesis principal:

README
+
instrucciones_base_dev.md
+
un módulo especializado principal

y solo cuando corresponda:

+ arquitectura
+ seguridad
+ pruebas/calidad
+ otro módulo dependiente
+ checklist de cierre

Determina si esta carga es suficiente para la mayoría de tareas.

Identifica explícitamente casos donde sea necesario cargar varios módulos.

## Evaluación de sobrefragmentación

Hay 8 componentes operativos.

Determina si representan:

- capacidades independientes útiles;
- fragmentación excesiva;
- o una combinación de ambas.

No uses el número de archivos como evidencia suficiente.

Evalúa fronteras operativas reales.

## Densidad informativa

Busca:

- definiciones generales que el modelo ya conoce;
- tutoriales innecesarios;
- ejemplos extensos;
- listas de tecnologías sin efecto operativo;
- repetición semántica;
- reglas que no cambian decisiones;
- instrucciones excesivamente genéricas.

Preserva contenido que sí afecte diseño, implementación, prueba,
seguridad, operación o mantenibilidad.

## Arquitectura física

Evalúa explícitamente:

- mantener estructura plana;
- reorganizar en subdirectorios;
- migrar a SKILL.md.

No migres a SKILL.md por uniformidad con geoespacial.

Solo recomienda cambio físico si mejora:

- routing;
- carga selectiva;
- mantenibilidad;
- portabilidad;
- claridad de responsabilidades.

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

## Terra High

Trabaja con razonamiento MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si:

- se eliminará conocimiento especializado;
- se fusionarán tres o más responsabilidades distintas;
- se afectará seguridad o calidad;
- existe evidencia contradictoria;
- impacto alto + baja confianza.

No repitas toda la auditoría con High.

## Plan Luna

Si existen cambios justificados genera:

docs/plan_refactor_ingenieria-software_luna_20260910.md

Cada acción debe seguir el contrato determinista del auditor.

Clasifica acciones como:

LUNA_LOW
LUNA_MEDIUM
TERRA_REQUIRED

No delegues decisiones arquitectónicas abiertas a Luna.

Si:

P0 = 0
P1 = 0
ambigüedad significativa = NO

y no hay cambios realmente justificados:

PLAN_EJECUCION_LUNA: NO REQUERIDO

## Archivos de salida

Genera:

docs/auditoria_ingenieria-software_terra_20260910.md

Si corresponde:

docs/plan_refactor_ingenieria-software_luna_20260910.md

Actualiza:

docs/estado_ingenieria-software_20260910.md

## Restricciones

NO modifiques:

skills/ingenieria-software/

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

DOMINIO: ingenieria-software

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

REVISION_TERRA_ALTA:

PLAN_EJECUCION_LUNA:
REQUERIDO | NO_REQUERIDO

ACCIONES_READY:
ACCIONES_BLOCKED:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

INFORME:
docs/auditoria_ingenieria-software_terra_20260910.md

PLAN:
docs/plan_refactor_ingenieria-software_luna_20260910.md
o NO_REQUERIDO