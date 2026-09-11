Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
economia-finanzas

Ruta:
skills/economia-finanzas/

Fecha:
20260910

Realiza únicamente la VALIDACIÓN POST-EJECUCIÓN de ECO-P1-01.

NO modifiques archivos.
NO reescribas README.
NO propongas nuevas skills.
NO rediseñes arquitectura.

## Archivos a cargar

Carga únicamente:

docs/auditoria_economia-finanzas_terra_20260910.md

docs/plan_refactor_economia-finanzas_luna_20260910.md

docs/execution_report_economia-finanzas_20260910.md

skills/economia-finanzas/README.md

skills/economia-finanzas/instrucciones_base_eco.md

skills/economia-finanzas/checklist_modelos_decision_eco.md

## Objetivo

Validar mecánicamente que ECO-P1-01 fue ejecutada fielmente
y que el dominio quedó listo para auditoría post-refactor.

## Validación 1 — alcance de cambios

Confirma:

- solo README.md fue modificado;
- ningún módulo fue modificado;
- base no fue modificada;
- checklist no fue modificado;
- no se crearon subdirectorios;
- no se creó SKILL.md;
- no se crearon archivos adicionales bajo el dominio.

Resultado:

ALCANCE_CAMBIOS:
PASS | FAIL

## Validación 2 — inventario

README debe conservar exactamente los 10 archivos existentes
con sus nombres correctos.

Resultado:

INVENTARIO:
PASS | FAIL

## Validación 3 — carga progresiva

README debe declarar inequívocamente:

README
+
instrucciones_base_eco.md
+
un módulo principal según la tarea

Los módulos secundarios:

solo por dependencia concreta
y con razón explícita.

Debe quedar prohibido cargar todos los módulos por defecto.

Resultado:

CARGA_PROGRESIVA:
PASS | FAIL

## Validación 4 — checklist

checklist_modelos_decision_eco.md

debe figurar como auxiliar para:

- revisión;
- cierre;
- decisión sensible;

y no como contexto inicial obligatorio.

Resultado:

CHECKLIST_CONDICIONAL:
PASS | FAIL

## Validación 5 — seis combinaciones

Confirma presencia de:

1. evaluación de proyecto
2. análisis de inflación
3. análisis econométrico
4. costeo
5. modelo de negocio
6. diseño organizacional

Deben presentarse como combinaciones condicionales,
no como cargas universales.

Resultado:

COMBINACIONES:
PASS | FAIL

## Validación 6 — riesgos y regulación

Confirma que:

riesgos_regulacion_chile_reglas.md

se agrega solo ante:

- regulación;
- cumplimiento;
- riesgo financiero relevante;
- continuidad;
- vigencia normativa.

No debe aparecer como dependencia universal.

Resultado:

RIESGOS_REGULACION:
PASS | FAIL

## Validación 7 — principios y límites

Confirma que README preserve:

- decisiones prudentes;
- datos actuales y fuentes;
- supuestos;
- incertidumbre;
- horizonte;
- moneda;
- inflación cuando corresponda;
- límites frente a asesoría financiera;
- límites tributarios;
- límites legales;
- límites contables;
- límites frente a recomendaciones personalizadas de inversión.

Resultado:

PRINCIPIOS_LIMITES:
PASS | FAIL

## Validación 8 — información volátil

Confirma que README mantenga la necesidad de verificar,
cuando corresponda:

- tasas;
- inflación;
- UF;
- IPC;
- tipo de cambio;
- mercados;
- precios;
- normativa;
- indicadores económicos.

No deben existir valores actuales añadidos.

Resultado:

ACTUALIDAD_DATOS:
PASS | FAIL

## Validación 9 — arquitectura

Confirma que la arquitectura sigue:

ESTRUCTURA:
PLANA

OPERATIVOS:
8

AUXILIARES:
2

SUBDIRECTORIOS:
0

SKILL_MD:
0

Resultado:

ARQUITECTURA:
PASS | FAIL

## Criterio final

VALIDACION_POST_EJECUCION = PASS

solo si:

ALCANCE_CAMBIOS = PASS
INVENTARIO = PASS
CARGA_PROGRESIVA = PASS
CHECKLIST_CONDICIONAL = PASS
COMBINACIONES = PASS
RIESGOS_REGULACION = PASS
PRINCIPIOS_LIMITES = PASS
ACTUALIDAD_DATOS = PASS
ARQUITECTURA = PASS
AMBIGÜEDAD_SIGNIFICATIVA = NO

En caso contrario:

VALIDACION_POST_EJECUCION = FAIL

No corrijas automáticamente.

## Reporte

Actualiza:

docs/execution_report_economia-finanzas_20260910.md

añadiendo:

## VALIDACION_POST_EJECUCION

ALCANCE_CAMBIOS:
PASS | FAIL

INVENTARIO:
PASS | FAIL

CARGA_PROGRESIVA:
PASS | FAIL

CHECKLIST_CONDICIONAL:
PASS | FAIL

COMBINACIONES:
PASS | FAIL

RIESGOS_REGULACION:
PASS | FAIL

PRINCIPIOS_LIMITES:
PASS | FAIL

ACTUALIDAD_DATOS:
PASS | FAIL

ARQUITECTURA:
PASS | FAIL

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

VALIDACION_POST_EJECUCION:
PASS | FAIL

INCIDENCIAS:

SIGUIENTE_ACCION:

## Respuesta en chat

Responde únicamente:

DOMINIO: economia-finanzas

VALIDACION_POST_EJECUCION:
PASS | FAIL

ALCANCE_CAMBIOS:
INVENTARIO:
CARGA_PROGRESIVA:
CHECKLIST_CONDICIONAL:
COMBINACIONES:
RIESGOS_REGULACION:
PRINCIPIOS_LIMITES:
ACTUALIDAD_DATOS:
ARQUITECTURA:

AMBIGÜEDAD_SIGNIFICATIVA:

INCIDENCIAS:

SIGUIENTE_ACCION:
AUDITORIA_POST_REFACTOR