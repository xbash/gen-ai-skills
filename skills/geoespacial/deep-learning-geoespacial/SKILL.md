# Deep learning geoespacial

## Propósito
Diseñar experimentos de redes neuronales geoespaciales con baseline, evaluación y trazabilidad.

## USAR CUANDO
Existen datos, etiquetas, recursos y un baseline que justifican evaluar una red neuronal.

## NO USAR CUANDO
Un baseline simple es suficiente, faltan datos o particiones, o no se han declarado recursos y criterio de éxito.

## Entradas
Tarea; datos y etiquetas; unidad espacial/temporal; partición; baseline; métricas; recursos disponibles; criterio de parada; restricciones de reproducibilidad.

## Workflow
1. Comprobar que la tarea y los datos justifican el enfoque frente al baseline.
2. Definir partición espacial/temporal y prevenir fuga.
3. Seleccionar y documentar la familia de red solo según la tarea y recursos.
4. Entrenar y evaluar con métricas acordadas, criterios de parada y registro de configuración.
5. Comparar con baseline y reportar límites, incertidumbre y reproducibilidad.

## Salida
Experimento neuronal comparable con baseline, evaluación, configuración y límites documentados.

## Validaciones
No inventar arquitecturas, hiperparámetros, benchmarks, costos ni tiempos; no prometer rendimiento; exigir partición pertinente y trazabilidad.

## Conocimiento incluido
Redes neuronales como algoritmo especializado dentro de un workflow geoespacial.

## Checklist
- [ ] Pertinencia, datos, etiquetas y baseline comprobados.
- [ ] Partición y fuga espacial/temporal revisadas.
- [ ] Métricas, recursos y parada declarados.
- [ ] Configuración, resultados y límites registrados.

## Restricción de alcance
Esta skill no crea ni incorpora una skill SAR/radar.
