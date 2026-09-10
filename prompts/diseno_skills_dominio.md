# Rol

Actúa como arquitecto de sistemas de agentes LLM y especialista en diseño de skills, gestión de contexto, ingeniería de prompts y optimización del consumo de tokens.

Debes diseñar una arquitectura de skills para un dominio de conocimiento determinado.

No asumas que cada concepto, técnica, algoritmo, formato, herramienta o archivo candidato debe convertirse en una skill independiente.

# Dominio

Dominio a analizar:

`<DOMINIO>`

Ejemplo:

`geoespacial`

# Contexto

Actualmente dispongo solamente de una lista preliminar de posibles skills o conceptos relacionados con el dominio.

Esta lista fue construida exploratoriamente y puede contener:

- skills válidas;
- conceptos;
- técnicas;
- algoritmos;
- formatos;
- fuentes de datos;
- herramientas;
- workflows;
- procedimientos;
- reglas metodológicas;
- conceptos demasiado específicos;
- elementos redundantes;
- elementos excesivamente fragmentados.

Por tanto, NO debes asumir que la estructura actual es correcta.

# Candidatos existentes

Analiza los siguientes candidatos:

```text
<LISTA_DE_CANDIDATOS>
```

# Objetivo principal

Diseñar el conjunto mínimo y suficiente de skills que permita trabajar competentemente en este dominio manteniendo:

1. alta calidad técnica;
2. cobertura adecuada;
3. bajo consumo de contexto;
4. bajo consumo de tokens;
5. mínima redundancia;
6. activación selectiva;
7. alta reutilización;
8. mantenibilidad;
9. extensibilidad;
10. portabilidad entre agentes y modelos LLM.

El objetivo NO es maximizar la cantidad de skills.

El objetivo tampoco es minimizar artificialmente su cantidad.

Busca la granularidad que maximice:

`capacidad operativa / costo de contexto`

# Principio fundamental

Una skill debe representar preferentemente una CAPACIDAD REUTILIZABLE o un WORKFLOW.

No conviertas automáticamente en skills independientes:

- conceptos;
- definiciones;
- formatos de archivo;
- algoritmos individuales;
- índices;
- sensores;
- datasets;
- librerías;
- herramientas;
- operaciones atómicas.

Estos elementos pueden pertenecer dentro de una skill más general cuando tengan cohesión funcional.

# Definición operacional de skill

Considera candidata a skill independiente una unidad que cumpla mayoritariamente con lo siguiente:

1. Tiene un caso de uso claramente identificable.
2. Puede expresarse mediante:

   `USAR CUANDO: ...`

3. Ejecuta una tarea o workflow reproducible.
4. Tiene entradas identificables.
5. Contiene decisiones o criterios técnicos relevantes.
6. Produce algún resultado, transformación, diagnóstico o decisión.
7. Puede incluir validaciones.
8. Tiene suficiente reutilización.
9. Tiene suficiente conocimiento especializado como para justificar ocupar contexto.
10. Posee fronteras razonablemente claras respecto de otras skills.

# Test de independencia

Para cada candidato pregunta:

> ¿Este elemento necesita ser cargado y utilizado independientemente de los demás con suficiente frecuencia como para justificar una skill propia?

Si la respuesta es NO, debe evaluarse como candidato a:

- integrar otra skill;
- convertirse en conocimiento de referencia;
- convertirse en sección;
- convertirse en checklist;
- convertirse en ejemplo;
- convertirse en configuración;
- ser eliminado.

# Clasificación inicial

Clasifica cada candidato exactamente en una de estas categorías:

- SKILL_INDEPENDIENTE
- PARTE_DE_SKILL
- CONOCIMIENTO_REFERENCIA
- WORKFLOW
- CHECKLIST
- FORMATO
- ALGORITMO
- FUENTE_DATOS
- HERRAMIENTA
- CONCEPTO
- REDUNDANTE
- FUERA_DE_ALCANCE
- REVISAR

No confundas tema de conocimiento con skill.

# Fase 1 — Comprender el dominio

Antes de diseñar la estructura:

1. identifica las principales capacidades requeridas para trabajar competentemente en el dominio;
2. identifica workflows típicos;
3. identifica conocimiento transversal;
4. identifica subdominios naturales;
5. identifica operaciones frecuentes;
6. identifica tareas especializadas que deberían cargarse únicamente bajo demanda.

No diseñes todavía archivos.

# Fase 2 — Evaluar los candidatos

Construye:

| Candidato | Tipo real | Utilidad | Frecuencia esperada | ¿Skill independiente? | Motivo |
|---|---|---:|---:|---|---|

Para utilidad y frecuencia utiliza:

- Alta
- Media
- Baja

# Fase 3 — Detectar sobrefragmentación

Identifica candidatos excesivamente pequeños.

Busca particularmente:

- varias skills correspondientes al mismo workflow;
- un archivo por algoritmo;
- un archivo por formato;
- un archivo por sensor;
- un archivo por índice;
- un archivo por operación elemental;
- conceptos que solamente aportan definiciones;
- instrucciones que el modelo probablemente ya conoce;
- archivos cuyo contenido debería estar dentro de otra skill.

Para cada grupo propone, cuando corresponda:

```text
A.md
B.md
C.md
D.md
    ↓
skill-compuesta/
    SKILL.md
```

Explica la lógica de agrupamiento.

# Fase 4 — Detectar skills demasiado grandes

Analiza también el problema inverso.

No fusiones elementos solamente para reducir archivos.

Si una skill propuesta:

- contiene workflows independientes;
- requeriría activarse en situaciones muy distintas;
- introduce demasiado contexto irrelevante;
- posee fronteras poco claras;

propón dividirla.

# Fase 5 — Diseñar el Minimum Viable Skill Set

Propón un:

## MVSS — Minimum Viable Skill Set

Debe contener el conjunto mínimo de skills que permitiría trabajar razonablemente bien en el dominio.

Clasifica:

### CORE

Skills fundamentales y de uso frecuente.

### SPECIALIZED

Skills especializadas cargadas únicamente cuando corresponde.

### OPTIONAL

Skills que podrían incorporarse posteriormente.

No consideres "mínimo" como sinónimo de incompleto.

El MVSS debe conservar cobertura profesional razonable.

# Fase 6 — Diseñar arquitectura objetivo

Propón una estructura como:

```text
skills/
└── <dominio>/
    ├── skill-a/
    │   └── SKILL.md
    ├── skill-b/
    │   └── SKILL.md
    ├── skill-c/
    │   └── SKILL.md
    └── ...
```

Cuando sea conveniente pueden existir:

```text
references/
checklists/
templates/
examples/
```

pero solamente si aportan valor.

# Fase 7 — Definir contrato de cada skill

Para cada skill propuesta especifica:

## Nombre

Nombre corto, estable y representativo de una capacidad.

## Propósito

Una frase.

## Trigger

`USAR CUANDO: ...`

## Anti-trigger

`NO USAR CUANDO: ...`

cuando sea necesario.

## Inputs

Información necesaria.

## Workflow

Pasos principales.

## Output

Resultado esperado.

## Validaciones

Controles relevantes.

## Conocimiento incluido

Conceptos, técnicas o candidatos originales absorbidos por esta skill.

# Fase 8 — Trazabilidad

Ningún candidato original debe desaparecer silenciosamente.

Construye:

| Candidato original | Destino propuesto | Motivo |
|---|---|---|

Ejemplo:

```text
ndvi.md           → spectral-index-analysis
ndwi.md           → spectral-index-analysis
raster.md         → raster-processing
resampling.md     → raster-processing
shapefile.md      → geospatial-data-formats/reference
geojson.md        → geospatial-data-formats/reference
random_forest.md  → geospatial-modeling
```

Esto es solamente un ejemplo conceptual; determina la clasificación real mediante el análisis.

# Fase 9 — Evaluar eficiencia

Para cada skill propuesta evalúa:

| Skill | Valor operativo | Frecuencia | Contexto | Especificidad | Reutilización |
|---|---|---|---|---|---|

Usa:

- Alto
- Medio
- Bajo

Una skill candidata especialmente buena debería tender a:

```text
Valor operativo     ALTO
Reutilización       ALTA
Especificidad       ALTA/MEDIA
Costo de contexto   BAJO/MEDIO
```

# Fase 10 — Detectar conocimiento que NO necesita persistirse

Identifica contenido que posiblemente no necesite formar parte de ninguna skill porque un LLM competente normalmente puede resolverlo sin instrucciones persistentes.

Diferencia entre:

### Conocimiento general

Puede omitirse.

### Conocimiento especializado del dominio

Conviene conservar.

### Procedimiento

Conviene conservar si afecta reproducibilidad o calidad.

### Restricción crítica

Debe conservarse.

### Ejemplo ilustrativo

Puede eliminarse si no aporta comportamiento.

# Resultado requerido

Entrega exactamente las siguientes secciones.

## 1. Diagnóstico

Indica si la propuesta actual presenta:

- insuficiencia;
- cobertura razonable;
- sobrefragmentación;
- sobredimensionamiento;
- redundancia;
- granularidad adecuada.

## 2. Capacidades fundamentales del dominio

Lista las capacidades que realmente deberían estar cubiertas independientemente de los candidatos actuales.

## 3. Clasificación de candidatos

Tabla completa.

## 4. Grupos potencialmente fusionables

Mostrar:

```text
candidatos
     ↓
skill propuesta
```

## 5. Minimum Viable Skill Set

Separado en:

- CORE
- SPECIALIZED
- OPTIONAL

## 6. Arquitectura propuesta

Mostrar árbol de directorios.

## 7. Contrato resumido de cada skill

Incluir:

- propósito;
- USAR CUANDO;
- NO USAR CUANDO;
- entradas;
- salida.

## 8. Matriz de trazabilidad

Mostrar dónde quedó cada candidato original.

## 9. Skills que faltan

Identifica capacidades relevantes del dominio no presentes en la lista original.

No inventes skills solamente para completar una taxonomía.

Cada nueva skill debe justificarse mediante una necesidad operativa concreta.

## 10. Elementos eliminables

Indica qué candidatos no justifican ocupar contexto permanente.

## 11. Evaluación de eficiencia

Estima:

- reducción potencial del número de skills;
- reducción cualitativa de contexto;
- efecto esperado sobre calidad;
- riesgos de la simplificación.

No inventes cifras de tokens si no dispones de mediciones.

## 12. Recomendación final

Indica:

- número actual de candidatos;
- número recomendado aproximado de skills CORE;
- número recomendado de skills SPECIALIZED;
- cuáles deberían fusionarse;
- cuáles deberían convertirse en referencias;
- cuáles podrían desaparecer.

# Restricciones

No generes todavía los archivos `SKILL.md`.

Primero diseña y justifica la arquitectura.

No conserves una skill solamente porque ya existe.

No elimines una skill solamente para reducir tokens.

No conviertas cada concepto del dominio en una skill.

Prioriza capacidades y workflows sobre taxonomías de conocimiento.

Ante incertidumbre, conserva trazabilidad y marca `REVISAR`.

Diferencia claramente:

- evidencia;
- inferencia;
- recomendación.