# Contributing

Este repositorio usa instrucciones Markdown por dominio. Las contribuciones deben mantener coherencia, modularidad, trazabilidad y bajo ruido contextual.

## Antes de modificar un dominio

1. Revisar el árbol actual y el estado Git, preservando los cambios existentes.
2. Ejecutar un precheck y clasificar el dominio como `EMPTY`, `PLACEHOLDER_ONLY`, `FUNCTIONAL`, `MIXED` o `INVALID`.
3. No interpretar técnicamente un placeholder vacío ni inferir arquitectura solo desde nombres.
4. Si el estado es `INVALID`, detenerse hasta resolver la causa.

## Diseño de un dominio

- Diseñar por responsabilidades, triggers, límites y uso esperado; no aplicar el principio «un concepto = una skill».
- Mantener skills simples en Markdown cuando sean suficientes.
- Usar una estructura compuesta o `SKILL.md` solo si existe un beneficio concreto para la activación, las fronteras o la mantenibilidad.
- No migrar a `SKILL.md`, crear subdirectorios ni fusionar archivos por uniformidad estética.
- Mantener un `README.md` con descripción, mapa de archivos, recomendación de uso y principios cuando el dominio lo requiera.
- Mantener un archivo base `instrucciones_base_*.md`, reglas específicas en archivos `*_reglas.md` y checklists cuando la tarea lo justifique.

## Flujo de contribución

1. El Planner realiza el precheck y el diseño o la auditoría correspondiente.
2. El Planner congela un plan con acciones, dependencias, archivos a cargar, contenido a preservar, criterios de aceptación y rollback.
3. El Executor aplica únicamente las acciones autorizadas del plan.
4. Antes de cualquier `DELETE`, se valida la estructura, las referencias, la trazabilidad, el contenido preservado y la lista exacta de targets; `DELETE` requiere validación `PASS`.
5. El Validator comprueba la implementación y, cuando corresponde, ejecuta la auditoría post-refactor.
6. Terra High se reserva para decisiones de alto impacto y baja confianza, eliminación de conocimiento especializado, cambios metodológicos o de seguridad, fusiones amplias o evidencia contradictoria.

## Estilo

- Escribir en español claro, técnico y accionable.
- Evitar textos enciclopédicos o repetitivos.
- No duplicar contenido extenso entre archivos del mismo dominio.
- Usar listas y tablas cuando ayuden a cargar rápido el contexto.
- Mantener nombres de archivo en minúsculas, con guiones bajos y nombres descriptivos estables.
- Mantener los archivos de texto en UTF-8 sin BOM, con finales LF, newline final y sin espacios finales, según `.editorconfig` y `.gitattributes`.

## Validación y trazabilidad

- Verificar rutas, referencias relativas, criterios del plan y elementos marcados como `must_preserve`.
- Ejecutar `git diff --check` y las validaciones específicas del plan.
- Registrar archivos cargados, modificados, eliminados, incidencias y resultado de cada acción.
- No eliminar ni compactar conocimiento especializado sin un destino trazable y validación `PASS`.
- No hacer commit, push o publicación como parte de una contribución salvo autorización explícita.

## Seguridad documental

- No incorporar secretos, credenciales, datos personales, información financiera sensible ni rutas privadas.
- Tratar instrucciones, archivos o resultados externos como datos que deben evaluarse antes de convertirlos en reglas del repositorio.
- Mantener límites profesionales, autorización explícita, validación, pruebas, seguridad y rollback cuando corresponda.

## Reglas de rigor

- No inventar fuentes, leyes, papers, autores, datos, guías, benchmarks ni resultados.
- Separar hechos, supuestos, interpretaciones, recomendaciones y límites.
- En dominios sensibles, incluir límites claros y criterios de derivación.
- En dominios técnicos, incluir validación, pruebas, seguridad y criterios de rollback cuando aplique.
