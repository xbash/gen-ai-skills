# Reglas específicas — CLI y scripts de pipeline reproducible

## Alcance

USAR CUANDO: se construyan scripts o herramientas de línea de comandos para ejecutar un pipeline de datos de forma reproducible, parametrizable y trazable.

NO USAR CUANDO: la tarea sea solo exploración interactiva, un backend web o un servicio de larga duración.

## Diseño del script como herramienta reproducible

Un script de pipeline debe comportarse como una función determinista: dadas las mismas entradas y parámetros, produce el mismo resultado. Diseñar con esto como invariante.

- Separar entradas (datos, parámetros), lógica de procesamiento y salidas (artefactos, logs) desde el inicio.
- Un script por etapa del pipeline (ingesta, preprocesamiento, integración, etiquetado, exportación). No un único script que hace todo.
- Cada script debe poder ejecutarse de forma independiente y en secuencia con los demás.

## Interfaz de línea de comandos

Usar una librería de CLI en lugar de leer parámetros con `sys.argv` directo:
- **Click** o **Typer**: recomendados para pipelines de datos; generan help automático, validan tipos y soportan subcomandos.
- **argparse**: estándar de la librería de Python; adecuado para scripts simples.

Ejemplo mínimo con Typer:
```python
import typer

app = typer.Typer()

@app.command()
def ejecutar(
    comuna: str = typer.Option(..., help="Nombre de la comuna"),
    resolucion: int = typer.Option(200, help="Resolución espacial en metros"),
    salida: str = typer.Option("output/", help="Directorio de salida")
):
    ...

if __name__ == "__main__":
    app()
```

## Configuración y parámetros

- Separar parámetros que cambian entre ejecuciones (comuna, período, resolución) de rutas y configuración de entorno.
- Para pipelines complejos, usar un archivo de configuración (YAML o TOML) además de los argumentos CLI. El CLI puede apuntar al archivo de configuración: `--config config.yaml`.
- No hardcodear rutas absolutas, credenciales ni parámetros de negocio en el código.

## Idempotencia y trazabilidad

- El script debe poder ejecutarse múltiples veces sin corromper los resultados anteriores. Estrategias: escribir en directorios con versión o timestamp, o verificar si el artefacto de salida ya existe y decidir explícitamente si sobreescribir.
- Registrar en log: parámetros de entrada, ruta de salida, tiempo de ejecución y resultado (éxito o error con mensaje). Usar el módulo `logging` de Python, no `print`.
- Registrar versión del script o del pipeline en los artefactos de salida (ej. en metadatos del archivo o en un archivo `run_info.json`).

## Códigos de salida y manejo de errores

- Retornar código 0 en éxito y código distinto de 0 en error. Esto permite encadenar scripts en un pipeline shell o un orquestador.
- Capturar excepciones esperables (archivo no encontrado, columna faltante, cobertura insuficiente) y emitir un mensaje claro antes de terminar con error.
- No usar `sys.exit()` en medio de la lógica; propagar excepciones hasta el punto de entrada y manejarlas allí.

## Encadenamiento de scripts

Para ejecutar el pipeline completo en orden, usar un script orquestador o un Makefile:

```makefile
pipeline:
    python 01_ingesta.py --config config.yaml
    python 02_preprocesamiento.py --config config.yaml
    python 03_integracion.py --config config.yaml
    python 04_etiquetado.py --config config.yaml
    python 05_exportacion.py --config config.yaml
```

Un Makefile tiene la ventaja de registrar dependencias entre pasos y solo re-ejecutar lo que cambió.

## Validación mínima

- El script acepta `--help` y describe sus parámetros.
- Ejecutar con parámetros mínimos produce el artefacto de salida esperado.
- Ejecutar dos veces seguidas no corrompe el resultado.
- Los errores esperables producen mensaje claro y código de salida distinto de 0.
- El log registra parámetros y resultado de la ejecución.
