Aplica estrictamente:

prompts/audita_skills_dominios_v2_terra.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
operaciones-tecnologia

Ruta:
skills/operaciones-tecnologia/

Fecha:
20260910

Modo:
AUDITORÍA_FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_operaciones-tecnologia_20260910.md

y:

docs/precheck_operaciones-tecnologia_20260910.md

Usa estos archivos únicamente para conocer:

- clasificación del PRECHECK;
- fase actual;
- inventario;
- routing;
- estado general.

La evidencia principal debe ser el contenido REAL y ACTUAL de:

skills/operaciones-tecnologia/

No asumas que la estructura plana actual es correcta solo porque los archivos
son operativos.

## Estado conocido

El dominio fue clasificado:

FUNCTIONAL

Existen 9 componentes operativos:

- instrucciones_base_ops.md
- bases_datos_operacion_reglas.md
- cloud_iac_kubernetes_reglas.md
- incidentes_cambios_dr_reglas.md
- linux_rhel_oel_bash_reglas.md
- observabilidad_continuidad_reglas.md
- redes_conectividad_firewall_reglas.md
- virtualizacion_contenedores_reglas.md
- windows_server_powershell_reglas.md

Y 2 auxiliares:

- README.md
- checklist_script_operacional.md

No existen placeholders.
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
- fronteras entre responsabilidades;
- riesgo operacional.

No optimices por cantidad de archivos.

No reduzcas especialización si ello degrada seguridad, trazabilidad,
recuperación, mantenibilidad u operación.

## Frontera 1 — base vs módulos especializados

Evalúa:

instrucciones_base_ops.md

contra todos los módulos especializados.

Determina:

- qué reglas deben permanecer en la base;
- qué reglas son realmente específicas;
- si la base contiene demasiado detalle operativo;
- si los módulos repiten excesivamente controles generales;
- si existe una separación clara entre invariantes y procedimientos.

Busca especialmente duplicación en:

- diagnóstico;
- cambios mínimos;
- rollback;
- evidencia;
- seguridad;
- logs;
- validación;
- continuidad;
- trazabilidad;
- comandos destructivos.

Distingue repetición necesaria de redundancia perjudicial.

## Frontera 2 — incidentes/cambios/DR vs observabilidad/continuidad

Evalúa:

incidentes_cambios_dr_reglas.md
↔
observabilidad_continuidad_reglas.md

Determina la frontera entre:

- detección;
- observabilidad;
- diagnóstico;
- respuesta a incidentes;
- gestión de cambios;
- rollback;
- recuperación;
- disaster recovery;
- continuidad operacional;
- postmortem.

Comprueba si existe duplicación sustantiva o complementariedad real.

No fusiones simplemente porque ambas unidades traten disponibilidad.

## Frontera 3 — cloud/IaC/Kubernetes vs virtualización/contenedores

Evalúa:

cloud_iac_kubernetes_reglas.md
↔
virtualizacion_contenedores_reglas.md

Distingue:

- infraestructura cloud;
- IaC;
- orquestación;
- Kubernetes;
- contenedores;
- runtime;
- virtualización;
- almacenamiento;
- redes;
- persistencia;
- operación de plataformas.

Determina cuándo una tarea requiere uno o ambos módulos.

No fusiones Kubernetes y contenedores solo por relación tecnológica.

## Frontera 4 — Linux vs Windows

Evalúa:

linux_rhel_oel_bash_reglas.md
↔
windows_server_powershell_reglas.md

Comprueba:

- si comparten reglas generales que deberían estar en la base;
- si mantienen suficiente especialización por sistema operativo;
- si los procedimientos, comandos, servicios y riesgos justifican separación;
- si existe contenido genérico repetido innecesariamente.

No fusiones únicamente porque ambos sean administración de sistemas.

## Frontera 5 — redes vs cloud/observabilidad

Evalúa:

redes_conectividad_firewall_reglas.md

contra:

- cloud_iac_kubernetes_reglas.md;
- observabilidad_continuidad_reglas.md;
- virtualizacion_contenedores_reglas.md.

Busca solapamientos en:

- DNS;
- puertos;
- firewall;
- rutas;
- TLS;
- balanceo;
- conectividad;
- health checks;
- latencia;
- pérdida de paquetes;
- troubleshooting.

Distingue responsabilidad de red
vs
diagnóstico/observabilidad
vs
configuración de plataforma.

## Frontera 6 — bases de datos operativas

Evalúa:

bases_datos_operacion_reglas.md

contra:

- incidentes_cambios_dr_reglas.md;
- observabilidad_continuidad_reglas.md;
- linux_rhel_oel_bash_reglas.md;
- windows_server_powershell_reglas.md.

Determina si el módulo de bases de datos está correctamente orientado a:

- operación;
- disponibilidad;
- backup/restore;
- rendimiento;
- espacio;
- sesiones;
- bloqueos;
- jobs;
- recuperación;
- cambios controlados.

Comprueba que no se convierta en un módulo genérico de diseño SQL,
porque ese alcance pertenece a otros dominios.

## Frontera 7 — checklist operacional

Evalúa:

checklist_script_operacional.md

contra:

instrucciones_base_ops.md

y módulos de Linux/Windows.

Determina si:

- sigue siendo auxiliar de cierre;
- es realmente un checklist de scripts operacionales;
- duplica el procedimiento de ejecución;
- debe cargarse solo cuando se crea o revisa un script;
- no debería cargarse en tareas puramente diagnósticas.

No lo fusiones con la base solo por compartir controles.

## Frontera 8 — riesgo operacional y seguridad

Evalúa transversalmente si los módulos cubren de manera suficiente:

- confirmación de entorno;
- alcance de cambios;
- privilegios;
- comandos destructivos;
- backup;
- rollback;
- validación posterior;
- evidencia;
- observabilidad;
- continuidad.

Distingue controles de seguridad operativa
de controles especializados de AppSec/SecOps.

No expandas este dominio hacia seguridad especializada si ya existe otro dominio para ello.

## Carga selectiva

Evalúa como hipótesis principal:

README
+
instrucciones_base_ops.md
+
un módulo especializado principal

y, solo cuando corresponda:

+ observabilidad/continuidad
+ incidentes/cambios/DR
+ redes
+ otro módulo de plataforma
+ checklist de script

Determina si esta carga cubre la mayoría de tareas.

Identifica casos donde varios módulos sean necesarios, por ejemplo:

- caída de servicio con problema de red;
- despliegue en Kubernetes;
- cambio de base de datos;
- incidente con rollback;
- problema de disco/espacio;
- script operacional multiplataforma.

No conviertas estos ejemplos en decisiones predeterminadas.

## Evaluación de sobrefragmentación

Hay 9 componentes operativos.

Determina si representan:

- capacidades independientes útiles;
- fragmentación excesiva;
- o una mezcla de ambas.

No uses el número de archivos como evidencia suficiente.

## Densidad informativa

Busca:

- definiciones generales de sistemas;
- tutoriales innecesarios;
- comandos estáticos sin criterio de uso;
- listas de herramientas;
- instrucciones genéricas repetidas;
- contenido que el modelo ya conoce;
- defaults que no estén justificados.

Preserva:

- reglas de seguridad operacional;
- prechecks;
- rollback;
- validaciones;
- trazabilidad;
- diagnóstico;
- criterios de decisión.

## Arquitectura física

Evalúa:

- mantener estructura plana;
- crear subdirectorios;
- migrar a SKILL.md.

No cambies estructura por uniformidad.

Solo recomienda cambio físico si mejora:

- routing;
- carga selectiva;
- mantenibilidad;
- portabilidad;
- separación operacional.

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

- se eliminará conocimiento operativo especializado;
- se fusionarán tres o más responsabilidades distintas;
- se afectará continuidad o seguridad;
- existe evidencia contradictoria;
- impacto alto + baja confianza.

No repitas toda la auditoría con High.

## Plan Luna

Si existen cambios justificados genera:

docs/plan_refactor_operaciones-tecnologia_luna_20260910.md

Cada acción debe seguir el contrato determinista del auditor.

Clasifica como:

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

docs/auditoria_operaciones-tecnologia_terra_20260910.md

Si corresponde:

docs/plan_refactor_operaciones-tecnologia_luna_20260910.md

Actualiza:

docs/estado_operaciones-tecnologia_20260910.md

## Restricciones

NO modifiques:

skills/operaciones-tecnologia/

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

DOMINIO: operaciones-tecnologia

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

RIESGO_OPERACIONAL:
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
docs/auditoria_operaciones-tecnologia_terra_20260910.md

PLAN:
docs/plan_refactor_operaciones-tecnologia_luna_20260910.md
o NO_REQUERIDO