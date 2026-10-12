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

`C:\rutinas-local\gen-ai-skills-root\gen-ai-skills\skills\ingenieria-software\instrucciones_base_dev.md`

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

Para cada directorio analiza:

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

## 5. Dependencias

Antes de proponer un cambio de nombre, busca referencias al directorio en:

- código fuente;
- scripts;
- configuraciones;
- variables de entorno;
- archivos YAML/YML;
- JSON;
- TOML;
- XML;
- archivos `.env`;
- documentación;
- notebooks;
- tests;
- pipelines CI/CD;
- Dockerfile;
- Docker Compose;
- tareas de VS Code;
- scripts PowerShell;
- scripts Bash;
- código Python;
- GitHub Actions;
- rutas hardcodeadas.

Clasifica el impacto como:

```text
BAJO
MEDIO
ALTO
```

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

# Salida requerida

Genera un informe estructurado con las siguientes secciones.

## 1. Resumen ejecutivo

Indica:

- convención predominante actual;
- principales inconsistencias;
- idioma predominante;
- estilos de nombres detectados;
- cantidad aproximada de directorios que requieren revisión;
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

Para cada directorio candidato a cambio indica dónde se utiliza.

Ejemplo:

```text
DIRECTORIO:
datos-entrada/

REFERENCIAS:
- src/load_data.py
- config/settings.json
- README.md

IMPACTO:
MEDIO
```

Si no se detectan referencias, indícalo explícitamente.

---

## 5. Plan de acción

Genera acciones independientes y ejecutables manualmente.

Usa exactamente esta estructura:

```text
ACCION-001
Tipo: RENOMBRAR
Origen: datos/
Destino: data/
Impacto: MEDIO

Motivo:
El proyecto utiliza predominantemente inglés técnico y este directorio rompe la convención.

Dependencias:
- src/main.py
- config/settings.json

Cambios posteriores requeridos:
- actualizar ruta en src/main.py
- actualizar ruta en config/settings.json

Validacion:
- comprobar que no existan referencias restantes a "datos/"
- ejecutar pruebas del proyecto
- verificar ejecución principal
```

Continúa secuencialmente:

```text
ACCION-002
ACCION-003
...
```

---

## 6. Estructura objetivo propuesta

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

## 7. Riesgos de migración

Identifica al menos:

- rutas hardcodeadas;
- imports afectados;
- scripts externos;
- configuraciones;
- pipelines;
- referencias documentales;
- incompatibilidades Windows/Linux;
- diferencias de mayúsculas/minúsculas;
- posibles problemas con Git al cambiar únicamente el casing.

---

## 8. Orden recomendado de ejecución

Ordena las acciones considerando dependencias y riesgo.

Prioriza:

```text
1. cambios sin dependencias;
2. cambios de bajo impacto;
3. cambios con pocas referencias;
4. cambios estructurales;
5. cambios de alto impacto.
```

---

# Criterio de mínima intervención

Aplica el principio:

> No renombrar por estética; renombrar cuando mejore de forma verificable la consistencia, comprensión, interoperabilidad o mantenibilidad del proyecto.

Si la estructura actual ya es razonablemente consistente, recomienda conservarla.

---

# Resultado esperado

El resultado debe permitir que otra persona pueda ejecutar manualmente la normalización del proyecto sin necesidad de reinterpretar las recomendaciones.

No realices ninguna modificación sobre el proyecto.