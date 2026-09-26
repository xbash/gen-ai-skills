# Objetivo

Analiza el proyecto para identificar archivos y directorios potencialmente residuales, obsoletos, duplicados o generados durante iteraciones anteriores.

Genera un plan de acción para su eventual limpieza, sin modificar el repositorio.

# Alcance

Revisa especialmente:

- archivos temporales o de uso único;
- análisis, planes, borradores y reportes antiguos;
- documentación obsoleta;
- respaldos o versiones duplicadas;
- salidas generadas;
- scripts aparentemente sin uso;
- directorios creados durante pruebas o iteraciones con agentes/LLM.

# Criterios

Para cada candidato verifica, cuando sea posible:

- referencias desde código, scripts, configuración, tests o documentación;
- uso en workflows o procesos operativos;
- dependencias;
- existencia de información única;
- valor técnico, histórico u operacional;
- existencia de una versión vigente equivalente.

Clasifica cada elemento como:

- `MANTENER`;
- `REVISAR`;
- `ELIMINAR_PROPUESTO`;
- `MOVER_O_ARCHIVAR_PROPUESTO`;
- `NO_DETERMINADO`.

No clasifiques un elemento como eliminable únicamente por su nombre, ubicación o antigüedad.

# Restricciones

Trabaja exclusivamente en modo solo lectura.

No crees, modifiques, muevas, renombres ni elimines archivos o directorios.

No ejecutes comandos con efectos secundarios sobre el repositorio.

Ante incertidumbre relevante, prioriza revisión humana.

# Salida

Entrega:

1. resumen de hallazgos;
2. matriz:

`Ruta | Tipo | Uso actual | Evidencia | Clasificación | Riesgo | Acción propuesta`

3. plan de acción priorizado;
4. casos ambiguos o que requieren revisión humana.

No ejecutes ninguna acción propuesta.