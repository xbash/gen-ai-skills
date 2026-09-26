---
name: revisar-codigo-dev
description: "Revisa codigo, scripts, consultas, configuraciones, pipelines, servicios o aplicaciones con una pauta universal de ingenieria de software. Usar cuando el usuario pida una revision, checklist, auditoria tecnica, control de calidad o evaluacion estructurada de cambios y riesgos."
---

# Revisar codigo de desarrollo

## Objetivo

Aplicar una pauta universal de revision para evaluar codigo, scripts, consultas, configuraciones, pipelines, servicios o aplicaciones antes de entregar, corregir, fusionar, desplegar o dar por validado un cambio tecnico.

## Flujo

1. Identificar el artefacto a revisar y su contexto: lenguaje, version, framework, entorno, objetivo, entradas, salidas y restricciones.
2. Determinar el tipo de revision esperado: correccion funcional, riesgo tecnico, mantenibilidad, seguridad, datos, operacion, pruebas o calidad general.
3. Revisar primero hallazgos de mayor severidad o impacto: errores funcionales, regresiones, corrupcion de datos, problemas de seguridad, fallas operativas o ausencia de validaciones criticas.
4. Contrastar el cambio contra una pauta minima comun: alcance, cambios, calidad de codigo, datos/persistencia, seguridad y validacion.
5. Separar claramente hallazgos confirmados, dudas, supuestos, riesgos potenciales y pruebas faltantes.
6. Si no hay hallazgos, indicarlo explicitamente junto con riesgos residuales o cobertura de validacion incompleta.
7. Cerrar con una conclusion util para decidir: corregir ahora, aceptar con riesgos, validar mas o reestructurar el cambio.

## Reglas de escritura

- No inventar errores, vulnerabilidades, regresiones, resultados de pruebas ni impactos no observados.
- Priorizar hallazgos reales y verificables antes que recomendaciones cosmeticas.
- Distinguir hechos, supuestos, riesgos, limitaciones y pruebas faltantes.
- Si el usuario pide una revision, presentar primero los hallazgos y despues el resumen.
- Evitar discusiones teoricas extensas si no ayudan a decidir sobre el cambio revisado.
- No exponer secretos, tokens, credenciales, datos personales ni informacion sensible encontrada durante la revision.
- Si una conclusion depende de ejecutar pruebas o acceder a un entorno no disponible, declararlo de forma explicita.

## Checklist base

Revisar cuando aplique:

### Alcance

- objetivo tecnico claro;
- lenguaje, version, framework y entorno identificados;
- entradas, salidas y restricciones conocidas;
- supuestos explicitos;
- impacto del cambio acotado;
- requisitos funcionales y no funcionales relevantes considerados.

### Cambios

- no refactoriza sin necesidad o sin solicitud;
- mantiene la logica original cuando corresponde;
- cambios minimos para corregir errores;
- dependencias nuevas justificadas;
- cambios de arquitectura justificados;
- riesgos y limitaciones declarados.

### Calidad de codigo

- modularidad cuando aporta claridad o prueba;
- nombres claros y consistentes;
- separacion entre configuracion y logica;
- validacion de entradas, tipos, rutas, archivos, permisos, estados nulos y dependencias;
- manejo de errores y excepciones;
- logs o mensajes utiles sin ruido excesivo;
- ausencia de secretos o datos sensibles;
- legibilidad adecuada;
- comentarios minimos para decisiones no obvias.

### Datos y persistencia

- consultas parametrizadas cuando corresponda;
- migraciones con rollback o mitigacion cuando aplique;
- conteos antes/despues para cambios masivos;
- revision de indices, transacciones, bloqueos y rendimiento si corresponde;
- resguardo de datos personales o sensibles.

### Seguridad

- validacion server-side cuando aplica;
- autenticacion y autorizacion revisadas;
- secretos fuera de codigo, logs y artefactos;
- errores sin exposicion de detalles sensibles;
- dependencias o imagenes revisadas cuando se agregan o actualizan.

### Validacion

- instrucciones de ejecucion presentes;
- prueba de humo o caso minimo;
- resultado esperado definido;
- pruebas adicionales recomendadas segun riesgo;
- mejoras opcionales separadas de cambios necesarios;
- riesgos no cubiertos por pruebas documentados.

## Formato recomendado de respuesta

Cuando el usuario pida una revision, responder idealmente con este orden:

1. Hallazgos priorizados.
2. Preguntas abiertas o supuestos.
3. Riesgos residuales o pruebas faltantes.
4. Resumen breve del estado general.

## Respuesta final

Cerrar normalmente con:

- hallazgos principales o confirmacion de ausencia de hallazgos;
- severidad o impacto esperado;
- pruebas faltantes o validaciones recomendadas;
- decision sugerida: corregir, validar mas o aceptar.
