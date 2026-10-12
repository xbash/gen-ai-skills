## Objetivo

Revisa el programa ubicado en:

`C:\rutinas-local\gen-ai-app\busca-articulos-incendios\run_literature_review\.py`

y evalúa su alineación con las buenas prácticas definidas en:

`C:\rutinas-local\gen-ai-skills-root\gen-ai-skills\skills\ingenieria-software\instrucciones_base_dev.md`

Usa `instrucciones_base_dev.md` como **fuente de verdad principal**.

El objetivo es identificar incumplimientos, desviaciones, oportunidades de mejora y prácticas correctamente implementadas, sin modificar el código.

## Alcance del análisis

Evalúa únicamente aspectos que sean pertinentes al programa y estén respaldados por la skill, incluyendo cuando corresponda:

- estructura y modularización;
- separación de responsabilidades;
- configuración versus lógica;
- validación de entradas;
- manejo de errores y excepciones;
- logging y observabilidad;
- legibilidad y mantenibilidad;
- duplicación y complejidad innecesaria;
- nombres de funciones, variables, clases y módulos;
- documentación mínima necesaria;
- gestión de dependencias y recursos;
- testabilidad;
- seguridad y manejo de información sensible;
- portabilidad y robustez operacional.

No propongas cambios puramente estilísticos si no aportan mantenibilidad, robustez o cumplimiento de la skill.

## Criterios

Para cada hallazgo:

1. indica qué principio o regla de `instrucciones_base_dev.md` aplica;
2. señala la evidencia concreta encontrada en el programa;
3. distingue entre:
   - incumplimiento;
   - mejora recomendada;
   - práctica correcta;
   - no aplicable;
4. evita asumir requisitos que no estén definidos por la skill o que no sean necesarios para este programa;
5. prioriza los cambios según impacto real.

## Restricciones

Trabaja exclusivamente en modo **solo lectura**.

No:

- crees archivos;
- modifiques archivos;
- muevas, renombres o elimines archivos o directorios;
- apliques parches;
- ejecutes commits;
- ejecutes comandos con efectos secundarios.

No modifiques `README.md` ni ningún otro archivo.

## Salida

Genera un diagnóstico breve y un plan de acción suficientemente preciso para poder implementarlo posteriormente de forma mecánica.

### 1. Diagnóstico

Resume:

- nivel general de alineación con la skill;
- principales fortalezas;
- principales desviaciones;
- riesgos técnicos relevantes.

No asignes puntuaciones numéricas salvo que exista una métrica explícitamente definida en la skill.

### 2. Hallazgos

Para cada hallazgo indica:

```text
HALLAZGO-NN
Severidad: ALTA | MEDIA | BAJA
Estado: INCUMPLIMIENTO | MEJORA | CORRECTO | NO_APLICA
Regla o principio:
Evidencia:
Impacto:
Recomendación:
```

### 3. Plan de acción

Solo genera acciones para hallazgos que requieran cambios.

Usa exactamente este formato:

```text
ACCION-NN
Prioridad: P0 | P1 | P2 | P3
Tipo: AGREGAR | MODIFICAR | ELIMINAR | REORDENAR
Ubicación:
Acción:
Fuente de verdad:
Validación:
Requiere revisión humana: SÍ | NO
```

Criterio de prioridad:

- `P0`: defecto crítico, riesgo de seguridad, pérdida de datos o fallo operacional grave;
- `P1`: problema importante de robustez, mantenibilidad o diseño;
- `P2`: mejora relevante pero no urgente;
- `P3`: mejora menor o de calidad interna.

### 4. Incertidumbres

Indica únicamente decisiones que no puedan resolverse de forma objetiva a partir del programa y de `instrucciones_base_dev.md`.

No propongas modificaciones cuando falte evidencia suficiente.