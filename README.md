# Gen AI Skills

Colección de instrucciones especializadas para asistentes de IA. El repositorio mantiene instrucciones reutilizables, modulares y auditables para distintos dominios y modelos.

## Objetivo

La biblioteca permite cargar solo los archivos necesarios según la tarea, sin mezclar áreas ni saturar el contexto del modelo.

## Estructura

```text
gen-ai-skills/
|-- docs/          # continuidad, auditorías, planes y reportes
|-- examples/      # paquetes y ejemplos de referencia
|-- prompts/       # prompts de tareas y fases del workflow
|-- skills/        # dominios reutilizables
|   `-- <dominio>/
|       |-- README.md
|       |-- instrucciones_base_*.md
|       |-- *_reglas.md
|       |-- checklist_*.md
|       `-- ...
|-- templates/     # plantillas de salida o adaptación
|-- workflows/     # workflows documentados
`-- checklists/    # directorio reservado para checklists
```

## Uso recomendado

- Para un dominio Markdown simple, cargar el `README.md` del dominio, su archivo `instrucciones_base_*.md`, el módulo específico necesario y el checklist al cierre o cuando la tarea lo requiera.
- Para un dominio compuesto, cargar su router o `README.md`, una skill primaria y solo las dependencias cuyo trigger sea necesario.
- Para dominios sensibles como medicina, bienestar, derecho, seguridad o finanzas, mantener siempre las reglas de prudencia, derivación y límites profesionales.

## Dominios

Los dominios principales viven en `skills/`:

- `academia`
- `arte-musical`
- `bienestar`
- `ciencia-ingenieria-datos`
- `derecho`
- `desarrollo-humano`
- `desarrollo-ia`
- `economia-finanzas`
- `filosofia`
- `fotografias`
- `geoespacial` (dominio compuesto)
- `historia`
- `ingenieria-software`
- `investigacion-ia`
- `investigacion-general`
- `lenguaje-castellano`
- `medicina`
- `operaciones-tecnologia`
- `precheck-publica-repo`
- `seguridad-appsec`
- `seguridad-opsec`
- `vision-por-computadora`

## Workflow de mantenimiento

El flujo vigente parte de [`prompts/GUIA_EJECUCION_PROMPTS.md`](prompts/GUIA_EJECUCION_PROMPTS.md); fases, prompts y gates están documentados en [`workflows/workflow_skills_dominio_v1.1.md`](workflows/workflow_skills_dominio_v1.1.md).

## Documentación adicional

- [`CONTRIBUTING.md`](CONTRIBUTING.md): reglas de contribución, diseño de dominios y flujo de cambios.
- [`SECURITY.md`](SECURITY.md): límites de seguridad y tratamiento de contenido externo.
- [`docs/`](docs/): contexto operacional, auditorías y planes por dominio.
