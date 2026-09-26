# Reglas específicas — Notebooks reproducibles

## Alcance

USAR CUANDO: se construyan, documenten o entreguen notebooks Jupyter o Quarto como artefactos reproducibles de un pipeline de datos, análisis o validación metodológica.

NO USAR CUANDO: el notebook sea solo exploración efímera sin intención de compartir ni reproducir.

## Diseño del notebook como artefacto

- Tratar el notebook como documento ejecutable: debe correr de principio a fin en un kernel limpio (`Kernel > Restart & Run All`) sin errores y producir el mismo resultado.
- Separar responsabilidades: un notebook por etapa lógica del pipeline (ingesta, preprocesamiento, análisis, validación), no un notebook monolítico con todo.
- El primer bloque debe declarar: propósito, entradas requeridas, salidas esperadas y versión del notebook.
- El último bloque debe verificar: que los artefactos de salida existen y tienen el formato esperado.

## Estructura recomendada

1. **Encabezado**: propósito, autor, fecha, versión, entradas y salidas.
2. **Configuración**: importaciones, rutas, parámetros y constantes. Agrupar todo aquí para facilitar parametrización.
3. **Carga de datos**: leer desde rutas declaradas, no hardcodeadas en el medio del notebook.
4. **Procesamiento**: celdas con propósito claro; cada celda hace una cosa.
5. **Validación**: comprobar resultados intermedios y finales con afirmaciones explícitas (`assert`, checks de shape, conteos, rangos).
6. **Salida**: escribir artefactos en rutas declaradas; registrar tamaño, forma y metadatos básicos.

## Parametrización con Papermill

Para ejecutar el mismo notebook con distintos parámetros (ej. distintas comunas, períodos o resoluciones), usar Papermill:
- Marcar la celda de parámetros con el tag `parameters`.
- Ejecutar desde CLI: `papermill notebook_entrada.ipynb notebook_salida.ipynb -p comuna "Las Cabras" -p resolucion 200`.
- Los notebooks parametrizados permiten ejecutar el pipeline completo de forma automática y trazable.

## Quarto para documentos ejecutables

Quarto permite combinar código Python/R con prosa y exportar a HTML, PDF o sitio web. Útil para reportes metodológicos que mezclan explicación y código ejecutable. Usar cuando el entregable sea un documento académico o técnico que deba ser ejecutable y presentable.

## Reproducibilidad

- Fijar semillas aleatorias cuando el análisis las use (`random.seed`, `np.random.seed`).
- Declarar el entorno en un archivo externo (requirements.txt o environment.yml); no instalar dependencias con `!pip install` dentro del notebook salvo en etapa de setup inicial documentada.
- Antes de hacer commit, limpiar outputs: `jupyter nbconvert --clear-output notebook.ipynb` o usar nbstripout como hook de Git. Los outputs binarios en Git aumentan el tamaño del repositorio y dificultan los diffs.
- Versionar el notebook limpio (sin outputs) en Git; los outputs se regeneran ejecutando el notebook.

## Prueba mínima

Ejecutar `papermill notebook.ipynb /dev/null` (o equivalente en Windows) para verificar que corre sin errores en kernel limpio. Documentar el tiempo de ejecución esperado.

## Validación mínima

- El notebook corre de principio a fin en kernel limpio sin errores.
- Parámetros y rutas declarados al inicio, no dispersos.
- Artefactos de salida verificados al final.
- Entorno declarado en archivo externo.
- Notebook commiteado sin outputs.
