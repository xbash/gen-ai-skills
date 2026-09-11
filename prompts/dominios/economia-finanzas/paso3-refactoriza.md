Aplica estrictamente:

prompts/ejecuta_refactor_skills_luna.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
economia-finanzas

Ruta:
skills/economia-finanzas/

Fecha:
20260910

Plan:
docs/plan_refactor_economia-finanzas_luna_20260910.md

Acciones autorizadas:
ECO-P1-01

## Alcance

Ejecuta EXCLUSIVAMENTE:

ECO-P1-01

Target:

skills/economia-finanzas/README.md

NO modifiques:

skills/economia-finanzas/instrucciones_base_eco.md

skills/economia-finanzas/contabilidad_costos_reglas.md

skills/economia-finanzas/finanzas_corporativas_proyectos_reglas.md

skills/economia-finanzas/macro_micro_entorno_reglas.md

skills/economia-finanzas/econometria_datos_reglas.md

skills/economia-finanzas/riesgos_regulacion_chile_reglas.md

skills/economia-finanzas/estrategia_marketing_negocios_reglas.md

skills/economia-finanzas/personas_organizacion_reglas.md

skills/economia-finanzas/checklist_modelos_decision_eco.md

## Objetivo

Modificar únicamente README.md para declarar explícitamente
el routing de carga progresiva del dominio.

La arquitectura, inventario y contenido especializado ya fueron aprobados.

NO:
- rediseñar el dominio;
- crear nuevas skills;
- crear subdirectorios;
- crear SKILL.md;
- fusionar archivos;
- renombrar archivos;
- mover archivos;
- modificar reglas especializadas.

## Archivos a cargar

Carga únicamente los files_to_load definidos por ECO-P1-01:

docs/auditoria_economia-finanzas_terra_20260910.md

skills/economia-finanzas/README.md

skills/economia-finanzas/instrucciones_base_eco.md

skills/economia-finanzas/checklist_modelos_decision_eco.md

## Preservar

Conserva sin cambios semánticos:

- título;
- descripción;
- inventario;
- nombres de los diez archivos;
- descripción de cada archivo;
- principios del dominio;
- límites frente a asesoría financiera personalizada;
- límites frente a asesoría tributaria;
- límites frente a asesoría legal;
- límites frente a asesoría contable;
- límites frente a recomendaciones personalizadas de inversión;
- obligación de verificar datos, normativa e indicadores vigentes;
- fecha, fuente y alcance de información temporal.

## Cambio requerido

Sustituye la recomendación de uso actual por una sección:

# Carga progresiva

Debe declarar inequívocamente:

README
+
instrucciones_base_eco.md
+
un módulo principal según la tarea

Los módulos secundarios:

solo se cargan cuando exista una dependencia concreta.

Debe indicarse la razón de la carga secundaria.

No se deben cargar todos los módulos por defecto.

## Checklist

Declara:

checklist_modelos_decision_eco.md

como auxiliar que se utiliza únicamente cuando corresponda a:

- revisión;
- cierre;
- decisión sensible.

No debe ser contexto inicial obligatorio.

## Combinaciones condicionales

Incluye estas seis combinaciones como ejemplos de routing,
NO como cargas universales:

### Evaluación de proyecto

instrucciones_base_eco.md
+
finanzas_corporativas_proyectos_reglas.md

Agregar:

riesgos_regulacion_chile_reglas.md

solo si existen riesgos relevantes, regulación o continuidad.

### Análisis de inflación

instrucciones_base_eco.md
+
macro_micro_entorno_reglas.md

Agregar otros módulos solo si la pregunta cruza explícitamente
con otra responsabilidad.

### Análisis econométrico

instrucciones_base_eco.md
+
econometria_datos_reglas.md

Complementar con macro/micro únicamente cuando la interpretación
económica del fenómeno sea necesaria.

### Costeo

instrucciones_base_eco.md
+
contabilidad_costos_reglas.md

Agregar finanzas corporativas solo si la decisión deriva hacia
inversión, financiamiento o evaluación de proyectos.

### Modelo de negocio

instrucciones_base_eco.md
+
estrategia_marketing_negocios_reglas.md

Agregar personas/organización solo si la tarea incluye estructura,
capacidades, incentivos, adopción o cambio organizacional.

### Diseño organizacional

instrucciones_base_eco.md
+
personas_organizacion_reglas.md

Agregar estrategia/marketing/negocios únicamente cuando exista
dependencia con modelo de negocio, ejecución estratégica o mercado.

## Riesgos y regulación

riesgos_regulacion_chile_reglas.md

debe cargarse adicionalmente solo cuando exista una razón concreta como:

- regulación;
- cumplimiento;
- riesgo financiero relevante;
- continuidad;
- vigencia normativa.

No declararlo como dependencia universal de finanzas.

## Datos actuales y volatilidad

Preserva explícitamente que:

- tasas;
- inflación;
- UF;
- IPC;
- tipo de cambio;
- mercados;
- precios;
- normativa;
- indicadores económicos;

deben verificarse cuando la respuesta dependa de información vigente.

No agregues valores actuales.

No inventes fuentes, normativa ni cifras.

## Estructura mínima esperada del README

Debe conservar:

# Descripción

# Archivos del dominio

# Carga progresiva

# Principios del dominio

Puede usar subsecciones breves dentro de Carga progresiva.

## Restricciones

No agregar:

- productos financieros específicos;
- precios;
- tasas;
- cifras;
- versiones;
- legislación no existente en el archivo;
- herramientas;
- APIs;
- asesoría financiera personalizada;
- asesoría jurídica;
- asesoría tributaria;
- asesoría contable profesional;
- recomendación individualizada de inversión.

## Validación

Antes de marcar PASS verifica:

1. README conserva los 10 archivos del inventario.

2. README declara:
   base + un módulo principal.

3. Los módulos secundarios son condicionales.

4. Las seis combinaciones están presentes.

5. checklist es condicional para revisión/cierre/decisión sensible.

6. risks/regulación no es obligatorio por defecto.

7. los principios y límites existentes permanecen.

8. no se agregaron reglas especializadas nuevas.

9. no se modificó ningún archivo distinto de README.md.

10. no se crearon subdirectorios ni SKILL.md.

## Reporte

Genera:

docs/execution_report_economia-finanzas_20260910.md

Incluye:

ACTION_ID:
ECO-P1-01

STATUS:
PASS | FAIL | BLOCKED

FILES_LOADED:

FILES_MODIFIED:

README_ROUTING:
PASS | FAIL

INVENTARIO:
PASS | FAIL

CARGA_PROGRESIVA:
PASS | FAIL

CHECKLIST_CONDICIONAL:
PASS | FAIL

COMBINACIONES:
PASS | FAIL

RIESGOS_REGULACION_CONDICIONAL:
PASS | FAIL

PRINCIPIOS_Y_LIMITES:
PASS | FAIL

OTROS_ARCHIVOS_MODIFICADOS:
SI | NO

INCIDENTS:

## Respuesta en chat

Responde únicamente:

DOMINIO: economia-finanzas

ACCION:
ECO-P1-01

RESULTADO:
PASS | FAIL | BLOCKED

README_ROUTING:
INVENTARIO:
CARGA_PROGRESIVA:
CHECKLIST_CONDICIONAL:
COMBINACIONES:
RIESGOS_REGULACION_CONDICIONAL:
PRINCIPIOS_Y_LIMITES:

OTROS_ARCHIVOS_MODIFICADOS:

INCIDENCIAS:

SIGUIENTE_ACCION:
VALIDACION_POST_EJECUCION