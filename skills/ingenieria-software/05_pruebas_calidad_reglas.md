# Reglas específicas — Pruebas, calidad y mantenibilidad

## Alcance

Aplicar cuando la tarea involucre pruebas unitarias, integración, contrato, regresión, end-to-end, smoke tests, revisión de calidad, cobertura, refactorización, mantenimiento o prevención de regresiones.

## Estrategia de pruebas

- Definir objetivo de prueba y riesgo que cubre.
- Proponer pruebas proporcionales al impacto del cambio.
- Separar casos felices, errores esperados, bordes, permisos, datos vacíos y fallas de dependencias.
- Incluir prueba de humo cuando se entregue un script, programa, endpoint, job o pantalla.
- Evitar pruebas frágiles dependientes de orden, tiempo, red, datos externos no controlados o detalles internos innecesarios.
- Usar fixtures, mocks, stubs, fakes o datos mínimos cuando corresponda.

## Tipos de prueba

- Unitarias: lógica aislada, funciones puras, validaciones y casos borde.
- Integración: base de datos, APIs internas, colas, filesystem, servicios externos controlados.
- Contrato: compatibilidad entre consumidor y proveedor de API o eventos.
- End-to-end: flujos críticos de usuario o negocio, sin cubrir todo con pruebas lentas.
- Regresión: comportamiento que no debe romperse tras corrección o refactor.
- Performance básica: consultas, endpoints o procesos con riesgo de degradación.

## Calidad y refactorización

- No buscar cobertura por cobertura; priorizar comportamiento crítico.
- Para refactorización, exigir equivalencia funcional y pruebas de regresión.
- Identificar deuda técnica, duplicación, acoplamiento, complejidad ciclomática, nombres confusos y responsabilidades mezcladas.
- Separar mejoras opcionales de cambios necesarios para resolver el problema.
- Evitar refactors amplios cuando el objetivo sea corregir un bug puntual.

## Validación mínima

- Comando de ejecución.
- Resultado esperado.
- Datos mínimos de prueba.
- Riesgos no cubiertos por las pruebas.
- Qué se verificó manualmente si no existe automatización.
