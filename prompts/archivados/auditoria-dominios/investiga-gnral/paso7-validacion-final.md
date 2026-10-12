Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Realiza únicamente la VALIDACIÓN FINAL del refactor de investigacion-general.

NO modifiques archivos.
NO reescribas contenido.
NO propongas nuevas skills.
NO rediseñes arquitectura.
NO ejecutes acciones adicionales.

## Archivos a cargar

Carga únicamente:

docs/plan_refactor_investigacion-general_luna_20260910.md

docs/execution_report_investigacion-general_20260910.md

skills/investigacion-general/README.md

skills/investigacion-general/instrucciones_base_investiga.md

skills/investigacion-general/checklist_investigacion.md

skills/investigacion-general/diseno_metodologico_datos_reglas.md

skills/investigacion-general/revision_evidencia_fuentes_reglas.md

skills/investigacion-general/analisis_inferencia_resultados_reglas.md

skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md

skills/investigacion-general/etica_integridad_impacto_reglas.md

## Estado esperado

Deben existir exactamente ocho Markdown:

README.md
instrucciones_base_investiga.md
checklist_investigacion.md
diseno_metodologico_datos_reglas.md
revision_evidencia_fuentes_reglas.md
analisis_inferencia_resultados_reglas.md
reproducibilidad_trazabilidad_reglas.md
etica_integridad_impacto_reglas.md

No deben existir:

- subdirectorios nuevos;
- SKILL.md;
- referencias rotas;
- archivos adicionales creados por el refactor.

## Validación 1 — ejecución del plan

Confirma:

IG-P1-01 = PASS
IG-P1-02 = PASS
IG-P1-03 = PASS
IG-P1-04 = PASS
IG-P1-05 = PASS
IG-P1-06 = PASS
IG-P1-07 = PASS

Confirma también que IG-P1-07 fue ejecutada después de:

VALIDACION_INTERMEDIA_CORREGIDA_IG-P1-07 = PASS
IG-P1-07 = AUTHORIZED

La validación intermedia anterior que terminó BLOCKED debe considerarse
histórica y reemplazada por la validación corregida.

No la uses como estado vigente.

## Validación 2 — arquitectura resultante

Confirma que la arquitectura final sea:

README.md
instrucciones_base_investiga.md
diseno_metodologico_datos_reglas.md
revision_evidencia_fuentes_reglas.md
analisis_inferencia_resultados_reglas.md
reproducibilidad_trazabilidad_reglas.md
etica_integridad_impacto_reglas.md
checklist_investigacion.md

Estructura:

PLANA

Subdirectorios:

NINGUNO

SKILL.md:

NINGUNO

## Validación 3 — contrato de carga

Confirma coherencia entre README y base.

Patrón obligatorio:

README
+
instrucciones_base_investiga.md
+
un módulo principal según la tarea

Módulos secundarios:

solo por dependencia concreta

Checklist:

solo para cierre o revisión

Debe quedar explícito que:

NO se cargan todos los módulos por defecto.

Resultado:

CONTRATO_CARGA:
PASS | FAIL

## Validación 4 — base compacta

Comprueba que:

instrucciones_base_investiga.md

contiene al menos:

- Rol y alcance
- Principio de evidencia
- Contrato de carga
- Reglas transversales
- Método de respuesta
- Formato proporcional

Confirma que preserva:

- investigación transversal;
- independencia disciplinaria;
- cuantitativo;
- cualitativo;
- mixto;
- documental;
- experimental;
- observacional;
- evaluativo;
- aplicado;
- no invención;
- proporcionalidad;
- límites de causalidad;
- separación epistemológica;
- manejo de información faltante.

Resultado:

BASE:
PASS | FAIL

## Validación 5 — módulos

Confirma que cada módulo conserva su frontera principal:

### diseno_metodologico_datos_reglas.md
formulación, diseño, datos, muestreo, medición y validez.

### revision_evidencia_fuentes_reglas.md
búsqueda, selección, calidad, verificación y trazabilidad de evidencia.

### analisis_inferencia_resultados_reglas.md
métricas, comparación, incertidumbre, interpretación e inferencia.

### reproducibilidad_trazabilidad_reglas.md
artefactos, versiones, transformaciones, verificación y reproducción.

### etica_integridad_impacto_reglas.md
ética, privacidad, consentimiento, integridad científica e impacto.

Cada módulo debe tener:

USAR CUANDO
NO USAR CUANDO

No debe existir una skill por enfoque cuantitativo/cualitativo/mixto.

Resultado:

MODULOS:
PASS | FAIL

## Validación 6 — trazabilidad

Comprueba las 12 responsabilidades originales:

1. Rol y alcance transversal
2. Principio rector y calidad de evidencia
3. Definición mínima del estudio
4. Fuentes y trazabilidad
5. Calidad, cobertura y datos faltantes
6. Diseño metodológico
7. Métricas, comparaciones y resultados
8. Inferencia y conclusiones
9. Reproducibilidad y control de cambios
10. Ética, seguridad e impacto
11. Forma de trabajo
12. Formato de respuesta por defecto

Cada una debe tener destino funcional vigente.

Resultado:

TRAZABILIDAD:
PASS | FAIL

## Validación 7 — pérdida normativa

PERDIDA_NORMATIVA = SI

solo si una regla original:

- desapareció;
- perdió condición;
- cambió de significado;
- quedó sin destino;
- se volvió universal cuando era condicional.

La simple compactación o reformulación no constituye pérdida.

Resultado:

PERDIDA_NORMATIVA:
SI | NO

## Validación 8 — redundancia

Busca duplicación normativa evidente entre:

base
módulos
checklist

No marques como problema:

- referencias cruzadas;
- recordatorios breves;
- controles necesarios para autonomía.

Resultado:

REDUNDANCIA_NORMATIVA:
PASS | FAIL

## Validación 9 — cambios fuera de alcance

Confirma:

- README creado por IG-P1-01;
- cinco módulos creados;
- base modificada únicamente por IG-P1-07;
- checklist no modificado;
- no existen cambios inesperados adicionales bajo el dominio.

Resultado:

ALCANCE_CAMBIOS:
PASS | FAIL

## Criterio final

VALIDACION_FINAL = PASS

solo si:

EJECUCION_PLAN = PASS
ARQUITECTURA = PASS
CONTRATO_CARGA = PASS
BASE = PASS
MODULOS = PASS
TRAZABILIDAD = PASS
PERDIDA_NORMATIVA = NO
REDUNDANCIA_NORMATIVA = PASS
ALCANCE_CAMBIOS = PASS
AMBIGÜEDAD_SIGNIFICATIVA = NO

En caso contrario:

VALIDACION_FINAL = FAIL

No corrijas automáticamente.

## Reporte

Actualiza:

docs/execution_report_investigacion-general_20260910.md

añadiendo al FINAL del archivo:

## VALIDACION_FINAL

EJECUCION_PLAN:
PASS | FAIL

ARQUITECTURA:
PASS | FAIL

CONTRATO_CARGA:
PASS | FAIL

BASE:
PASS | FAIL

MODULOS:
PASS | FAIL

TRAZABILIDAD:
PASS | FAIL

PERDIDA_NORMATIVA:
SI | NO

REDUNDANCIA_NORMATIVA:
PASS | FAIL

ALCANCE_CAMBIOS:
PASS | FAIL

AMBIGÜEDAD_SIGNIFICATIVA:
SI | NO

VALIDACION_FINAL:
PASS | FAIL

INCIDENCIAS:

SIGUIENTE_ACCION:

No elimines del execution report las validaciones históricas anteriores.

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

VALIDACION_FINAL:
PASS | FAIL

EJECUCION_PLAN:
ARQUITECTURA:
CONTRATO_CARGA:
BASE:
MODULOS:
TRAZABILIDAD:
REDUNDANCIA_NORMATIVA:
ALCANCE_CAMBIOS:

PERDIDA_NORMATIVA:
AMBIGÜEDAD_SIGNIFICATIVA:

INCIDENCIAS:

SIGUIENTE_ACCION:
AUDITORIA_POST_REFACTOR