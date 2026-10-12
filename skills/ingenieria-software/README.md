# Dominio: Ingeniería de software

Dominio para diseñar, construir, corregir, revisar, probar, documentar, desplegar y mantener software con rigor académico-técnico y orientación práctica.

## Routing recomendado

| Tipo de tarea | Carga recomendada |
| --- | --- |
| Diseno de sistema o componentes | Base + diseno y arquitectura |
| Backend, API, worker o cola | Base + backend y APIs + seguridad si corresponde |
| Frontend o aplicacion web | Base + frontend web |
| SQL, ORM o persistencia | Base + bases de datos SQL |
| Migracion de esquema | Base + bases de datos SQL + DevOps |
| Bug o regresion | Base + skill afectada + pruebas y calidad |
| Refactorizacion | Base + diseno y arquitectura + pruebas y calidad |
| CI/CD, release o despliegue | Base + DevOps y CI/CD |
| Revision defensiva | Base + seguridad de codigo + skill tecnica afectada |
| Auditoría de contratos documentales y gobernanza | Base + `auditar-contratos-proyecto/SKILL.md`; consulta su matriz y plantilla solo al auditar |
| Entrega o revision final | Checklist, junto con las skills aplicables |
| Notebook reproducible (pipeline de datos) | Base + notebooks reproducibles |
| Script o CLI de pipeline de datos | Base + CLI pipeline |
| Dashboard de exploración o validación de datos | Base + dashboard de datos |
| Empaquetar pipeline en Docker | Base + contenedor pipeline |

Carga solo las skills tematicas necesarias. No es necesario cargar todo el dominio para una tarea acotada.

## Fronteras entre skills

- La base contiene invariantes de rigor, seguridad, validacion y mantenibilidad.
- Las skills tematicas contienen procedimientos y criterios propios de cada capa.
- `seguridad_codigo_reglas.md` revisa riesgos transversales; no reemplaza las reglas tecnicas de backend, frontend, datos o DevOps.
- `checklist_codigo_dev.md` verifica condiciones de entrega; no reemplaza la estrategia detallada de pruebas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_dev.md` | Instrucción personalizada base para ingeniería de software y desarrollo aplicado. |
| `diseno_arquitectura_reglas.md` | Diseño, arquitectura, patrones, modularidad, algoritmos, estructuras de datos y trade-offs. |
| `backend_api_reglas.md` | Backend, APIs, workers, colas, autenticación, autorización e integraciones. |
| `frontend_web_reglas.md` | Frontend web, componentes, formularios, estado, accesibilidad, responsive y rendimiento. |
| `bases_datos_sql_reglas.md` | Bases de datos, SQL, persistencia, migraciones, transacciones, índices y ORM. |
| `pruebas_calidad_reglas.md` | Pruebas, calidad, regresión, refactorización y mantenibilidad. |
| `devops_ci_cd_reglas.md` | CI/CD, contenedores, releases, artefactos, ambientes, despliegue y operación. |
| `seguridad_codigo_reglas.md` | Seguridad de aplicaciones, código defensivo, secretos, dependencias, errores y logs. |
| `checklist_codigo_dev.md` | Checklist transversal para revisar o entregar código, scripts, servicios y sistemas. |
| `notebooks_reproducibles_reglas.md` | Notebooks Jupyter/Quarto como artefactos ejecutables y reproducibles de un pipeline de datos. |
| `cli_pipeline_reglas.md` | Scripts y herramientas CLI para ejecutar pipelines de datos de forma parametrizable y trazable. |
| `dashboard_datos_reglas.md` | Dashboards interactivos (Streamlit, Dash, Panel) para explorar y validar datasets. |
| `contenedor_pipeline_reglas.md` | Empaquetado de pipelines de datos con Docker para reproducibilidad de entorno. |
| `auditar-contratos-proyecto/SKILL.md` | Auditoría documental contextual de solo lectura; separada de la auditoría técnica general. |

## Recomendación práctica

Para un proyecto en ChatGPT, Claude, Gemini, Qwen o GLM, usa `instrucciones_base_dev.md` como archivo principal y agrega los archivos específicos según la tarea.

## Ciclo de vida académico — versión integrada v0.2

Para iniciar una funcionalidad o decidir la etapa actual, usar `ciclo-vida/00_orquestador_sdlc.md`. Las skills de etapa no sustituyen las reglas técnicas de este directorio.

| Etapa | Skill de proceso | Reglas técnicas sugeridas |
|---|---|---|
| 1. Planificación | `ciclo-vida/01_planificacion.md` | Base; investigación y viabilidad |
| 2. Requisitos | `ciclo-vida/02_requisitos.md` | Base; datos y seguridad si aplican |
| 3. Diseño | `ciclo-vida/03_diseno.md` | Diseño y arquitectura; datos/CLI/notebooks según alcance |
| 4. Desarrollo | `ciclo-vida/04_desarrollo.md` | CLI/backend/frontend/SQL según componente |
| 5. Pruebas y validación | `ciclo-vida/05_pruebas_validacion.md` | Pruebas, checklist y reglas de investigación |
| 6. Despliegue | `ciclo-vida/06_despliegue.md` | DevOps, contenedor o notebooks |
| 7. Mantenimiento | `ciclo-vida/07_mantenimiento.md` | Pruebas, auditorías y reglas del componente |

**Puertas de control:** `APROBADO`, `CONDICIONADO`, `BLOQUEADO`. Por defecto el análisis es de solo lectura; cambios requieren autorización explícita. Mantener trazabilidad `OBJ → REQ → DIS → IMP → PRU → EVI`, con excepciones justificadas. No es obligatorio ejecutar siete fases de manera lineal: iterar cuando cambien los requisitos o aparezca nueva evidencia.
