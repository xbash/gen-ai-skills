Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Realiza únicamente una VALIDACIÓN INTERMEDIA previa a IG-P1-07.

NO modifiques archivos.
NO ejecutes IG-P1-07.
NO reescribas la base.
NO propongas nuevas skills.
NO rediseñes la arquitectura.

## Archivos a cargar

Carga únicamente:

docs/plan_refactor_investigacion-general_luna_20260910.md

docs/execution_report_investigacion-general_20260910.md

skills/investigacion-general/instrucciones_base_investiga.md

skills/investigacion-general/checklist_investigacion.md

skills/investigacion-general/README.md

skills/investigacion-general/diseno_metodologico_datos_reglas.md

skills/investigacion-general/revision_evidencia_fuentes_reglas.md

skills/investigacion-general/analisis_inferencia_resultados_reglas.md

skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md

skills/investigacion-general/etica_integridad_impacto_reglas.md

## Objetivo

Determinar si existe suficiente trazabilidad y cobertura para autorizar
la compactación posterior de:

skills/investigacion-general/instrucciones_base_investiga.md

mediante la acción:

IG-P1-07

## Validación 1 — Inventario

Confirma que existan exactamente estos ocho Markdown:

README.md
instrucciones_base_investiga.md
checklist_investigacion.md
diseno_metodologico_datos_reglas.md
revision_evidencia_fuentes_reglas.md
analisis_inferencia_resultados_reglas.md
reproducibilidad_trazabilidad_reglas.md
etica_integridad_impacto_reglas.md

Confirma además:

- no existen subdirectorios nuevos;
- no existe SKILL.md;
- la base original permanece intacta;
- el checklist permanece intacto.

## Validación 2 — Contratos de contenido

Comprueba que cada módulo creado cumple su content_contract.

### diseno_metodologico_datos_reglas.md

Debe cubrir:

- formulación;
- diseño;
- datos;
- muestreo;
- medición;
- validez;
- criterios condicionales por enfoque.

No debe absorber:

- análisis final;
- reproducibilidad detallada;
- ética especializada.

### revision_evidencia_fuentes_reglas.md

Debe cubrir:

- búsqueda;
- selección;
- calidad;
- verificación;
- atribución;
- trazabilidad de fuentes.

No debe absorber:

- diseño experimental;
- análisis de resultados.

### analisis_inferencia_resultados_reglas.md

Debe cubrir:

- métricas;
- comparación;
- incertidumbre;
- análisis cuantitativo y cualitativo;
- inferencia;
- causalidad vs asociación;
- límites.

No debe convertirse en manual estadístico.

### reproducibilidad_trazabilidad_reglas.md

Debe cubrir:

- artefactos;
- versiones;
- transformaciones;
- configuraciones;
- verificación;
- repetición/reproducción;
- control de cambios.

No debe exigir reproducibilidad computacional universal.

### etica_integridad_impacto_reglas.md

Debe cubrir:

- actores;
- riesgos;
- privacidad;
- consentimiento;
- integridad científica;
- atribución;
- conflictos de interés;
- impacto;
- límites.

No debe transformarse en asesoría jurídica ni seguridad técnica especializada.

## Validación 3 — Trazabilidad de la base original

Construye una matriz:

| Sección/regla original | Destino | Estado |
|---|---|---|

Cada sección o regla normativa relevante de:

instrucciones_base_investiga.md

debe tener exactamente uno de estos destinos:

BASE
DISENO_DATOS
EVIDENCIA_FUENTES
ANALISIS_INFERENCIA
REPRODUCIBILIDAD
ETICA_INTEGRIDAD
CHECKLIST

La trazabilidad debe ser funcional, no necesariamente literal.

No autorices IG-P1-07 si alguna regla:

- queda sin destino;
- tiene destino ambiguo;
- pierde una condición importante;
- cambia de significado;
- se transforma de condicional a universal.

## Validación 4 — Invariantes que deben quedar en BASE

Confirma que deben permanecer en la base:

- rol y alcance transversal;
- independencia disciplinaria;
- principio de evidencia;
- no invención;
- proporcionalidad de conclusiones;
- separación entre:
  evidencia,
  resultado,
  interpretación,
  inferencia,
  recomendación,
  limitación;
- límites de causalidad;
- solicitud de información faltante;
- contrato de carga;
- método de respuesta;
- formato proporcional.

Si alguno de estos conceptos no está claramente preservado,
marca FAIL.

## Validación 5 — Routing

Confirma que README permite:

README
+
base
+
un módulo principal

y:

módulos secundarios solo por dependencia concreta

y:

checklist solo en cierre o revisión.

Comprueba que cada módulo tenga:

USAR CUANDO
NO USAR CUANDO

y que no se indique cargar todos los módulos por defecto.

## Validación 6 — Redundancia normativa

Busca únicamente redundancia normativa evidente entre módulos.

No marques como defecto:

- referencias cruzadas;
- recordatorios breves;
- controles necesarios para autonomía.

Marca problema solo si una misma regla normativa está duplicada con el
mismo propósito y autoridad en varios módulos.

## Criterio de autorización

IG-P1-07 queda:

AUTHORIZED

solo si:

- inventario = PASS;
- contratos = PASS;
- trazabilidad = PASS;
- invariantes de base = PASS;
- routing = PASS;
- no existe pérdida normativa;
- no existe ambigüedad significativa.

En cualquier otro caso:

BLOCKED

## Salida

Actualiza:

docs/execution_report_investigacion-general_20260910.md

añadiendo:

## VALIDACION_INTERMEDIA_IG-P1-07

INVENTARIO:
PASS | FAIL

CONTRATOS:
PASS | FAIL

TRAZABILIDAD:
PASS | FAIL

INVARIANTES_BASE:
PASS | FAIL

ROUTING:
PASS | FAIL

REDUNDANCIA_NORMATIVA:
PASS | FAIL

PERDIDA_NORMATIVA:
SI | NO

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

IG-P1-07:
AUTHORIZED | BLOCKED

INCIDENCIAS:

No ejecutes IG-P1-07.

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

VALIDACION_INTERMEDIA:
PASS | FAIL

INVENTARIO:
CONTRATOS:
TRAZABILIDAD:
INVARIANTES_BASE:
ROUTING:
REDUNDANCIA_NORMATIVA:

PERDIDA_NORMATIVA:
AMBIGÜEDAD_SIGNIFICATIVA:

IG-P1-07:
AUTHORIZED | BLOCKED

INCIDENCIAS:

SIGUIENTE_ACCION: