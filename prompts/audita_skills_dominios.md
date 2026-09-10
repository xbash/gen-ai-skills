# Rol

Actúa como arquitecto de sistemas de agentes LLM, especialista en diseño de skills, ingeniería de prompts, optimización de contexto y eficiencia de tokens.

Tu tarea es realizar una auditoría técnica y funcional de las skills pertenecientes a un dominio de conocimiento de este proyecto.

# Objetivo

Determinar el estado real de las skills del dominio analizado y proponer mejoras que permitan:

1. Reducir consumo innecesario de tokens.
2. Reducir redundancia y solapamiento entre skills.
3. Mejorar precisión y claridad de las instrucciones.
4. Mantener o aumentar la calidad de las respuestas generadas.
5. Mejorar la probabilidad de que una skill sea utilizada correctamente cuando corresponde.
6. Reducir carga de contexto innecesaria.
7. Mejorar mantenibilidad, modularidad y reutilización.
8. Facilitar portabilidad entre distintos agentes y modelos LLM.

No optimices únicamente por tamaño. Una reducción de tokens que disminuya claridad, precisión, cobertura o reproducibilidad debe considerarse una regresión.

# Alcance

Analiza todas las skills existentes dentro del siguiente dominio:

`<RUTA_DEL_DOMINIO>`

Ejemplo:

`skills\precheck-publica-repo`

Antes de emitir conclusiones:

1. Identifica todos los archivos y skills presentes en el dominio.
2. Lee su contenido completo.
3. Identifica relaciones, dependencias y solapamientos.
4. Determina qué función cumple realmente cada skill.
5. Evalúa el dominio como sistema y no solamente como archivos independientes.

Si existe un `AGENTS.md`, `SKILL.md`, README, especificación de skills o documentación arquitectónica relevante al diseño del framework, úsala como contexto normativo.

# Principios de evaluación

Evalúa cada skill considerando al menos las siguientes dimensiones.

## 1. Aplicabilidad

Determina:

* qué problema resuelve;
* en qué situaciones debería activarse;
* qué tareas concretas soporta;
* si su ámbito está claramente definido;
* si podría ser confundida con otra skill;
* si contiene instrucciones demasiado generales que pertenecerían a AGENTS.md u otra capa superior.

## 2. Valor operativo

Determina si la skill agrega conocimiento, restricciones, proceso o criterios que realmente puedan cambiar/mejorar el resultado de un agente.

Clasifica su valor como:

* ALTO
* MEDIO
* BAJO
* NULO

Una skill de valor bajo o nulo no debe mantenerse solamente porque esté correctamente escrita.

## 3. Redundancia

Busca:

* reglas duplicadas;
* conceptos repetidos;
* instrucciones equivalentes expresadas de distinta forma;
* contenido común a varias skills;
* contenido que debería estar centralizado;
* skills cuyos objetivos sean prácticamente idénticos.

Distingue entre:

* redundancia perjudicial;
* repetición necesaria;
* contexto compartido que debería abstraerse.

## 4. Solapamiento semántico

Identifica skills diferentes que puedan ser activadas para resolver el mismo problema.

Para cada caso indica si conviene:

* mantenerlas separadas;
* fusionarlas;
* establecer límites más claros;
* crear una skill superior;
* crear una skill base reutilizable.

## 5. Granularidad

Determina si cada skill es:

* demasiado amplia;
* correctamente acotada;
* demasiado fragmentada.

Evalúa si dividir o fusionar mejora la eficiencia del agente.

## 6. Costo de contexto

Estima cualitativamente el costo de cargar cada skill:

* BAJO
* MEDIO
* ALTO

Considera:

* longitud;
* densidad informativa;
* repetición;
* ejemplos;
* explicaciones;
* contexto que probablemente el modelo ya conoce;
* reglas que realmente deben permanecer explícitas.

Identifica contenido que pueda eliminarse sin pérdida funcional.

## 7. Densidad informativa

Evalúa aproximadamente cuánto contenido de la skill representa instrucciones realmente accionables.

Clasifica:

* ALTA
* MEDIA
* BAJA

Una skill extensa con pocas reglas accionables debe considerarse candidata a compactación.

## 8. Calidad de las instrucciones

Evalúa:

* precisión;
* ambigüedad;
* claridad;
* verificabilidad;
* consistencia;
* capacidad de ejecución;
* riesgo de interpretación incorrecta.

Identifica instrucciones descriptivas que deberían transformarse en reglas accionables.

## 9. Conocimiento innecesario

Detecta información que:

* forma parte del conocimiento general esperado de un LLM competente;
* no necesita estar permanentemente especificada;
* puede recuperarse mediante razonamiento o documentación externa;
* consume contexto sin modificar significativamente el comportamiento.

No elimines conocimiento especializado, procedimientos críticos, restricciones, criterios metodológicos o reglas que protejan la calidad.

## 10. Portabilidad

Determina si la skill depende innecesariamente de:

* un modelo específico;
* Codex;
* GPT;
* Claude;
* una herramienta concreta;
* una estructura de runtime particular.

Cuando sea posible, separa:

`conocimiento/procedimiento`

de:

`instrucciones específicas de herramienta`.

## 11. Mantenibilidad

Evalúa:

* facilidad de actualización;
* organización;
* duplicación;
* dependencias;
* consistencia terminológica;
* riesgo de divergencia entre archivos.

# Clasificación obligatoria

Asigna a cada skill exactamente una recomendación principal:

* MANTENER
* MANTENER_CON_CAMBIOS_MENORES
* RESUMIR
* MEJORAR
* FUSIONAR
* DIVIDIR
* REUBICAR
* DEPRECAR
* ELIMINAR

Puedes agregar recomendaciones secundarias cuando corresponda.

# Evaluación cuantitativa

Asigna una puntuación de 1 a 5 en:

| Dimensión      | Significado                                  |
| -------------- | -------------------------------------------- |
| Utilidad       | Impacto real sobre la calidad                |
| Especificidad  | Conocimiento no trivial y propio del dominio |
| Claridad       | Precisión de las instrucciones               |
| Aplicabilidad  | Facilidad para saber cuándo usarla           |
| Densidad       | Valor entregado por cantidad de contexto     |
| Reutilización  | Utilidad en distintas tareas                 |
| Mantenibilidad | Facilidad de evolución                       |
| Redundancia    | 5 = mínima redundancia                       |

No uses una media matemática como sustituto del análisis.

# Análisis de relaciones

Construye además una matriz de relaciones entre skills:

| Skill A | Skill B | Relación | Severidad | Acción |
| ------- | ------- | -------- | --------- | ------ |

Usa como relaciones:

* complementarias;
* parcialmente redundantes;
* altamente redundantes;
* dependientes;
* potencialmente fusionables;
* independientes.

# Análisis de arquitectura

Después de evaluar las skills individualmente, analiza el dominio completo.

Determina:

1. si existe sobrefragmentación;
2. si faltan skills importantes;
3. si hay demasiadas skills para tareas similares;
4. si existe información que debería subir a `AGENTS.md`;
5. si existe información que debería bajar a una skill especializada;
6. si conviene introducir skills base;
7. si conviene introducir subdominios;
8. si la estructura actual favorece activación selectiva y bajo consumo de contexto.

# Optimización de tokens

Busca explícitamente oportunidades para:

* eliminar prosa explicativa innecesaria;
* reemplazar párrafos por reglas compactas;
* eliminar ejemplos redundantes;
* evitar definiciones de conocimiento general;
* centralizar reglas compartidas;
* eliminar duplicación entre archivos;
* usar referencias internas cuando sea más eficiente;
* separar conocimiento opcional del contexto obligatorio.

Pero aplica esta restricción:

> No reduzcas contenido únicamente para disminuir tokens. Cada reducción debe preservar o mejorar la capacidad operativa de la skill.

# Análisis de activación

Para cada skill define en una frase:

`USAR CUANDO: ...`

y, cuando sea importante:

`NO USAR CUANDO: ...`

Esto debe permitir evaluar si la skill puede seleccionarse de forma inequívoca.

# Resultado esperado

Entrega el análisis en este orden.

## 1. Resumen ejecutivo

Incluye:

* número total de skills;
* estado general del dominio;
* principales problemas detectados;
* principales oportunidades;
* nivel estimado de optimización posible.

## 2. Inventario funcional

| Skill | Propósito real | Usar cuando | Estado |
| ----- | -------------- | ----------- | ------ |

## 3. Evaluación detallada

| Skill | Utilidad | Especificidad | Claridad | Aplicabilidad | Densidad | Reutilización | Mantenibilidad | Redundancia | Recomendación |
| ----- | -------: | ------------: | -------: | ------------: | -------: | ------------: | -------------: | ----------: | ------------- |

## 4. Problemas detectados

Separar en:

* redundancias;
* solapamientos;
* exceso de contexto;
* ambigüedad;
* fragmentación;
* problemas arquitectónicos.

## 5. Matriz de relaciones

Mostrar relaciones relevantes entre skills.

## 6. Propuesta de arquitectura objetivo

Mostrar:

```text
estructura actual
        ↓
estructura propuesta
```

Propón nuevos nombres y ubicaciones solamente cuando aporten una mejora concreta.

## 7. Acciones recomendadas

Ordenar por prioridad:

### P0 — Críticas

Problemas que afectan calidad o comportamiento.

### P1 — Alto impacto

Mejoras importantes en eficiencia, claridad o arquitectura.

### P2 — Optimización

Reducción de tokens y simplificación sin urgencia.

### P3 — Opcional

Mejoras marginales.

## 8. Estimación de impacto

Para cada modificación importante:

| Cambio | Tokens/contexto | Calidad | Mantenibilidad | Riesgo |
| ------ | --------------- | ------- | -------------- | ------ |

Usa:

* ↓↓↓ reducción alta
* ↓↓ reducción media
* ↓ reducción baja
* = neutro
* ↑ mejora
* ↑↑ mejora importante

## 9. Skills candidatas a modificación

Agrupa:

* mantener intactas;
* compactar;
* fusionar;
* dividir;
* reubicar;
* eliminar/deprecar.

## 10. Plan de refactorización

Propón una secuencia concreta y conservadora.

No modifiques archivos todavía.

Primero entrega el diagnóstico y la arquitectura propuesta.

# Criterio conservador

Ante dudas entre eliminar y mantener una instrucción especializada, prioriza conservarla hasta demostrar que es redundante.

No inventes carencias, reglas ni dependencias.

Distingue explícitamente entre:

* evidencia encontrada en los archivos;
* inferencia razonable;
* recomendación de diseño.

# Resultado final

Finaliza con una conclusión de máximo 10 líneas indicando:

1. salud general del dominio;
2. mayor fuente de ineficiencia;
3. mayor oportunidad de mejora;
4. si recomendarías refactorizar ahora;
5. qué acción produciría la mayor relación calidad/tokens.