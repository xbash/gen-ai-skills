Aplica estrictamente:

prompts/audita_skills_dominios_v2_arq.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
academia

Ruta:
skills/academia/

Fecha:
20260910

Tipo de ejecución:
AUDITORÍA DE DOMINIO FUNCIONAL

## Contexto de continuidad

Lee primero:

docs/estado_academia_20260910.md

y:

docs/precheck_academia_20260910.md

Usa estos archivos únicamente para conocer:
- resultado del PRECHECK;
- estado actual;
- fase del workflow;
- artefactos existentes;
- siguiente acción.

La evidencia principal de la auditoría debe ser el contenido REAL y ACTUAL de:

skills/academia/

No asumas que la estructura existente es correcta simplemente porque los
archivos contienen instrucciones operativas.

## Estado conocido por PRECHECK

El dominio fue clasificado como:

FUNCTIONAL

Actualmente existen como componentes operativos:

- instrucciones_base_academia.md
- analisis_tecnico_conceptual.md
- analisis_notebook_ciberseguridad.md
- analisis_notebook_datos_estadistica.md
- analisis_notebook_ia.md
- analisis_notebook_matematicas.md
- analisis_notebook_programacion.md

Y como auxiliares:

- checklist_revision_notebook.md
- README.md

No existen placeholders vacíos.

## Objetivo

Audita el dominio academia para determinar si su arquitectura actual maximiza:

calidad operativa / costo de contexto

Evalúa específicamente:

- utilidad real;
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
- cobertura funcional;
- facilidad de carga selectiva.

No optimices solamente por cantidad de archivos.

Una reducción de archivos o tokens que disminuya precisión,
cobertura académica, reproducibilidad o capacidad de revisión
debe considerarse una regresión.

## Hipótesis que debes evaluar, NO asumir

Presta especial atención a la relación entre:

analisis_notebook_ciberseguridad.md
analisis_notebook_datos_estadistica.md
analisis_notebook_ia.md
analisis_notebook_matematicas.md
analisis_notebook_programacion.md

Evalúa si realmente representan:

A. cinco capacidades suficientemente diferentes;

B. una capacidad general de revisión de notebooks
   con especializaciones por dominio;

C. una combinación híbrida:
   reglas comunes centralizadas
   + módulos especializados pequeños;

D. otra arquitectura mejor sustentada por el contenido.

NO fusiones estos archivos únicamente porque todos analicen notebooks.

Debes demostrar primero qué porcentaje conceptual de sus reglas es:
- común;
- especializado;
- necesario;
- redundante.

No inventes porcentajes numéricos si no puedes medirlos de forma fiable;
usa valoración cualitativa cuando corresponda.

## Frontera 1 — instrucciones base vs análisis

Evalúa especialmente:

instrucciones_base_academia.md
↔ analisis_tecnico_conceptual.md
↔ analisis_notebook_*.md

Determina:

- qué reglas son verdaderamente transversales;
- qué reglas pertenecen al análisis técnico/conceptual;
- qué reglas corresponden específicamente a notebooks;
- si existe duplicación entre capas;
- si una regla base está siendo repetida innecesariamente en archivos especializados.

No centralices una regla si hacerlo obliga a cargar contexto adicional
que perjudique la autonomía de una skill.

## Frontera 2 — checklist

Evalúa:

checklist_revision_notebook.md

Determina si:

- debe seguir como archivo auxiliar independiente;
- duplica reglas de los análisis de notebooks;
- debería ser invocado transversalmente;
- debería incorporarse parcialmente en otra unidad;
- agrega valor suficiente para justificar contexto separado.

No elimines un checklist solo porque sus puntos también aparezcan
en instrucciones operativas; distingue validación final de procedimiento.

## Frontera 3 — analisis_tecnico_conceptual.md

Este archivo es significativamente mayor que los demás.

Evalúa si:

- su extensión está justificada;
- contiene varias responsabilidades distintas;
- contiene conocimiento general que un LLM competente ya posee;
- contiene criterios académicos especializados que sí deben persistir;
- debería mantenerse intacto;
- resumirse;
- dividirse;
- convertirse parcialmente en reglas base;
- actuar como capacidad principal del dominio.

No lo dividas únicamente por longitud.

## Activación selectiva

Evalúa si la mayoría de las tareas podría resolverse razonablemente mediante:

README + una unidad operativa primaria

y, cuando corresponda:

+ checklist o dependencia concreta

Busca evitar escenarios donde una revisión de notebook obligue a cargar
innecesariamente todas las variantes de notebook.

Para cada componente define claramente:

USAR CUANDO:
NO USAR CUANDO:

## Especialización por dominio

Para cada uno de los cinco archivos analisis_notebook_* determina qué
conocimiento o criterio aporta que NO debería quedar implícito en un
análisis genérico.

Ejemplos de dimensiones a comprobar, sin asumir que deban existir:

- programación:
  ejecución, legibilidad, modularidad, errores, reproducibilidad;

- matemáticas:
  notación, derivación, supuestos, consistencia formal;

- datos/estadística:
  particiones, inferencia, supuestos estadísticos, leakage, métricas;

- IA:
  diseño experimental, modelos, evaluación, sesgos, reproducibilidad;

- ciberseguridad:
  entorno seguro, secretos, credenciales, exposición de datos,
  operaciones potencialmente riesgosas.

Estos ejemplos son hipótesis de inspección.
Solo conserva diferencias sustentadas por el contenido real.

## Arquitectura

Determina si la estructura plana actual:

skills/academia/*.md

sigue siendo adecuada o si existe evidencia suficiente para una estructura
por capacidades, por ejemplo con SKILL.md.

NO migres automáticamente al patrón de directorios/SKILL.md solamente porque
otros dominios lo utilicen.

Evalúa primero:

- costo;
- claridad;
- compatibilidad;
- mantenibilidad;
- carga selectiva;
- consistencia con el framework.

## Evaluación cuantitativa

Aplica todas las métricas definidas en:

prompts/audita_skills_dominios_v2_arq.md

Incluye al menos:

- Utilidad
- Especificidad
- Claridad
- Aplicabilidad
- Densidad
- Reutilización
- Mantenibilidad
- Redundancia

No uses una media matemática como sustituto del juicio arquitectónico.

## Gate de escalamiento

Trabaja con razonamiento MEDIUM.

Marca:

REVISIÓN_TERRA_ALTA

solo si una decisión implica:

- eliminar conocimiento académico especializado;
- fusionar tres o más unidades con responsabilidades distintas;
- pérdida potencial de criterios metodológicos;
- evidencia contradictoria;
- impacto alto + confianza baja.

No repitas toda la auditoría con High.

## Resultado esperado

Entrega como mínimo:

1. Resumen ejecutivo.
2. Inventario funcional.
3. Evaluación detallada.
4. Mapa de responsabilidades.
5. Redundancias detectadas.
6. Análisis de los cinco analisis_notebook_*.
7. Fronteras entre base / análisis / checklist.
8. Matriz de relaciones.
9. Evaluación de carga selectiva.
10. Arquitectura actual versus arquitectura recomendada.
11. Hallazgos P0/P1/P2/P3.
12. Decisiones REVISIÓN_TERRA_ALTA.
13. Recomendación final.

## Plan para Luna

Genera un plan solamente si existen modificaciones justificadas.

Si se requieren cambios, guarda:

docs/plan_refactor_academia_luna_20260910.md

El plan debe seguir estrictamente el contrato de:

prompts/audita_skills_dominios_v2_arq.md

Cada acción debe incluir:

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

Para CREATE, EDIT, REWRITE o MERGE:

content_contract

Si el cambio es textual y exacto, proporciona:

replacement_content

Clasifica cada acción como:

LUNA_LOW
LUNA_MEDIUM
TERRA_REQUIRED

No delegues decisiones arquitectónicas a Luna.

## Archivos de salida

Guarda la auditoría completa en:

docs/auditoria_academia_terra_20260910.md

Si existe refactorización justificada:

docs/plan_refactor_academia_luna_20260910.md

Actualiza:

docs/estado_academia_20260910.md

con:

- fase ejecutada;
- estado general;
- P0;
- P1;
- P2;
- P3;
- ambigüedad significativa;
- decisiones REVISIÓN_TERRA_ALTA;
- acciones READY;
- acciones BLOCKED;
- arquitectura mantenida o propuesta;
- siguiente modelo;
- siguiente esfuerzo;
- siguiente prompt;
- siguiente acción.

## Criterio de parada

Si obtienes:

P0 = 0
P1 = 0
ambigüedad significativa = NO

y no existen cambios realmente justificados:

PLAN_EJECUCION_LUNA: NO REQUERIDO

Marca el dominio como candidato:

STABLE

No inventes tareas de optimización marginal.

Los hallazgos P2/P3 pueden quedar documentados como backlog.

## Restricciones

NO modifiques ningún archivo dentro de:

skills/academia/

No refactorices.
No crees archivos operativos.
No elimines archivos.
No renombres archivos.
No muevas archivos.

Esta fase es exclusivamente:

ANALIZAR
COMPARAR
DECIDIR
PLANIFICAR

## Respuesta en chat

No reproduzcas el informe completo.

Responde exclusivamente:

DOMINIO: academia

ESTADO:
APROBADO | APROBADO_CON_MEJORAS | REQUIERE_REFACTOR

COMPONENTES_OPERATIVOS_AUDITADOS:

ARQUITECTURA:
MANTENER | REORGANIZAR | REFACTORIZAR

P0:
P1:
P2:
P3:

REDUNDANCIA_NOTEBOOKS:
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
docs/auditoria_academia_terra_20260910.md

PLAN:
docs/plan_refactor_academia_luna_20260910.md
o NO_REQUERIDO