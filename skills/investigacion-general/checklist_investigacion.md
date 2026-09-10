# Checklist - Cumplimiento de investigacion

## Proposito
Usa este checklist para revisar si un archivo, script, notebook, base de datos, informe, articulo, presentacion u otro artefacto de investigacion cumple con `instrucciones_base_investiga.md`.

La revision debe producir un diagnostico basado en evidencia, no una impresion general. Por defecto es de solo lectura: identifica cumplimiento, brechas y acciones recomendadas, pero no modifica el artefacto salvo solicitud explicita.

## Alcance y criterio de evaluacion
Antes de aplicar el checklist:

- Identifica el artefacto principal y los archivos de apoyo necesarios para entenderlo.
- Declara el alcance: revision estatica, revision de salidas guardadas, ejecucion parcial o reproduccion completa.
- Registra la version, fecha o hash del artefacto cuando sea posible.
- Lee la instruccion base completa antes de evaluar.
- Aplica solo los criterios pertinentes al tipo y etapa del trabajo. Marca `No aplica` con justificacion; no lo cuentes como incumplimiento.
- Si falta un insumo necesario, marca `No verificable` y explica que evidencia permitiria resolverlo.

No concluyas que un criterio se cumple solo porque el artefacto no muestra un error evidente. Tampoco concluyas que no cumple cuando la evidencia puede estar en un archivo relacionado que no fue proporcionado.

## Estados permitidos
Asigna uno de estos estados a cada criterio evaluado:

- `Cumple`: existe evidencia suficiente, localizable y coherente.
- `Cumple parcialmente`: existe evidencia, pero falta cobertura, justificacion o consistencia relevante.
- `No cumple`: hay evidencia de ausencia, contradiccion o practica metodologica incorrecta.
- `No verificable`: no hay evidencia suficiente o no fue posible ejecutar/consultar lo necesario.
- `No aplica`: el criterio no corresponde al artefacto o al diseno, con motivo explicito.

Cada estado debe incluir una ubicacion verificable: ruta y linea, celda, seccion, pagina, diapositiva, tabla, figura, consulta o salida de ejecucion. Si no existe un localizador preciso, describe de donde se obtuvo la evidencia y reduce el nivel de certeza.

## Reglas de evidencia
- No inventes contenido ausente, resultados esperados, ejecuciones, metricas, fuentes ni intenciones del autor.
- Distingue entre lo declarado, lo implementado, lo ejecutado y lo reproducido.
- Codigo que compila o se analiza estaticamente no demuestra que el experimento completo funcione.
- Una celda con codigo y sin salida no constituye un resultado verificado.
- Una salida guardada demuestra lo registrado en ese momento, no necesariamente que el entorno actual la reproduzca.
- Una prueba de humo, una muestra o una ejecucion parcial no equivalen a validacion completa.
- Si una cifra aparece en varios artefactos, comprueba que poblacion, filtros, version, metrica y denominador coincidan.
- Usa `No encontrado en el alcance revisado` cuando no puedas demostrar ausencia en el proyecto completo.

## 1. Problema, pregunta y alcance
- [ ] El problema esta delimitado y su relevancia esta justificada sin exageracion.
- [ ] La pregunta de investigacion es clara, investigable y coherente con la evidencia disponible.
- [ ] El objetivo general responde a la pregunta y los objetivos especificos permiten abordarlo.
- [ ] La unidad de analisis, poblacion objetivo, periodo, contexto y alcance geografico o institucional estan identificados cuando corresponda.
- [ ] Las variables, constructos o categorias tienen definiciones y operacionalizaciones comprensibles.
- [ ] El tipo de estudio se declara o puede establecerse sin contradicciones.
- [ ] Las hipotesis, si existen, son compatibles con el caracter exploratorio, descriptivo, predictivo o causal del estudio.
- [ ] Los criterios de exito, comparacion o decision estan definidos y no se introducen solo despues de conocer los resultados.

## 2. Fuentes, antecedentes y trazabilidad
- [ ] Las fuentes de datos, documentos y antecedentes estan identificadas.
- [ ] Las citas y referencias existen, son localizables y respaldan las afirmaciones asociadas.
- [ ] Se distinguen fuentes primarias, revisiones, preprints, informes, opinion y divulgacion.
- [ ] La vigencia de informacion temporalmente sensible fue verificada.
- [ ] La estrategia de busqueda y los criterios de inclusion/exclusion estan documentados cuando el trabajo revisa literatura.
- [ ] La seleccion de antecedentes representa posiciones relevantes y no solo evidencia favorable.
- [ ] Fechas de acceso, versiones, licencias, permisos y restricciones de uso estan registrados cuando corresponda.
- [ ] Existe trazabilidad entre fuente, dato o afirmacion y el lugar donde se utiliza.

## 3. Calidad, cobertura y datos faltantes
- [ ] La procedencia, granularidad, claves, unidades, tipos, rangos, duplicados y consistencia temporal fueron revisados.
- [ ] Se reportan tamanos de muestra y denominadores en cada etapa relevante del filtrado o analisis.
- [ ] Los faltantes se cuantifican por variable y por unidad de analisis cuando ambas perspectivas importan.
- [ ] Se distinguen no aplica, no medido, no respuesta, perdida, censura, invalidez y ausencia estructural cuando la evidencia lo permite.
- [ ] MCAR, MAR o MNAR no se afirman sin evaluacion y supuestos explicitos.
- [ ] Se analiza quienes quedan incluidos y excluidos, no solo el porcentaje total de faltantes.
- [ ] Eliminaciones, imputaciones y reglas de calidad estan justificadas y son reproducibles.
- [ ] La imputacion se ajusta sin fuga de informacion dentro del entrenamiento cuando existe evaluacion predictiva.
- [ ] Se consideran analisis de sensibilidad cuando filtros, exclusiones o imputaciones pueden cambiar los resultados.
- [ ] Las conclusiones y la poblacion a la que se generaliza reflejan las brechas de cobertura detectadas.

## 4. Diseno metodologico
- [ ] El metodo elegido puede responder la pregunta de investigacion.
- [ ] La seleccion de muestra, casos, participantes, documentos o unidades esta justificada.
- [ ] Comparadores, baseline, control o contrafactual estan definidos cuando son necesarios.
- [ ] Confundentes, sesgos de seleccion, errores de medicion y otras amenazas a la validez fueron considerados.
- [ ] El protocolo permite distinguir analisis confirmatorio, exploratorio y post hoc.
- [ ] Los supuestos del metodo se declaran y se revisan con evidencia pertinente.
- [ ] La magnitud de la muestra, potencia, precision o suficiencia esta considerada cuando corresponde.
- [ ] El plan de analisis es coherente con la escala, estructura y dependencia de los datos.

### Criterios condicionales por enfoque
- [ ] Cuantitativo: muestreo, operacionalizacion, particiones, supuestos estadisticos y plan de analisis estan documentados.
- [ ] Cualitativo: contexto, seleccion, produccion de datos, reflexividad, codificacion, triangulacion y suficiencia estan documentados.
- [ ] Mixto: se justifica la combinacion, el punto de integracion y el tratamiento de resultados divergentes.
- [ ] Revision de literatura: fuentes, periodo, descriptores, deduplicacion, seleccion, calidad y sintesis son reproducibles.
- [ ] Experimental o cuasiexperimental: asignacion, intervencion, adherencia, contaminacion, perdidas y supuestos de identificacion estan examinados.
- [ ] Aplicado: se diferencian validez analitica, viabilidad operativa, adopcion e impacto real.

## 5. Scripts, notebooks y pipelines
Aplica esta seccion cuando el artefacto incluye codigo o procesamiento ejecutable.

- [ ] Entradas, rutas, dependencias, versiones y configuracion estan declaradas sin exponer secretos.
- [ ] El orden de ejecucion y las dependencias entre pasos son reproducibles.
- [ ] Se validan esquema, columnas, tipos, claves, nulos, rangos y volumen antes del analisis.
- [ ] Limpieza, transformaciones, filtros y exclusiones quedan registradas.
- [ ] Semillas y fuentes de aleatoriedad estan controladas cuando corresponde.
- [ ] Entrenamiento, seleccion de parametros y evaluacion final estan separados.
- [ ] No existe leakage entre target, predictores, preprocesamiento, particiones o periodos.
- [ ] Las salidas guardadas corresponden al codigo y a los datos actuales, o se marca que requieren reejecucion.
- [ ] Errores, advertencias y celdas no ejecutadas se identifican y no se presentan como resultados.
- [ ] Tablas, figuras y archivos derivados pueden vincularse con el paso que los genero.
- [ ] La validacion realizada se clasifica correctamente como estatica, prueba de humo, parcial o completa.

## 6. Metricas, comparaciones y resultados
- [ ] Cada metrica tiene nombre, definicion, unidad, direccion y denominador claros.
- [ ] La metrica responde al objetivo y a los costos o consecuencias del error relevantes.
- [ ] Se reportan poblacion evaluada, particion, protocolo, baseline y condiciones de comparacion.
- [ ] Las estimaciones puntuales incluyen variabilidad o incertidumbre cuando corresponde.
- [ ] Las comparaciones usan datos, particiones y protocolos equivalentes.
- [ ] No hay seleccion oportunista de metricas, subgrupos, semillas, modelos o periodos.
- [ ] Se distinguen significancia estadistica, magnitud del efecto, precision y relevancia practica.
- [ ] Un resultado no significativo no se interpreta automaticamente como equivalencia o ausencia de efecto.
- [ ] Se consideran comparaciones multiples, sensibilidad, robustez y analisis de errores cuando aplican.
- [ ] En prediccion se revisan baseline, desempeno fuera de muestra, desbalance, calibracion, estabilidad y deriva segun el uso previsto.
- [ ] En analisis cualitativo, las categorias y hallazgos permanecen vinculados a evidencia y contexto.
- [ ] Resultados nulos, contradictorios o inesperados se reportan con el mismo criterio que los favorables.

## 7. Inferencia, conclusiones y recomendaciones
- [ ] Cada conclusion responde a la pregunta y puede rastrearse hasta resultados observados.
- [ ] Se distingue descripcion, asociacion, prediccion, explicacion, causalidad y recomendacion.
- [ ] No se atribuyen mecanismos no medidos como si fueran hallazgos.
- [ ] Las afirmaciones causales cuentan con un diseno, supuestos y analisis que las sustenten.
- [ ] No se extrapola fuera de la poblacion, periodo, contexto, instrumentos o rango observado sin justificacion.
- [ ] La falta de registros no se interpreta como ausencia del fenomeno.
- [ ] Las limitaciones indican que conclusiones afectan y la direccion del sesgo cuando puede establecerse.
- [ ] Las explicaciones alternativas y la incertidumbre relevante estan reconocidas.
- [ ] Las recomendaciones son proporcionales a la evidencia y no convierten correlaciones en instrucciones de intervencion.
- [ ] Las afirmaciones sobre superioridad incluyen tarea, datos, metrica, baseline, protocolo e incertidumbre.
- [ ] El trabajo futuro propuesto responde a brechas reales y no se usa para ocultar fallas del estudio actual.

## 8. Reproducibilidad y coherencia entre artefactos
- [ ] Se registran datos de origen, versiones, fechas, transformaciones, codigo, dependencias, semillas y configuraciones.
- [ ] Existe correspondencia entre base analitica, codigo, salidas, tablas, figuras, informe y presentacion.
- [ ] Los resultados declarados fueron ejecutados o estan marcados como pendientes de verificacion.
- [ ] Cambios de datos, filtros, variables, metricas o protocolos gatillan la actualizacion de resultados dependientes.
- [ ] No coexisten versiones incompatibles sin una explicacion clara de cual es canonica.
- [ ] Otra persona podria repetir los pasos esenciales con los artefactos y permisos disponibles.

## 9. Etica, privacidad, seguridad e impacto
- [ ] Consentimiento, permisos, licencias y compatibilidad de uso estan considerados.
- [ ] Se aplica minimizacion de datos y no se exponen datos personales, sensibles, confidenciales ni secretos.
- [ ] Se revisan riesgos de dano, sesgo, estigmatizacion, discriminacion, uso secundario y asimetrias de poder.
- [ ] Conflictos de interes, financiamiento y roles relevantes estan declarados cuando corresponde.
- [ ] En usos sensibles existen supervision humana, limites de uso y mecanismos de revision o apelacion adecuados.
- [ ] Las recomendaciones consideran impacto potencial y no solo desempeno tecnico.

## 10. Comunicacion
- [ ] El texto distingue hechos, resultados, interpretaciones, hipotesis, recomendaciones y limitaciones.
- [ ] Tablas y figuras tienen titulo, unidades, denominadores, fuente y notas necesarias para interpretarlas.
- [ ] La redaccion no exagera certeza, novedad, generalizacion ni importancia.
- [ ] Terminos tecnicos, siglas y categorias se definen para la audiencia prevista.
- [ ] Las cifras son consistentes entre texto, tablas, figuras, anexos y presentaciones.
- [ ] Se comunican limites y resultados adversos con visibilidad proporcional a los hallazgos principales.
- [ ] No se ocultan decisiones metodologicas determinantes en notas, anexos o codigo inaccesible.

## Clasificacion de hallazgos
Clasifica solo las brechas que tengan evidencia:

- `Critico`: invalida el resultado principal, implica fabricacion, fuga grave, vulneracion etica o imposibilita conocer que datos/metodo produjeron la conclusion.
- `Alto`: puede cambiar sustancialmente resultados, poblacion, interpretacion o decision; requiere correccion antes de usar el trabajo para concluir.
- `Medio`: reduce trazabilidad, reproducibilidad o solidez, pero no invalida por si solo el resultado principal.
- `Bajo`: mejora de claridad, documentacion o consistencia con impacto metodologico limitado.

No asignes severidad alta por una preferencia de estilo. Explica siempre el mecanismo de impacto y la accion minima necesaria.

## Veredicto global
Emite un veredicto proporcional al alcance revisado:

- `Cumple`: no hay incumplimientos materiales y los criterios relevantes tienen evidencia suficiente.
- `Cumple con observaciones`: existen brechas medias o bajas que no cambian la conclusion principal.
- `Cumple parcialmente`: hay brechas altas, evidencia incompleta o resultados que requieren reejecucion antes de usarse plenamente.
- `No cumple`: una o mas brechas criticas invalidan el uso investigativo previsto.
- `No verificable`: faltan artefactos o acceso esencial para evaluar los criterios principales.

No calcules un porcentaje de cumplimiento salvo que todos los criterios hayan sido previamente ponderados y la regla de calculo este justificada. El numero de casillas no equivale a importancia metodologica.

## Formato del informe de chequeo

### 1. Resumen ejecutivo
- Artefacto y version revisados.
- Alcance y nivel de ejecucion.
- Veredicto global con nivel de confianza.
- Principales fortalezas y brechas.

### 2. Matriz de cumplimiento

| ID | Criterio | Estado | Evidencia localizable | Impacto | Accion minima |
|---|---|---|---|---|---|
| C-01 | Criterio evaluado | Cumple / Parcial / No cumple / No verificable / No aplica | Ruta, linea, celda, pagina o salida | Consecuencia metodologica | Correccion o evidencia requerida |

### 3. Hallazgos priorizados
Para cada hallazgo material incluye:

- severidad;
- evidencia;
- por que importa;
- resultados o conclusiones afectados;
- correccion minima;
- validacion necesaria despues de corregir.

### 4. Limitaciones del chequeo
Declara archivos no disponibles, partes no ejecutadas, dependencias, restricciones de acceso y todo criterio que quedo `No verificable`.

### 5. Trazabilidad de contexto
Lista solo los archivos, fuentes, comandos y ejecuciones realmente consultados. Separa revision estatica, salidas guardadas y evidencia reproducida en la sesion.

## Cierre obligatorio
Termina indicando:

- que puede sostenerse con la evidencia revisada;
- que no puede sostenerse todavia;
- que debe corregirse o verificarse antes del uso previsto;
- si el chequeo fue estatico, parcial o reproducido completamente.
