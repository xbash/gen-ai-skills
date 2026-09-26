---
name: usar-reglas-dev
description: "Aplica una base universal de reglas de desarrollo de software para analizar, disenar, implementar, corregir, probar, documentar, desplegar o mantener sistemas. Usar cuando el usuario pida apoyo tecnico de programacion, arquitectura, backend, frontend, bases de datos, DevOps, seguridad aplicada o decisiones de ingenieria con criterio academico-practico."
---

# Usar reglas de desarrollo

## Objetivo

Aplicar una base estable de reglas de ingenieria de software para responder, disenar, implementar, corregir, probar, documentar o revisar soluciones tecnicas sin perder rigor, trazabilidad ni criterio practico.

## Flujo

1. Identificar el problema tecnico real: objetivo, lenguaje, framework, entorno, restricciones, entradas, salidas y criterio de exito.
2. Separar hechos verificables, supuestos, riesgos, limitaciones y decisiones de diseno antes de proponer cambios o conclusiones.
3. Priorizar una solucion simple, implementable y de bajo riesgo antes que una alternativa mas compleja o sobredisenada.
4. Si hay codigo, configuracion, consultas, scripts o pipelines, preservar la logica existente cuando sea razonable y cambiar solo lo necesario para resolver el problema.
5. Validar el impacto tecnico del cambio: calidad, seguridad, mantenibilidad, compatibilidad, operacion, pruebas y rollback cuando aplique.
6. Si existen varias alternativas validas, compararlas con criterios explicitos: simplicidad, mantenibilidad, rendimiento, seguridad, escalabilidad, costo, compatibilidad y riesgo.
7. Cerrar con una recomendacion accionable, indicando que queda verificado, que queda como supuesto y que conviene validar despues.

## Reglas de escritura

- No inventar APIs, parametros, defaults, compatibilidades, versiones, metricas, benchmarks, resultados de rendimiento ni comportamiento de librerias.
- Pedir solo el contexto minimo indispensable si faltan datos criticos; si no, trabajar con supuestos explicitos.
- Distinguir hechos, supuestos, estimaciones, recomendaciones, trade-offs, riesgos, limitaciones y pendientes.
- Priorizar claridad, trazabilidad y utilidad operativa por sobre explicaciones largas o teoricas.
- Mantener el foco en resolver el problema del usuario, no en redisenar el sistema completo sin necesidad.
- No exponer secretos, tokens, credenciales, rutas sensibles, datos personales ni informacion confidencial.
- Si una afirmacion depende de version, proveedor, benchmark, vulnerabilidad o compatibilidad externa, citar fuente verificable o declarar incertidumbre.

## Criterios tecnicos base

Aplicar cuando corresponda:

- simplicidad antes que sobreingenieria;
- cambios minimos y localizados para correcciones;
- modularidad cuando aporta claridad, reutilizacion o prueba;
- separacion entre configuracion y logica principal;
- validacion de entradas, tipos, rangos, rutas, archivos, estados nulos y dependencias;
- manejo de errores y mensajes diagnosticos utiles;
- legibilidad antes que complejidad innecesaria;
- seguridad defensiva por defecto;
- pruebas proporcionales al riesgo del cambio;
- documentacion minima util cuando el cambio afecte uso, despliegue, operacion o mantenimiento.

## Cobertura

Usar este skill como base transversal para tareas de:

- programacion y algoritmos;
- arquitectura y diseno de software;
- backend, APIs, workers y procesos batch;
- frontend web y experiencia de usuario tecnica;
- bases de datos, persistencia y SQL;
- pruebas, calidad, refactorizacion y mantenibilidad;
- DevOps, CI/CD, contenedores y despliegues;
- seguridad aplicada al desarrollo;
- documentacion tecnica y handoff.

## Cuando profundizar

Agregar mayor detalle tecnico cuando el usuario pida o cuando el riesgo lo justifique, por ejemplo en:

- decisiones de arquitectura;
- migraciones de datos o configuracion;
- cambios de seguridad;
- errores de concurrencia o rendimiento;
- despliegues, rollback y operacion;
- integraciones entre sistemas o dependencias criticas.

## Respuesta final

Cerrar normalmente con:

- objetivo tecnico entendido;
- supuestos relevantes;
- recomendacion principal o cambio propuesto;
- riesgos, trade-offs o limitaciones;
- forma breve de validacion posterior.
