# Objetivo

Analiza la estructura de directorios del proyecto actual y determina si los nombres de carpetas siguen una convención coherente, consistente y mantenible.

El problema principal que se desea detectar y corregir es la mezcla de nombres de directorios en español e inglés, además de inconsistencias de estilo como:

- singular y plural mezclados;
- `snake_case`, `kebab-case`, `camelCase` u otros estilos usados simultáneamente;
- abreviaturas poco claras;
- nombres demasiado genéricos;
- nombres ambiguos respecto de su contenido;
- duplicación conceptual de directorios;
- nombres que no reflejan correctamente su responsabilidad;
- estructuras que se apartan innecesariamente de convenciones habituales en proyectos de software.

El resultado debe ser un **plan de acción para ejecución manual posterior**.

Cada propuesta de renombrado o reubicación debe considerar también todas las referencias existentes hacia las rutas afectadas, de modo que el proyecto pueda continuar funcionando después de ejecutar manualmente los cambios.

---

# Alcance

Revisa recursivamente la estructura de directorios del proyecto.

Considera especialmente carpetas destinadas a:

- código fuente;
- scripts;
- configuración;
- datos de entrada;
- datos procesados;
- resultados;
- logs;
- documentación;
- imágenes y otros recursos;
- notebooks;
- pruebas;
- modelos;
- artefactos;
- archivos temporales;
- caché;
- backups;
- ejemplos;
- herramientas auxiliares.

No evalúes los nombres de archivos de programas o scripts salvo cuando sea necesario para determinar dependencias con un directorio.

Para convenciones relacionadas con código y nombres de archivos, toma como referencia adicional:

```text
C:\rutinas-local\gen-ai-skills-root\gen-ai-skills\skills\ingenieria-software\instrucciones_base_dev.md
```

---

# Convención objetivo

Salvo que exista una razón técnica, normativa o propia del framework para mantener otro nombre, utiliza preferentemente **inglés técnico** para los nombres de directorios.

La convención recomendada debe privilegiar:

1. nombres breves pero explícitos;
2. términos ampliamente utilizados en ingeniería de software;
3. consistencia semántica;
4. facilidad de navegación;
5. compatibilidad multiplataforma;
6. baja ambigüedad;
7. estabilidad futura del nombre.

Como estilo predeterminado para nombres compuestos utiliza:

```text
kebab-case
```

Ejemplos:

```text
input-data
processed-data
output
logs
scripts
docs
tests
config
models
notebooks
assets
```

No fuerces traducciones cuando exista una convención técnica consolidada distinta.

Por ejemplo, nombres estándar o propios de herramientas/frameworks deben conservarse cuando corresponda:

```text
.github
.vscode
src
tests
docs
node_modules
venv
dist
build
public
static
templates
migrations
```

---

# Criterios de evaluación

Para cada directorio analiza los siguientes aspectos.

## 1. Idioma

Clasifica el nombre como:

```text
INGLES
ESPANOL
MIXTO
NEUTRO
ESTANDAR_TECNICO
```

Identifica especialmente mezclas como:

```text
scripts/
datos/
output/
imagenes/
logs/
```

---

## 2. Consistencia de estilo

Determina si el nombre sigue la convención general del proyecto:

```text
kebab-case
snake_case
camelCase
PascalCase
otro
```

---

## 3. Calidad semántica

Evalúa si el nombre:

- describe correctamente su propósito;
- es excesivamente genérico;
- es ambiguo;
- utiliza abreviaturas innecesarias;
- duplica conceptualmente otro directorio;
- podría inducir a errores de interpretación.

Ejemplos problemáticos:

```text
misc
otros
tmp2
cosas
archivos
data-final-final
scripts_varios
resultados_nuevos
```

---

## 4. Convenciones del ecosistema

Antes de recomendar un cambio, determina si el directorio corresponde a una convención establecida por:

- lenguaje;
- framework;
- herramienta;
- sistema de build;
- sistema de testing;
- gestor de paquetes;
- CI/CD;
- IDE;
- infraestructura.

No recomiendes renombrar directorios estándar sin una justificación técnica clara.

---

# Análisis obligatorio de dependencias de rutas

Antes de proponer cualquier:

```text
RENOMBRAR
REUBICAR
FUSIONAR
```

debes localizar todas las referencias conocidas hacia el directorio afectado.

Un cambio de nombre de directorio debe tratarse como una **migración de ruta completa**.

No consideres válida una propuesta de renombrado si el plan no identifica qué referencias deben ser actualizadas posteriormente.

---

## 5. Rutas estáticas o hardcodeadas

Busca rutas escritas directamente en:

- Python;
- PowerShell;
- Bash;
- Batch;
- JavaScript;
- TypeScript;
- Java;
- C#;
- SQL;
- notebooks;
- otros lenguajes presentes en el proyecto.

Ejemplos:

```python
Path("datos/entrada")
open("logs/app.log")
```

```powershell
$logPath = ".\logs"
$dataPath = "C:\proyecto\datos"
```

```bash
INPUT_DIR="./datos"
```

---

## 6. Construcción dinámica de rutas

No limites el análisis a coincidencias textuales completas.

Busca también rutas construidas mediante:

- concatenación;
- variables;
- constantes;
- funciones auxiliares;
- `os.path`;
- `pathlib`;
- variables de entorno;
- parámetros CLI;
- configuración externa;
- directorio de trabajo actual.

Ejemplos:

```python
BASE_DIR / "datos" / "entrada"
```

```python
os.path.join(ROOT_DIR, "resultados")
```

```powershell
Join-Path $ProjectRoot "logs"
```

---

## 7. Archivos de configuración

Busca referencias en:

```text
*.json
*.yaml
*.yml
*.toml
*.ini
*.cfg
*.conf
*.xml
*.properties
*.env
*.env.*
```

También revisa configuraciones específicas de frameworks o herramientas presentes en el proyecto.

---

## 8. Automatización e infraestructura

Busca referencias en:

- `.github/workflows/`;
- Jenkinsfiles;
- pipelines CI/CD;
- Dockerfile;
- Docker Compose;
- Makefile;
- scripts de build;
- scripts de despliegue;
- tareas de VS Code;
- configuraciones de depuración;
- pre-commit hooks;
- cron;
- systemd;
- Terraform;
- Ansible;
- otros mecanismos de automatización detectados.

---

## 9. Archivos de documentación

Busca referencias en:

- `README.md`;
- `AGENTS.md`;
- documentación bajo `/docs`;
- `CONTRIBUTING.md`;
- `CHANGELOG.md`;
- ejemplos;
- tutoriales;
- comentarios técnicos relevantes;
- instrucciones operativas.

Distingue entre:

```text
REFERENCIA_EJECUTABLE
REFERENCIA_CONFIGURACION
REFERENCIA_DOCUMENTAL
```

Las referencias documentales no suelen romper la ejecución, pero deben quedar consideradas para evitar documentación obsoleta.

---

## 10. Imports y módulos

Evalúa si el cambio de directorio puede afectar:

- imports Python;
- paquetes Python;
- `PYTHONPATH`;
- módulos Node.js;
- `package.json`;
- aliases;
- classpaths;
- módulos Java;
- namespaces;
- mecanismos equivalentes en el lenguaje utilizado.

No asumas que un cambio de nombre de carpeta afecta solamente rutas de archivos.

---

## 11. Archivos externos al directorio modificado

Busca referencias desde otras partes del proyecto.

Por ejemplo, si se propone:

```text
datos/
→
data/
```

debes comprobar si existen referencias como:

```text
src/main.py
scripts/import-data.py
config/settings.json
tests/test_loader.py
README.md
.vscode/tasks.json
.github/workflows/pipeline.yml
```

---

# Clasificación de referencias encontradas

Para cada referencia detectada clasifícala como:

```text
CODIGO
SCRIPT
CONFIGURACION
AUTOMATIZACION
TEST
DOCUMENTACION
NOTEBOOK
OTRO
```

Y determina su criticidad:

```text
CRITICA
FUNCIONAL
DOCUMENTAL
```

Definiciones:

### CRITICA

La referencia puede impedir que el programa, pipeline, despliegue o proceso principal funcione.

### FUNCIONAL

La referencia afecta una funcionalidad secundaria, script auxiliar, test o proceso específico.

### DOCUMENTAL

La referencia no afecta directamente la ejecución, pero quedaría desactualizada.

---

# Matriz de migración de rutas

Para cada directorio candidato a cambio genera una matriz:

| Ruta actual | Ruta propuesta | Archivo afectado | Tipo | Referencia encontrada | Cambio requerido | Criticidad |
|---|---|---|---|---|---|---|

Ejemplo:

| Ruta actual | Ruta propuesta | Archivo afectado | Tipo | Referencia encontrada | Cambio requerido | Criticidad |
|---|---|---|---|---|---|---|
| `datos/` | `data/` | `src/main.py` | CODIGO | `Path("datos")` | cambiar a `Path("data")` | CRITICA |
| `datos/` | `data/` | `config/settings.json` | CONFIGURACION | `"input_dir": "datos"` | cambiar valor | CRITICA |
| `datos/` | `data/` | `README.md` | DOCUMENTACION | `datos/entrada` | actualizar ejemplo | DOCUMENTAL |

---

# Evaluación de impacto

Clasifica cada cambio de directorio como:

```text
BAJO
MEDIO
ALTO
CRITICO
```

## BAJO

No existen referencias o solo existen referencias documentales.

## MEDIO

Existen pocas referencias simples y localizadas.

## ALTO

Existen múltiples referencias en código, configuración, tests o automatización.

## CRITICO

El cambio afecta componentes centrales, pipelines, despliegues, rutas externas, integraciones o múltiples subsistemas.

---

# Restricciones

Trabaja exclusivamente en **modo solo lectura**.

No:

- crees directorios;
- renombres directorios;
- muevas archivos;
- modifiques archivos;
- elimines archivos;
- apliques parches;
- realices commits;
- ejecutes comandos con efectos secundarios.

Puedes utilizar comandos de inspección en modo solo lectura cuando sean necesarios para identificar referencias y dependencias.

No propongas un cambio únicamente porque una carpeta esté en español.

Cada recomendación debe estar respaldada por:

1. coherencia global;
2. semántica;
3. convenciones técnicas;
4. dependencias detectadas;
5. beneficio concreto del cambio.

Evita cambios cosméticos cuyo costo de migración sea superior al beneficio.

---

# Clasificación de decisiones

Para cada directorio utiliza una de estas decisiones:

```text
MANTENER
RENOMBRAR
REUBICAR
FUSIONAR
REVISAR
```

`REVISAR` debe utilizarse cuando no exista evidencia suficiente para recomendar una modificación.

---

# Principio de atomicidad

Cuando un directorio deba cambiar de nombre, considera el renombrado y la actualización de todas sus referencias como una sola **unidad lógica de migración**.

Por ejemplo:

```text
datos/
→
data/
```

no debe representarse únicamente como:

```text
renombrar datos/ a data/
```

Debe incluir como mínimo:

```text
1. renombrar datos/ → data/
2. modificar referencias en código;
3. modificar scripts;
4. modificar configuración;
5. modificar tests;
6. modificar automatizaciones;
7. actualizar documentación;
8. verificar que no existan referencias antiguas;
9. ejecutar validaciones funcionales.
```

---

# Salida requerida

Genera un informe estructurado con las siguientes secciones.

## 1. Resumen ejecutivo

Indica:

- convención predominante actual;
- principales inconsistencias;
- idioma predominante;
- estilos de nombres detectados;
- cantidad aproximada de directorios que requieren revisión;
- cantidad de referencias de rutas detectadas;
- nivel general de impacto de una eventual normalización.

---

## 2. Convención recomendada

Define brevemente la convención que debería adoptar el proyecto.

Ejemplo:

```text
Idioma: inglés técnico
Estilo: kebab-case
Número: preferir plural para colecciones cuando corresponda
Abreviaturas: evitar salvo términos ampliamente aceptados
Directorios estándar de herramientas: conservar
```

Justifica cualquier excepción.

---

## 3. Inventario de directorios

Utiliza una tabla:

| Ruta actual | Propósito inferido | Idioma | Estilo | Decisión | Nombre propuesto | Impacto |
|---|---|---|---|---|---|---|

No propongas cambios innecesarios.

---

## 4. Dependencias detectadas

Para cada directorio candidato a cambio indica todas las referencias encontradas.

Ejemplo:

```text
DIRECTORIO ACTUAL:
datos/

DIRECTORIO PROPUESTO:
data/

REFERENCIAS:
- src/main.py
- src/config.py
- scripts/import-data.py
- config/settings.json
- tests/test_loader.py
- README.md

REFERENCIAS CRITICAS:
- src/main.py
- config/settings.json

REFERENCIAS FUNCIONALES:
- scripts/import-data.py
- tests/test_loader.py

REFERENCIAS DOCUMENTALES:
- README.md

IMPACTO:
ALTO
```

Si no se detectan referencias, indícalo explícitamente.

---

## 5. Matriz de migración

Incluye para cada cambio:

| Ruta actual | Ruta nueva | Archivo afectado | Referencia actual | Cambio requerido | Criticidad |
|---|---|---|---|---|---|

Esta matriz debe permitir saber exactamente qué archivos deberán modificarse después de cambiar el nombre del directorio.

---

## 6. Plan de acción

Genera acciones independientes y ejecutables manualmente.

Usa la siguiente estructura:

```text
ACCION-001

Tipo:
MIGRACION_DE_RUTA

Origen:
datos/

Destino:
data/

Impacto:
ALTO

Motivo:
El proyecto utiliza predominantemente inglés técnico y este directorio rompe la convención general.

Archivos afectados:
- src/main.py
- src/config.py
- scripts/import-data.py
- config/settings.json
- tests/test_loader.py
- README.md

Cambios requeridos:

1. Renombrar:
   datos/
   →
   data/

2. Modificar src/main.py:
   referencia actual:
   Path("datos")

   referencia propuesta:
   Path("data")

3. Modificar config/settings.json:
   referencia actual:
   "input_dir": "datos"

   referencia propuesta:
   "input_dir": "data"

4. Modificar scripts/import-data.py:
   actualizar referencias hacia datos/.

5. Modificar tests/test_loader.py:
   actualizar fixtures o rutas utilizadas por las pruebas.

6. Actualizar README.md:
   reemplazar referencias documentales hacia datos/.

Validacion:

1. buscar nuevamente referencias a:
   datos/
   "datos"
   \datos\
   /datos/

2. comprobar que no queden rutas obsoletas;

3. ejecutar pruebas automatizadas;

4. ejecutar el flujo principal del proyecto;

5. comprobar generación de archivos de salida;

6. verificar scripts auxiliares;

7. verificar pipelines o automatizaciones relacionadas.
```

Continúa secuencialmente:

```text
ACCION-002
ACCION-003
...
```

---

# Regla sobre modificaciones de archivos

El plan debe indicar explícitamente qué archivos deben modificarse, pero **no debe modificarlos**.

Para cada archivo afectado indica, cuando sea posible:

```text
archivo
ubicación aproximada
referencia actual
referencia propuesta
motivo
criticidad
```

Si no puede determinarse con seguridad el cambio exacto, utiliza:

```text
REQUIERE_REVISION_MANUAL
```

No inventes contenido ni líneas inexistentes.

---

# Verificación de referencias residuales

Después de cada migración propuesta, incluye una acción de búsqueda global para localizar referencias residuales.

Considera variantes como:

```text
datos/
datos\
/datos/
\datos\
"datos"
'datos'
```

También considera:

- rutas absolutas;
- rutas relativas;
- variables;
- concatenaciones;
- diferencias entre `/` y `\`;
- diferencias de mayúsculas/minúsculas.

---

# Rutas absolutas

Presta especial atención a rutas como:

```text
C:\proyecto\datos
C:\rutinas-local\proyecto\logs
/home/user/project/data
```

Si el directorio cambia de nombre, identifica todas las rutas absolutas que deben actualizarse.

Marca estas referencias como mínimo con impacto:

```text
ALTO
```

si pueden existir también fuera del repositorio.

---

# Referencias externas

Si existe evidencia de que una ruta puede ser utilizada por:

- otro proyecto;
- una tarea programada;
- otro repositorio;
- una aplicación externa;
- un servicio;
- un proceso operativo;
- un script fuera del proyecto;

indica:

```text
DEPENDENCIA_EXTERNA_POSIBLE
```

No asumas que puedes localizarla completamente dentro del repositorio.

---

# 7. Estructura objetivo propuesta

Presenta un árbol resumido con la estructura recomendada después de ejecutar todas las acciones.

Ejemplo:

```text
project/
├── config/
├── data/
│   ├── raw/
│   ├── interim/
│   └── processed/
├── docs/
├── logs/
├── notebooks/
├── output/
├── scripts/
├── src/
└── tests/
```

No inventes directorios que el proyecto no necesite.

---

# 8. Riesgos de migración

Identifica al menos:

- rutas hardcodeadas;
- rutas absolutas;
- construcción dinámica de rutas;
- imports afectados;
- scripts externos;
- archivos de configuración;
- pipelines;
- tests;
- referencias documentales;
- incompatibilidades Windows/Linux;
- diferencias entre `/` y `\`;
- diferencias de mayúsculas/minúsculas;
- posibles problemas con Git al cambiar únicamente el casing;
- dependencias externas no visibles desde el repositorio.

---

# 9. Orden recomendado de ejecución

Ordena las acciones considerando dependencias y riesgo.

Prioriza:

```text
1. cambios sin dependencias;
2. cambios de bajo impacto;
3. cambios con pocas referencias;
4. cambios con referencias controladas;
5. cambios estructurales;
6. cambios de alto impacto;
7. cambios con posibles dependencias externas.
```

Cuando varias acciones estén relacionadas, especifica explícitamente el orden en que deben ejecutarse.

---

# Criterio de mínima intervención

Aplica el principio:

> No renombrar por estética; renombrar cuando mejore de forma verificable la consistencia, comprensión, interoperabilidad o mantenibilidad del proyecto.

Si la estructura actual ya es razonablemente consistente, recomienda conservarla.

---

# Criterio de seguridad funcional

Una recomendación de cambio de directorio se considera incompleta si no incluye una evaluación de las referencias hacia la ruta modificada.

El objetivo no es solamente obtener una estructura de directorios más consistente, sino preservar el comportamiento del proyecto después de la migración.

Por lo tanto:

```text
RENOMBRAR DIRECTORIO
+
ACTUALIZAR REFERENCIAS
+
VALIDAR
=
MIGRACION COMPLETA
```

---

# Resultado esperado

El resultado debe permitir que otra persona pueda ejecutar manualmente la normalización del proyecto de forma mecánica y controlada.

El plan debe indicar:

```text
qué directorio cambiar
a qué nombre cambiarlo
por qué cambiarlo
qué archivos dependen de él
qué referencias deben modificarse
qué validaciones realizar
qué riesgos existen
en qué orden ejecutar los cambios
```

No realices ninguna modificación sobre el proyecto.