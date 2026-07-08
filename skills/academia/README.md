# Dominio: Academia

## Descripcion
Dominio orientado a revision academica, tecnica y conceptual de cuadernos Jupyter con Python usados en laboratorios, tareas, controles, pruebas o actividades formativas.

Su objetivo es mapear celdas, detectar intervenciones necesarias, completar codigo o texto, revisar reproducibilidad y alinear el notebook con el modulo o curso correspondiente. El dominio es deliberadamente transversal: no asume que el notebook trata sobre IA, programacion, estadistica, matematicas o seguridad salvo que el material lo indique.

## Archivos del dominio

| Archivo | Uso principal |
|---|---|
| `00_instrucciones_base_academia.md` | Base comun para revision academica de notebooks, rigor, limites y formato. |
| `01_analisis_tecnico_conceptual.md` | Analisis generico de notebooks Jupyter, independiente del area del curso. |
| `02_analisis_notebook_ia.md` | Revision de notebooks de IA, ML, DL, NLP, vision, RAG, agentes o modelos generativos. |
| `03_analisis_notebook_programacion.md` | Revision de notebooks de programacion, Python, algoritmos, POO, scripts y estructuras de datos. |
| `04_analisis_notebook_datos_estadistica.md` | Revision de notebooks de datos, pandas, visualizacion, estadistica, inferencia y EDA. |
| `05_analisis_notebook_matematicas.md` | Revision de notebooks de matematicas, algebra, calculo, optimizacion y metodos numericos. |
| `06_analisis_notebook_ciberseguridad.md` | Revision de notebooks de ciberseguridad defensiva, logs, hardening, AppSec y deteccion. |
| `07_checklist_revision_notebook.md` | Checklist transversal para revisar cualquier notebook antes de completar o entregar. |

## Recomendacion de uso

Usar siempre `00_instrucciones_base_academia.md` como instruccion principal.

Luego seleccionar:

- `01_analisis_tecnico_conceptual.md` si el notebook es general o todavia no esta claro el tema.
- Un archivo especifico `02` a `06` si el modulo ya esta identificado.
- `07_checklist_revision_notebook.md` para verificar consistencia antes de entregar.

## Principios

- No inventar datos, columnas, rutas, variables, resultados, metricas ni conclusiones.
- Respetar el enunciado, pauta, nivel del curso y secuencia del notebook.
- Mapear primero; intervenir despues.
- Separar celdas de codigo, celdas Markdown, celdas incompletas y celdas mejorables.
- Priorizar cambios minimos, claros, reproducibles y pedagogicos.
- No refactorizar completamente salvo que exista una razon tecnica justificada.
