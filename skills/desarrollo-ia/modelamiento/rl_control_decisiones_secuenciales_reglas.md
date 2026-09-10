# Reglas específicas — RL, control y decisiones secuenciales

## Usar cuando

La tarea involucra reinforcement learning, control, simulación o decisiones secuenciales con estados, acciones y recompensas. No usar para búsqueda evolutiva general ni para optimización de latencia o serving.

## Entorno y formulación

- Define entorno, observaciones, acciones, recompensas, episodios, condiciones de término y restricciones.
- Registra versión del entorno, wrappers, seeds, configuración de simulación y dependencias.
- Distingue entrenamiento, evaluación, simulación offline, generalización y operación real.
- No generalices desde una sola corrida; considera la varianza entre semillas y configuraciones.

## Recompensa y evaluación

- Documenta recompensa, penalizaciones, normalización y riesgos de reward hacking.
- Reporta retorno, estabilidad, tasa de éxito, longitud de episodio, fallos y métricas de utilidad real.
- Evalúa con múltiples semillas cuando sea viable y reporta dispersión o intervalos.
- Separa métricas internas de optimización de métricas de utilidad del sistema.

## Implementación

- Separa entorno, agente, entrenamiento, evaluación, logging y persistencia.
- Incluye una prueba de humo con pocos episodios antes de ejecutar experimentos largos.
- Controla costos, loops infinitos, memoria, paralelismo, simuladores inestables y condiciones de parada.
