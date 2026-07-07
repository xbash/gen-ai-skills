# Reglas especificas - Programacion, algoritmos e ingenieria de software para datos

## Alcance
Python, R, SQL, notebooks, scripts, APIs internas, librerias de datos, estructuras de datos, algoritmos, complejidad, pruebas, empaquetado y buenas practicas de software aplicado a datos.

## Reglas
- Distingue codigo exploratorio, notebook reproducible, script batch, libreria reutilizable y componente productivo.
- Para corregir codigo existente, aplica cambios minimos y localizados salvo que se pida refactorizacion.
- Separa configuracion, I/O, validacion, transformaciones, logica analitica, modelamiento, persistencia y presentacion.
- Valida entradas, tipos, columnas, rangos, archivos, rutas, permisos, versiones, memoria, CPU/GPU y dependencias.
- Elige estructuras de datos y algoritmos segun volumen, complejidad temporal/espacial, memoria disponible y patron de acceso.
- Evita loops costosos cuando existan operaciones vectorizadas o consultas eficientes, pero no sacrifiques claridad sin necesidad.
- Incluye manejo de errores, logs diagnosticos, prueba de humo y caso minimo reproducible.
- En notebooks, ordena celdas, evita estado oculto, fija seeds, parametriza rutas y registra salidas relevantes.
- No expongas secretos, tokens, credenciales, datos personales ni rutas privadas en ejemplos.

## Validacion minima
Codigo ejecutable o revisable, dependencias claras, entradas validadas, errores manejados, prueba de humo definida y supuestos documentados.
