# Modelamiento geoespacial

## Propósito
Diseñar y evaluar modelos supervisados respetando la estructura espacial y temporal de los datos, con métricas adecuadas al problema y límites de generalización explícitos.

## USAR CUANDO
Existan variable objetivo, predictores y una decisión o predicción que evaluar con un modelo supervisado.

## NO USAR CUANDO
Solo se preparen datos, se consulte un catálogo o se derive un índice sin ajuste de modelo.

## Entradas
Variable objetivo; predictores y sus fuentes; unidad espacial y temporal de análisis; partición; métricas relevantes; criterio de uso del modelo; restricciones conocidas.

## Workflow

### 1. Definir objetivo y unidad de análisis
Especificar: qué se predice (variable continua o categórica), a qué nivel (celda, polígono, punto), en qué horizonte temporal y con qué alcance de generalización esperado. Sin esta definición, las decisiones de partición y evaluación no tienen base.

### 2. Establecer un baseline
Antes de ajustar cualquier modelo, definir un predictor basal: mayoría de clase, regla de negocio simple o modelo de una sola variable. El baseline establece el piso mínimo que cualquier modelo debe superar para justificar su complejidad.

### 3. Partición espacial y temporal
No usar partición aleatoria cuando los datos tienen estructura espacial o temporal: observaciones cercanas en el espacio o el tiempo son similares entre sí (autocorrelación), lo que infla artificialmente las métricas de evaluación.

- **Partición temporal**: usar períodos pasados para entrenamiento y períodos futuros para evaluación. Respetar el orden cronológico.
- **Partición espacial (block cross-validation)**: dividir el área de estudio en bloques espaciales y asignar bloques completos a entrenamiento o evaluación. Evitar que celdas contiguas queden en splits distintos.

Documentar la estrategia de partición y justificar por qué es apropiada para el caso.

### 4. Manejar desbalance de clases
En problemas de clasificación binaria con eventos raros (ej. ignición vs. no ignición), la clase positiva es minoritaria y los modelos tienden a predecir siempre la clase mayoritaria. Estrategias habituales:

- **Ajuste de pesos de clase**: asignar mayor peso a la clase minoritaria en la función de pérdida (`class_weight='balanced'` en scikit-learn). No modifica los datos; es el punto de partida más simple.
- **Resampling**: oversampling de la clase minoritaria (SMOTE) o undersampling de la mayoritaria. Aplicar solo sobre el conjunto de entrenamiento, nunca sobre el de evaluación.
- **Umbral de decisión**: ajustar el umbral de clasificación (por defecto 0.5) para mejorar recall de la clase positiva según el criterio de uso.

Documentar qué estrategia se usó y por qué.

### 5. Seleccionar métricas adecuadas
La exactitud global (accuracy) es engañosa con clases desbalanceadas: un modelo que predice siempre la clase mayoritaria puede tener >95% de accuracy. Usar métricas que evalúen el desempeño sobre la clase de interés:

- **Precision** (positivos predichos que son realmente positivos): relevante cuando el costo de falsas alarmas es alto.
- **Recall** (positivos reales capturados por el modelo): relevante cuando el costo de no detectar un evento es alto.
- **F1**: media armónica de precision y recall; útil cuando ambas importan.
- **Curva Precision-Recall y Average Precision (AP)**: resumen el desempeño a distintos umbrales; más informativo que ROC-AUC cuando la clase positiva es muy minoritaria.

Evitar reportar solo accuracy o AUC-ROC como métricas únicas en problemas con desbalance severo.

### 6. Seleccionar y comparar modelos
Para clasificación tabular con predictores geoespaciales y meteorológicos, las familias más pertinentes son: regresión logística (baseline interpretable), árbol de decisión, Random Forest, XGBoost o LightGBM. Justificar la elección según interpretabilidad, tamaño del dataset y características de los predictores. No seleccionar una familia por tendencia o complejidad; seleccionarla por pertinencia al problema.

### 7. Registrar configuración, resultados y límites
Documentar: versión del dataset, partición, hiperparámetros usados, métricas por split y en el conjunto de evaluación final, y limitaciones de generalización. Un resultado sobre una sola comuna piloto no es generalizable a otras comunas sin evidencia adicional.

## Salida
Modelo comparado con baseline, evaluación reproducible con métricas justificadas, configuración trazable y límites de generalización explícitos.

## Validaciones
- No usar partición aleatoria con datos espaciales o temporales.
- No reportar solo accuracy en problemas con desbalance de clases.
- No inventar hiperparámetros ni rankings de modelos.
- No generalizar resultados más allá del área y período de evaluación.
- Distinguir: el modelo valida el dataset, no constituye el aporte principal del análisis.

## Conocimiento incluido
Baseline, desbalance de clases (class_weight, SMOTE, umbral), métricas para clase minoritaria (precision, recall, F1, curva PR, AP), validación espacial (block cross-validation), validación temporal, Random Forest, XGBoost, LightGBM, regresión logística, scikit-learn.

## Checklist
- [ ] Variable objetivo, unidad de análisis y alcance de generalización definidos.
- [ ] Baseline establecido antes de ajustar modelos.
- [ ] Estrategia de partición espacial o temporal justificada y documentada.
- [ ] Desbalance de clases identificado y estrategia de manejo declarada.
- [ ] Métricas elegidas según el problema: precision, recall, F1 o curva PR para clase minoritaria.
- [ ] Modelo comparado con baseline en conjunto de evaluación.
- [ ] Configuración, métricas y límites de generalización registrados.
