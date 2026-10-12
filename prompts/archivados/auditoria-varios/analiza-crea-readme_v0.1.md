# Objetivo

Analiza el proyecto completo y evalúa el archivo `README.md` ubicado en la raíz.

El objetivo es determinar si el README actual cumple correctamente su función como **documento de entrada al proyecto** y generar un **plan de acción detallado para su eventual actualización**.

Esta tarea es exclusivamente de **análisis y planificación**.

No debes modificar ningún archivo.

El resultado debe permitir que posteriormente otro modelo, preferentemente **Luna**, ejecute cambios mecánicos sobre el `README.md` siguiendo instrucciones claras, verificables y acotadas.

---

# Restricción crítica: modo solo lectura

Durante toda esta tarea debes trabajar en modo estrictamente de solo lectura.

Está prohibido:

- crear archivos;
- modificar archivos;
- sobrescribir archivos;
- mover archivos;
- renombrar archivos;
- eliminar archivos;
- crear directorios;
- mover directorios;
- eliminar directorios;
- ejecutar herramientas de formateo que modifiquen archivos;
- aplicar parches;
- realizar commits;
- alterar configuración del proyecto;
- actualizar documentación;
- modificar `README.md`;
- modificar `AGENTS.md`;
- modificar README de subdirectorios;
- modificar archivos bajo `/docs`;
- modificar código fuente o scripts.

Puedes únicamente:

- leer archivos;
- inspeccionar directorios;
- buscar referencias;
- analizar relaciones entre archivos;
- revisar comandos existentes;
- verificar rutas;
- comparar documentación;
- identificar inconsistencias;
- proponer cambios.

Si alguna herramienta o comando puede modificar el repositorio como efecto secundario, no lo ejecutes.

---

# Principio fundamental

El `README.md` raíz debe funcionar como **puerta de entrada al proyecto**.

No debe transformarse en:

- una copia de `AGENTS.md`;
- una copia de `/docs`;
- un historial completo del proyecto;
- un registro de decisiones;
- una auditoría;
- un changelog;
- documentación detallada de scripts;
- documentación detallada de flujos internos.

Debe permitir que una persona que llega al repositorio comprenda rápidamente:

- qué es el proyecto;
- qué problema resuelve;
- cuál es su propósito;
- cómo está organizado a alto nivel;
- cuáles son sus requisitos básicos;
- cómo comenzar a utilizarlo;
- dónde encontrar documentación especializada.

---

# Separación de responsabilidades documentales

Aplica la siguiente separación.

## `README.md` raíz

Debe contener principalmente:

1. nombre y propósito del proyecto;
2. descripción breve;
3. problema que aborda;
4. capacidades o características principales;
5. requisitos básicos;
6. instalación o preparación mínima;
7. ejemplo breve de ejecución o uso;
8. configuración esencial;
9. estructura general del repositorio, solo cuando aporte valor;
10. enlaces hacia documentación detallada;
11. estado del proyecto, si corresponde;
12. licencia, si corresponde.

Debe privilegiar contenido breve, verificable y mantenible.

---

## `AGENTS.md`

Debe contener instrucciones orientadas a agentes de IA o herramientas automáticas, por ejemplo:

- reglas de trabajo;
- restricciones;
- políticas de modificación;
- convenciones;
- criterios de calidad;
- routing de modelos;
- procedimientos para agentes;
- instrucciones operacionales internas.

No debe duplicarse en el README.

---

## `/docs`

Debe concentrar documentación extensa o especializada, por ejemplo:

- arquitectura;
- decisiones;
- contexto;
- roadmap;
- procedimientos;
- auditorías;
- análisis;
- handoff;
- troubleshooting;
- documentación histórica;
- documentación metodológica.

El README puede enlazar estos documentos, pero no debe replicarlos.

---

## README de subdirectorios

Los README locales deben explicar:

- propósito del directorio;
- scripts;
- componentes;
- parámetros;
- flujos;
- dependencias particulares;
- ejemplos específicos;
- entradas y salidas;
- consideraciones operativas.

Ese contenido no debe trasladarse innecesariamente al README raíz.

---

# Fase 1: análisis del proyecto

Antes de proponer cambios, revisa cuando existan:

- `README.md` raíz;
- `AGENTS.md`;
- estructura del repositorio;
- README de subdirectorios;
- directorio `/docs`;
- archivos de configuración;
- archivos de dependencias;
- scripts principales;
- puntos de entrada;
- comandos documentados;
- ejemplos;
- workflows;
- configuración de ejecución.

No asumas funcionalidades por nombres de archivos.

Verifica mediante evidencia disponible en el repositorio.

---

# Fase 2: evaluación del README actual

Clasifica su contenido en las siguientes categorías:

### A. Mantener

Contenido correcto, vigente, útil y adecuado para el README raíz.

### B. Actualizar

Contenido conceptualmente correcto pero desactualizado, incompleto o poco claro.

### C. Eliminar del README

Contenido que no debería estar en el README raíz.

Ejemplos:

- historial;
- decisiones técnicas extensas;
- instrucciones para agentes;
- detalles operacionales;
- explicaciones profundas de scripts;
- troubleshooting extenso;
- auditorías anteriores.

### D. Mover conceptualmente

Información que debería existir en otra ubicación, por ejemplo:

- `AGENTS.md`;
- `/docs`;
- README de un subdirectorio.

No debes mover físicamente nada.

Solo indica la ubicación conceptual recomendada.

### E. Agregar

Información relevante ausente del README y que pueda verificarse desde el repositorio.

---

# Fase 3: validación documental

Verifica:

- si los comandos documentados existen;
- si las rutas existen;
- si los enlaces relativos son válidos;
- si los nombres de scripts son correctos;
- si los requisitos pueden verificarse;
- si las dependencias declaradas coinciden con archivos reales;
- si el README contradice otros documentos;
- si existe duplicación innecesaria;
- si hay contenido obsoleto;
- si hay secciones excesivamente extensas;
- si faltan instrucciones mínimas de uso.

No inventes información faltante.

---

# Fase 4: propuesta de estructura objetivo

Propón una estructura final para el README.

No es obligatorio utilizar todas estas secciones:

```markdown
# Nombre del proyecto

Descripción breve.

## Propósito

## Características principales

## Requisitos

## Instalación

## Uso rápido

## Estructura del proyecto

## Configuración

## Documentación

## Estado del proyecto

## Licencia
```

Selecciona únicamente las secciones necesarias.

Explica brevemente por qué cada sección debería:

- mantenerse;
- agregarse;
- modificarse;
- eliminarse.

---

# Fase 5: generar plan de acción ejecutable

Genera un plan de acción que pueda ser ejecutado posteriormente por un modelo orientado a tareas mecánicas.

Cada acción debe ser:

- concreta;
- pequeña;
- verificable;
- independiente cuando sea posible;
- no ambigua.

Usa el siguiente formato:

```text
ACCION-01
Tipo: MODIFICAR | ELIMINAR | AGREGAR | REORDENAR
Sección: <sección README>
Objetivo: <qué debe conseguirse>
Acción: <cambio concreto>
Fuente de verdad: <archivo o ruta>
Validación: <cómo verificar el cambio>
Riesgo: BAJO | MEDIO | ALTO
```

Ejemplo:

```text
ACCION-03
Tipo: ELIMINAR
Sección: Historial del proyecto
Objetivo: Reducir contenido histórico innecesario.
Acción: Eliminar la subsección que enumera versiones anteriores y decisiones de implementación.
Fuente de verdad: CHANGELOG.md y docs/
Validación: El README no contiene historial detallado y mantiene enlaces a documentación histórica.
Riesgo: BAJO
```

---

# Criterio para ejecución posterior con Luna

El plan debe quedar preparado para que otro modelo pueda ejecutarlo de manera mecánica.

Por lo tanto:

- evita instrucciones vagas;
- evita interpretaciones abiertas;
- evita frases como “mejorar”, “optimizar” o “hacer más claro” sin indicar cómo;
- identifica la sección exacta afectada;
- indica contenido a conservar;
- indica contenido a eliminar;
- indica fuentes de verdad;
- indica validaciones posteriores.

Cuando una modificación requiera juicio técnico significativo, marca:

```text
Requiere revisión humana: SÍ
```

En caso contrario:

```text
Requiere revisión humana: NO
```

---

# Prioridad del plan

Clasifica cada acción:

- `P0`: error o información incorrecta;
- `P1`: cambio importante para comprensión o ejecución;
- `P2`: mejora documental recomendable;
- `P3`: mejora cosmética u opcional.

Ordena el plan por prioridad.

---

# Gestión de incertidumbre

Si detectas información que no puede verificarse:

No inventes una solución.

Registra:

```text
ESTADO: REQUIERE CONFIRMACIÓN
Motivo:
Información faltante:
Archivo o evidencia revisada:
Decisión requerida:
```

Estas acciones no deben delegarse automáticamente a Luna.

---

# Resultado esperado

No realices modificaciones.

Entrega únicamente:

1. diagnóstico breve del estado actual del `README.md`;
2. principales problemas encontrados;
3. estructura objetivo propuesta;
4. plan de acción priorizado;
5. acciones aptas para ejecución mecánica con Luna;
6. acciones que requieren revisión humana;
7. información que no pudo verificarse.

---

# Formato de salida

Para minimizar consumo de tokens en pantalla, guarda el análisis completo y el plan en:

```text
docs/README-PLAN.md
```

Sin embargo, recuerda que esta tarea está en modo solo lectura.

Por lo tanto, **no debes crear este archivo en esta ejecución**.

En lugar de crearlo, genera en la salida el contenido completo que debería guardarse posteriormente en:

```text
docs/README-PLAN.md
```

Finaliza mostrando únicamente:

```text
ANÁLISIS COMPLETADO

Archivo sugerido:
docs/README-PLAN.md

Modo:
SOLO LECTURA

Modificaciones realizadas:
NINGUNA

Acciones aptas para Luna:
<N>

Acciones que requieren revisión humana:
<N>
```