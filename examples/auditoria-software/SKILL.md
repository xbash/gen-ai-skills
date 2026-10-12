---
name: auditoria-software
description: "Audita código, scripts, consultas, configuración, pipelines y servicios con hallazgos priorizados y evidencia. Úsala para revisiones técnicas estructuradas; opera en solo lectura y enruta los criterios técnicos al dominio skills/ingenieria-software."
---

# Auditoría de software

## Propósito y límite

Evaluar artefactos de software para ayudar a decidir si corregir, validar más, aceptar con riesgos o detener una entrega. Esta skill produce un diagnóstico trazable. La auditoría es de solo lectura por defecto y no autoriza cambios, ejecución de correcciones ni acciones sobre servicios o datos. Una corrección requiere una solicitud y autorización explícitas; se ejecuta bajo el flujo de `ingenieria-software`.

## Fuentes técnicas y cobertura

Usa `skills/ingenieria-software/README.md` como router y `instrucciones_base_dev.md` como base cuando estén disponibles. Selecciona solo los criterios pertinentes y consulta `checklist_codigo_dev.md` como pauta transversal. Para una instalación global, busca el dominio rector disponible en el proyecto o contexto; si no está disponible, declara esa limitación y no supongas su contenido.

| Área de revisión | Fuente rectora a cargar |
|---|---|
| Alcance, cambios, calidad general y entrega | Base + checklist; agrega el módulo técnico afectado |
| Arquitectura y mantenibilidad | Diseño y arquitectura + pruebas y calidad |
| Backend, frontend o interfaces | Módulo del componente + seguridad cuando corresponda |
| Datos, SQL, persistencia y migraciones | Bases de datos SQL + seguridad cuando haya datos sensibles |
| Seguridad | Seguridad de código + módulo técnico afectado |
| Pruebas, evidencia y trazabilidad SDLC | Checklist + pruebas y calidad; etapa SDLC pertinente cuando corresponda |
| Notebooks, CLI, dashboards y contenedores de pipelines | Módulo especializado correspondiente + checklist |

No copies a esta skill el detalle de criterios técnicos de esas fuentes. Si una regla aplicable no aparece en la fuente disponible, identifícala como limitación o pregunta abierta en vez de inventarla.

## Flujo de auditoría

1. Delimita artefacto, versión o cambio revisado, objetivo conocido, entorno, restricciones y alcance de la auditoría. Declara lo que no se proporcionó.
2. Inspecciona evidencia disponible en modo de solo lectura. No ejecutes comandos que modifiquen archivos, datos, servicios, infraestructura o estado compartido.
3. Carga el README rector, la base, el checklist y solo los módulos pertinentes al artefacto.
4. Evalúa primero defectos funcionales, regresiones, pérdida o corrupción de datos, exposición de información, fallas de seguridad y riesgos operativos. Después informa problemas de mantenibilidad o mejoras opcionales respaldadas por evidencia.
5. Para cada hallazgo, separa evidencia observada de inferencia, indica ubicación verificable y explica el impacto posible sin presentarlo como confirmado si no lo está.
6. Registra incertidumbres y pruebas pendientes. No declares que una prueba pasó si no se ejecutó y observó su resultado.
7. Si no hay hallazgos, dilo expresamente e indica alcance revisado, validaciones no realizadas y riesgos residuales relevantes.
8. Termina con una recomendación de decisión. La recomendación no cambia archivos ni constituye autorización para corregir.

## Formato de salida

Presenta los hallazgos primero, ordenados por severidad y luego por impacto. Usa este formato por hallazgo:

```text
HALLAZGO-NN
Severidad: CRÍTICA | ALTA | MEDIA | BAJA
Estado: CONFIRMADO | RIESGO POTENCIAL | DUDA | NO_APLICA
Ubicación:
Criterio rector:
Evidencia observada:
Impacto:
Recomendación:
Validación pendiente:
```

Asigna severidad según impacto sustentado por la evidencia y el contexto disponible. Si no se puede determinar el impacto, conserva la incertidumbre; no inventes puntuaciones ni métricas.

Después de los hallazgos, informa:

1. **Alcance y fuentes revisadas:** archivos, componentes, criterios y exclusiones relevantes.
2. **Incertidumbres y supuestos:** solo los que afecten la conclusión.
3. **Pruebas faltantes:** comando o escenario recomendado y resultado esperado, marcado como pendiente/no ejecutado.
4. **Riesgos residuales:** áreas no cubiertas por la evidencia o validación disponible.
5. **Recomendación final:** corregir antes de avanzar, validar más, aceptar con riesgos o detener; explica brevemente la base de la decisión.

Si no se encontraron hallazgos, incluye: “No se encontraron hallazgos en el alcance revisado”; no lo extiendas a componentes o comportamientos que no se inspeccionaron.
