# Plan de refactorización — investigacion-general

Fecha: 20260910  
Origen: `docs/auditoria_investigacion-general_terra_20260910.md`

## Secuencia y regla de seguridad

No se elimina ni compacta `instrucciones_base_investiga.md` hasta que las acciones IG-P1-01 a IG-P1-06 estén PASS y una validación confirme trazabilidad completa de su contenido hacia base, módulos o checklist. No se crea ningún contenido disciplinar específico, jurídico, estadístico exhaustivo ni de IA.

```yaml
- action_id: IG-P1-01
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: []
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
  source: Base y checklist actuales
  target: skills/investigacion-general/README.md
  objective: Crear un router de carga progresiva para la base, cinco módulos y checklist.
  instructions:
    - Crear inventario de todos los archivos existentes y de los cinco módulos de este plan.
    - Declarar carga normal: README + base + un módulo principal; agregar módulos secundarios solo ante dependencia concreta.
    - Declarar el checklist solo para cierre o revisión.
    - Incluir un mapa de activación para diseño/datos, evidencia/fuentes, análisis/inferencia, reproducibilidad y ética/integridad.
  must_preserve:
    - Alcance transversal y multimetodológico de la base actual.
    - El carácter auxiliar y condicional del checklist.
  must_remove: []
  acceptance_criteria:
    - Cada módulo tiene USAR CUANDO y NO USAR CUANDO en el router.
    - No se declara una carga obligatoria de todos los módulos.
    - No se presentan módulos de IA, software o disciplinas concretas como parte del dominio.
  rollback: Eliminar solo README.md si falla su validación y no existen dependencias ejecutadas.
  content_contract:
    required_sections: [Descripción, Archivos del dominio, Carga progresiva, Mapa de activación, Límites]
    concepts_to_preserve: [evidencia, inferencia proporcional, independencia disciplinaria, checklist de cierre]
    duplicated_content_to_remove: []
    forbidden_changes: [No modificar archivos existentes, no crear subdirectorios, no crear SKILL.md]

- action_id: IG-P1-02
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-01]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
  source: "Base actual: Definición mínima del estudio; Calidad, cobertura y datos faltantes; Diseño metodológico"
  target: skills/investigacion-general/diseno_metodologico_datos_reglas.md
  objective: Crear el módulo para formular y diseñar estudios, datos, muestreo, medición y calidad.
  instructions:
    - Incluir propósito, USAR CUANDO, NO USAR CUANDO, entradas mínimas, diseño condicionado por enfoque, datos/muestreo/medición, validez y salida recomendada.
    - Migrar sin pérdida preguntas, objetivos, unidad de análisis, población, alcance, variables/constructos, criterios de éxito, datos faltantes, sesgo de selección, diseño cuantitativo/cualitativo/mixto/documental/experimental/aplicado y amenazas a la validez.
    - Añadir solo reglas generales y condicionales sobre confiabilidad, validez de instrumentos, escalas e instrumentos de recolección.
  must_preserve: [No forzar hipótesis, causalidad ni taxonomía única; condiciones según diseño y evidencia.]
  must_remove: []
  acceptance_criteria:
    - El módulo distingue formulación/diseño de análisis de resultados.
    - Incluye criterios condicionales para cuantitativo, cualitativo, mixto, documental, experimental y aplicado.
    - No contiene técnicas estadísticas exhaustivas ni reglas disciplinares.
  rollback: Eliminar solo el archivo creado si su contenido no cumple contrato.
  content_contract:
    required_sections: [Propósito, Usar cuando, No usar cuando, Entradas mínimas, Diseño y datos, Medición y muestreo, Validez, Salida recomendada]
    concepts_to_preserve: [operacionalización, datos faltantes, sensibilidad, sesgos, cobertura]
    duplicated_content_to_remove: []
    forbidden_changes: [No incluir inferencia final, reproducibilidad de artefactos ni ética especializada salvo referencias condicionales.]

- action_id: IG-P1-03
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-01]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
  source: "Base actual: Fuentes y trazabilidad"
  target: skills/investigacion-general/revision_evidencia_fuentes_reglas.md
  objective: Crear el módulo para búsqueda, selección, verificación y trazabilidad de evidencia y fuentes.
  instructions:
    - Incluir propósito, USAR CUANDO, NO USAR CUANDO, estrategia de búsqueda, tipos de fuente, inclusión/exclusión, verificación, trazabilidad y salida recomendada.
    - Migrar las reglas sobre fuentes primarias, revisiones, vigencia, atribución exacta, fuentes secundarias, fechas, filtros y versiones.
  must_preserve: [No inventar fuentes, no atribuir resultados no reportados, verificabilidad de afirmaciones.]
  must_remove: []
  acceptance_criteria:
    - Sirve para revisión documental o de antecedentes sin exigir revisión sistemática completa.
    - Distingue fuentes revisadas, preprints, informes, opinión y divulgación cuando corresponda.
    - No duplica diseño experimental ni análisis de resultados.
  rollback: Eliminar solo el archivo creado si su contenido no cumple contrato.
  content_contract:
    required_sections: [Propósito, Usar cuando, No usar cuando, Estrategia, Selección y calidad, Trazabilidad, Salida recomendada]
    concepts_to_preserve: [fuentes primarias, vigencia, inclusión/exclusión, localización]
    duplicated_content_to_remove: []
    forbidden_changes: [No afirmar existencia de fuentes no verificadas, no imponer una metodología de revisión única.]

- action_id: IG-P1-04
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-01]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
  source: "Base actual: Métricas, comparaciones y resultados; Inferencia y conclusiones"
  target: skills/investigacion-general/analisis_inferencia_resultados_reglas.md
  objective: Crear el módulo para métricas, comparaciones, análisis, interpretación e inferencia proporcional.
  instructions:
    - Incluir propósito, USAR CUANDO, NO USAR CUANDO, métricas/comparaciones, incertidumbre y robustez, resultados cualitativos, inferencia, límites y salida recomendada.
    - Migrar reglas de métricas, denominadores, baselines, incertidumbre, comparaciones múltiples, sensibilidad, subgrupos, causalidad, generalización, resultados nulos y recomendaciones proporcionales.
  must_preserve: [No confundir asociación, predicción, causalidad, explicación ni recomendación; no imponer pruebas a todos los diseños.]
  must_remove: []
  acceptance_criteria:
    - Distingue interpretar resultados de diseñar el estudio.
    - Incluye reglas generales para evidencia cuantitativa y cualitativa.
    - No introduce un manual de estadística ni herramientas específicas.
  rollback: Eliminar solo el archivo creado si su contenido no cumple contrato.
  content_contract:
    required_sections: [Propósito, Usar cuando, No usar cuando, Métricas y comparación, Análisis e incertidumbre, Inferencia y límites, Salida recomendada]
    concepts_to_preserve: [baseline, leakage, relevancia práctica, alternativas, extrapolación]
    duplicated_content_to_remove: []
    forbidden_changes: [No presentar significancia como requisito universal, no convertir ausencia de evidencia en evidencia de ausencia.]

- action_id: IG-P1-05
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-01]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
  source: "Base actual: Reproducibilidad y control de cambios"
  target: skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md
  objective: Crear el módulo para trazabilidad, reproducibilidad proporcional y control de cambios de artefactos.
  instructions:
    - Incluir propósito, USAR CUANDO, NO USAR CUANDO, artefactos y versiones, cadena de trazabilidad, niveles de verificación, cambios y salida recomendada.
    - Migrar fuentes, versiones, transformaciones, código, dependencias, configuraciones, artefactos, resultados ejecutados/verificados y recalculo por cambios.
  must_preserve: [No exigir reproducibilidad computacional a toda disciplina; distinguir revisión estática, ejecución parcial y reproducción completa.]
  must_remove: []
  acceptance_criteria:
    - Se aplica condicionalmente según artefactos y método.
    - Distingue disponibilidad, ejecución y reproducción de resultados.
    - No incluye herramientas o plataformas concretas.
  rollback: Eliminar solo el archivo creado si su contenido no cumple contrato.
  content_contract:
    required_sections: [Propósito, Usar cuando, No usar cuando, Artefactos, Trazabilidad, Verificación, Cambios, Salida recomendada]
    concepts_to_preserve: [versiones, semillas cuando corresponda, transformaciones, resultados pendientes]
    duplicated_content_to_remove: []
    forbidden_changes: [No exigir código, contenedores o ejecución a investigación no computacional.]

- action_id: IG-P1-06
  priority: P1
  type: CREATE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-01]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
  source: "Base actual: Ética, seguridad e impacto"
  target: skills/investigacion-general/etica_integridad_impacto_reglas.md
  objective: Crear el módulo para ética, privacidad, integridad científica e impacto de la investigación.
  instructions:
    - Incluir propósito, USAR CUANDO, NO USAR CUANDO, actores/datos/riesgos, privacidad y consentimiento, integridad y atribución, impacto y límites, salida recomendada.
    - Migrar consentimiento, permisos, confidencialidad, minimización, sesgo, estigmatización, uso secundario, conflictos de interés, supervisión, apelación y evaluación de daño.
    - Añadir reglas mínimas de integridad científica y atribución responsable, condicionadas por el tipo de investigación.
  must_preserve: [No dar asesoría jurídica, no exponer datos sensibles, no tratar ética como requisito idéntico para todos los casos.]
  must_remove: []
  acceptance_criteria:
    - Activa solo ante personas, datos, riesgos, impacto o integridad relevante.
    - Distingue ética metodológica de requisitos legales o profesionales específicos.
    - No se expande hacia seguridad técnica especializada.
  rollback: Eliminar solo el archivo creado si su contenido no cumple contrato.
  content_contract:
    required_sections: [Propósito, Usar cuando, No usar cuando, Riesgos y actores, Privacidad y consentimiento, Integridad, Impacto y límites, Salida recomendada]
    concepts_to_preserve: [confidencialidad, minimización, conflicto de interés, supervisión]
    duplicated_content_to_remove: []
    forbidden_changes: [No incluir asesoría jurídica, reglas de un país o disciplina, ni procedimientos de seguridad ofensiva.]

- action_id: IG-P1-07
  priority: P1
  type: REWRITE
  execution_level: LUNA_MEDIUM
  status: READY
  depends_on: [IG-P1-02, IG-P1-03, IG-P1-04, IG-P1-05, IG-P1-06]
  files_to_load:
    - docs/auditoria_investigacion-general_terra_20260910.md
    - skills/investigacion-general/instrucciones_base_investiga.md
    - skills/investigacion-general/checklist_investigacion.md
    - skills/investigacion-general/README.md
    - skills/investigacion-general/diseno_metodologico_datos_reglas.md
    - skills/investigacion-general/revision_evidencia_fuentes_reglas.md
    - skills/investigacion-general/analisis_inferencia_resultados_reglas.md
    - skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md
    - skills/investigacion-general/etica_integridad_impacto_reglas.md
  source: skills/investigacion-general/instrucciones_base_investiga.md
  target: skills/investigacion-general/instrucciones_base_investiga.md
  objective: Convertir la base en un contrato transversal compacto y enrutable después de validar los módulos creados.
  instructions:
    - Conservar rol y alcance transversal, principio de evidencia, distinciones epistemológicas, límites de inferencia, regla de no invención, solicitud de faltantes, contrato de carga, forma de trabajo mínima y formato de respuesta proporcional.
    - Sustituir el detalle especializado migrado por referencias explícitas a los cinco módulos, sin perder ninguna regla normativa.
    - Añadir una lista breve de precedencia: base siempre; un módulo principal; secundarios por dependencia; checklist al cierre/revisión.
  must_preserve:
    - Toda regla actual debe quedar en la base, un módulo creado o el checklist con destino trazable.
    - Alcance cuantitativo, cualitativo, mixto, documental, experimental, observacional, evaluativo y aplicado.
    - Separación entre evidencia, inferencia, resultado, interpretación, recomendación y limitación.
  must_remove:
    - Detalle especializado ya migrado y validado, evitando duplicar formulaciones normativas.
  acceptance_criteria:
    - Una matriz de trazabilidad valida que cada sección original tenga destino.
    - La base no contiene reglas detalladas de datos, fuentes, análisis, reproducibilidad o ética que ya estén normativamente en módulos.
    - El README y la base tienen routing consistente.
    - El checklist permanece sin cambios.
  rollback: Restaurar la versión anterior de la base si falla cualquier criterio de trazabilidad o carga.
  content_contract:
    required_sections: [Rol y alcance, Principio de evidencia, Contrato de carga, Reglas transversales, Método de respuesta, Formato proporcional]
    concepts_to_preserve: [no invención, proporcionalidad, independencia disciplinaria, límites de causalidad, trazabilidad]
    duplicated_content_to_remove: [detalle específico migrado a los cinco módulos]
    forbidden_changes: [No eliminar reglas sin destino, no cambiar el checklist, no agregar contenido disciplinar específico.]
```

## Validación obligatoria antes de compactar la base

La ejecución debe incluir una acción de validación posterior, antes de cualquier eliminación: inventario esperado de ocho archivos, referencias Markdown, trazabilidad de las 12 secciones originales, contrato `base + principal + condicionales + checklist`, ausencia de `SKILL.md` y pruebas estáticas de no duplicación normativa. Una evaluación funcional con tareas cuantitativas, cualitativas, mixtas, documentales y aplicadas sigue siendo necesaria para afirmar mejora de calidad o costo de contexto.
