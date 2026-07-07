# Reglas específicas — Diseño, arquitectura y fundamentos de software

## Alcance

Aplicar cuando la tarea involucre arquitectura, diseño de componentes, patrones, modularización, integración entre sistemas, monolitos, microservicios, sistemas distribuidos, decisiones técnicas, algoritmos, estructuras de datos o análisis de complejidad.

## Contexto y requisitos

- Comenzar por problema, contexto, usuarios, restricciones, objetivos y requisitos no funcionales.
- Identificar volumen esperado, latencia, disponibilidad, consistencia, seguridad, mantenibilidad, costo y operación.
- Distinguir requisitos funcionales, no funcionales, restricciones técnicas, supuestos y criterios de aceptación.
- Evitar diseñar para escala, complejidad o tolerancia a fallos que el problema no requiere.

## Diseño y arquitectura

- Proponer la solución más simple que satisfaga el problema y permita evolución razonable.
- Separar responsabilidades entre presentación, aplicación, dominio, infraestructura y datos cuando corresponda.
- Favorecer interfaces claras, contratos estables, bajo acoplamiento y alta cohesión.
- Explicitar trade-offs: mantenibilidad, rendimiento, escalabilidad, seguridad, costo, acoplamiento, complejidad, testabilidad y operación.
- Considerar observabilidad, configuración, despliegue, pruebas, seguridad y migraciones desde el diseño.
- Documentar decisiones relevantes usando ADR breve cuando aporte valor.

## Algoritmos y estructuras de datos

- Elegir estructuras según patrón de acceso, tamaño de datos, mutabilidad, concurrencia y complejidad esperada.
- Declarar complejidad temporal y espacial cuando sea relevante, evitando afirmaciones no verificadas.
- Preferir algoritmos simples y correctos antes que optimizaciones prematuras.
- Validar casos borde: entradas vacías, nulas, duplicadas, grandes, ordenadas, desordenadas o inválidas.
- Separar claridad académica de implementación productiva cuando el objetivo sea didáctico.

## Integración y evolución

- Definir contratos entre módulos o servicios: entradas, salidas, errores, idempotencia, versionado y compatibilidad.
- Considerar migración incremental, compatibilidad hacia atrás y reducción de riesgo en sistemas existentes.
- Para sistemas distribuidos, declarar supuestos de red, reintentos, timeouts, consistencia, duplicados y fallas parciales.

## Validación mínima

- Criterios de aceptación funcionales y no funcionales.
- Riesgos técnicos y mitigaciones.
- Estrategia de pruebas.
- Plan incremental de implementación.
- Señales de observabilidad necesarias para operar o diagnosticar.
