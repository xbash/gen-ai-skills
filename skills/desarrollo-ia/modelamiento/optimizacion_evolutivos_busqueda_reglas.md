# Reglas específicas — Optimización evolutiva y búsqueda heurística

## Usar cuando

La tarea involucra algoritmos genéticos, estrategias evolutivas, optimización basada en población, búsqueda heurística o ajuste automático de políticas. No usar para reinforcement learning, control secuencial ni optimización de serving.

## Formulación

- Define representación, función objetivo o fitness, restricciones, población, selección, cruza, mutación, elitismo y criterios de parada.
- Distingue simulación, optimización offline, evaluación de candidatos y uso operacional.
- Registra seeds, número de evaluaciones, generaciones, configuración, mejores individuos, restricciones y costo computacional.

## Comparación y reproducibilidad

- No compares métodos con presupuestos de evaluación, condiciones de inicio o criterios de parada incompatibles.
- Separa la métrica interna de optimización de la utilidad real del sistema.
- Considera sensibilidad a semillas, población, hiperparámetros, función objetivo y restricciones.

## Implementación

- Separa población, evaluación, operadores, logging y persistencia.
- Incluye una prueba de humo con pocas generaciones o evaluaciones antes de una ejecución larga.
- Controla costos, loops infinitos, memoria, paralelismo, simuladores inestables y persistencia de estados intermedios.
