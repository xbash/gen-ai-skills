# Matriz de propiedad de reglas

La instruccion base es el contrato transversal. Cada regla especializada tiene un archivo dueño; los demás archivos pueden referenciarla, pero no redefinirla salvo una adaptación explícita al caso.

| Regla | Archivo dueño | Archivos que la referencian o aplican | Criterio de propiedad |
|---|---|---|---|
| Rol, alcance académico y límite frente a desarrollo productivo | `instrucciones_base_ia_investiga.md` | `README.md` | Define cuándo entra el dominio |
| No inventar evidencia, fuentes, métricas o resultados | `instrucciones_base_ia_investiga.md` | Todos los módulos; `checklist_investigacion_ia.md` | Regla transversal, no duplicar texto |
| Separar hecho, supuesto, evidencia, interpretación y recomendación | `instrucciones_base_ia_investiga.md` | `redaccion_academica_comunicacion_reglas.md`, checklist | Convención de salida transversal |
| Selección progresiva de módulos | `instrucciones_base_ia_investiga.md` | `README.md` | Contrato de carga |
| Delimitación, búsqueda y selección bibliográfica | `revision_estado_arte_reglas.md` | `vigilancia_tendencias_agenda_reglas.md` | Propio de síntesis de literatura |
| Análisis de un paper o reporte concreto | `lectura_critica_papers_reglas.md` | `evaluacion_benchmarks_metricas_reglas.md`, reproducibilidad, ética | El paper es la unidad de análisis |
| Pregunta, hipótesis, variables y protocolo | `diseno_metodologico_experimentos_ia_reglas.md` | checklist | Propio del diseño previo a ejecutar |
| Interpretación de métricas, benchmarks y rankings | `evaluacion_benchmarks_metricas_reglas.md` | `lectura_critica_papers_reglas.md`, checklist | Propio de resultados comparables |
| Reproducibilidad, replicabilidad y artefactos | `reproducibilidad_open_science_reglas.md` | diseño, evaluación, lectura, checklist | Propio de evidencia auditable |
| Privacidad, sesgos, seguridad, uso dual y gobernanza | `etica_seguridad_gobernanza_investigacion_reglas.md` | diseño, evaluación, lectura, checklist | Cargar solo cuando el riesgo lo justifique |
| Estructura y comunicación del argumento académico | `redaccion_academica_comunicacion_reglas.md` | Todos los módulos cuando exista entregable | Regla de presentación, no de método |
| Tendencias, madurez y agenda futura | `vigilancia_tendencias_agenda_reglas.md` | `revision_estado_arte_reglas.md` | Propio del seguimiento temporal |
| Verificación final de cobertura y límites | `checklist_investigacion_ia.md` | Todos los módulos | Control de cierre, no fuente normativa primaria |

## Regla de mantenimiento

Si una regla aparece en dos archivos, el archivo secundario debe convertirla en referencia o criterio específico. No se deben mantener dos formulaciones normativas distintas para el mismo requisito.
