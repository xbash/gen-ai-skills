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
| Entrega o revision final | Checklist, junto con las skills aplicables |

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

## Recomendación práctica

Para un proyecto en ChatGPT, Claude, Gemini, Qwen o GLM, usa `instrucciones_base_dev.md` como archivo principal y agrega los archivos específicos según la tarea.
