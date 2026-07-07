# Reglas específicas — Aprendizaje reforzado, optimización y algoritmos evolutivos

## Alcance

Aplicar cuando la tarea involucre reinforcement learning, control, simulación, toma de decisiones secuencial, optimización basada en población, algoritmos genéticos, estrategias evolutivas, búsqueda heurística o ajuste automático de políticas.

## Entorno y formulación

- Definir entorno, observaciones, acciones, recompensas, episodios, condiciones de término y restricciones.
- Registrar versión del entorno, wrappers, seeds, configuración de simulación y dependencias.
- Distinguir entrenamiento, evaluación, simulación offline, pruebas de generalización y operación real.
- No generalizar resultados desde una sola corrida; considerar alta varianza y sensibilidad a semillas.

## Recompensa y evaluación

- Documentar función de recompensa, penalizaciones, normalización y riesgos de reward hacking.
- Reportar retorno por episodio, estabilidad, tasa de éxito, longitud de episodio, fallos y métricas específicas del dominio.
- Evaluar con múltiples semillas cuando sea viable; reportar media, dispersión e intervalos.
- Separar métricas de optimización interna de métricas de utilidad real del sistema.

## Algoritmos evolutivos y búsqueda

- Definir población, representación, función de fitness, selección, cruza, mutación, elitismo, criterios de parada y restricciones.
- Evitar comparar métodos con presupuestos de evaluación distintos.
- Registrar número de evaluaciones, generaciones, seeds, mejores individuos, restricciones y costo computacional.
- Considerar reproducibilidad y persistencia de estados intermedios en ejecuciones largas.

## Implementación

- Separar entorno, agente o población, entrenamiento, evaluación, logging y persistencia.
- Incluir prueba de humo con pocos episodios, generaciones o evaluaciones antes de una ejecución larga.
- Controlar costos, loops infinitos, memoria, paralelismo, simuladores inestables y condiciones de parada.
