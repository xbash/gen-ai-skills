Analiza el proyecto:

`C:\rutinas-local\gen-container\gen-ai-bigdata-poc`

Objetivo: identificar archivos y directorios residuales generados durante iteraciones de desarrollo, especialmente artefactos de uso único creados por modelos de IA: análisis, planes, borradores, reportes, archivos temporales y documentación obsoleta.

Verifica para cada candidato si:
- es referenciado o utilizado actualmente;
- participa en código, scripts, configuración, tests, documentación o flujos operativos;
- conserva valor histórico, técnico u operacional;
- corresponde a un artefacto temporal o de una iteración ya finalizada.

Clasifica cada elemento como `MANTENER`, `REVISAR` o `ELIMINAR`.

Genera el análisis completo y el plan de acción en:

`<proyecto>\docs\AUDITORIA_LIMPIEZA_PROYECTO.md`

El archivo debe contener una matriz:

`Ruta | Tipo | Uso actual | Evidencia | Propósito original | Clasificación | Riesgo | Acción propuesta`

Incluye al final un resumen con:
- cantidad de elementos por categoría;
- principales residuos detectados;
- casos ambiguos que requieran decisión humana.

**No modifiques, muevas ni elimines archivos o directorios.**

En pantalla no muestres el análisis completo. Solo informa que la auditoría fue generada e indica la ruta del archivo.

Después, espera mi **“palabra mágica”** antes de ejecutar cualquier cambio.