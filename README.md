# Gen AI Skills

Colección de instrucciones especializadas para asistentes de IA. El repositorio mantiene instrucciones reutilizables, modulares y auditables para distintos dominios y modelos.

## Objetivo

La biblioteca permite cargar solo los archivos necesarios según la tarea, sin mezclar áreas ni saturar el contexto del modelo.

## Conceptos clave

| Artefacto | Función |
|---|---|
| **skill** | Instrucciones especializadas para un dominio; se cargan selectivamente según la tarea |
| **workflow** | Secuencia de pasos para un proceso de múltiples fases |
| **template** | Estructura de salida adaptada por plataforma o tipo de artefacto |
| **checklist** | Criterios de verificación de calidad o cierre |
| **prompt** | Solicitud reutilizable para una fase o tarea concreta |
| **example** | Implementación de referencia para una plataforma o caso de uso específico |

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
`-- checklists/    # en desarrollo (vacío actualmente)
```

## Uso básico

1. **Elige un dominio** en `skills/` y lee su `README.md` para entender qué módulos incluye y cuándo cargar cada uno.
2. **Carga las instrucciones base** del dominio (`instrucciones_base_*.md`). Establecen el comportamiento general.
3. **Agrega el módulo específico** que necesitas para la tarea concreta (p. ej. un archivo `*_reglas.md` o un `SKILL.md`).
4. **Usa el checklist** al cerrar o revisar (`checklist_*.md`).

**Ejemplo — dominio `academia`:**

```
skills/academia/README.md                        ← punto de entrada
skills/academia/instrucciones_base_academia.md   ← instrucciones base
skills/academia/analisis_notebook_ia.md          ← módulo específico
skills/academia/checklist_revision_notebook.md   ← cierre
```

Para dominios compuestos (`geoespacial`, `desarrollo-ia`), el `README.md` del dominio actúa como router e indica qué subdirectorios y skills cargar.

Para dominios sensibles (medicina, bienestar, derecho, seguridad, finanzas), los módulos incluyen reglas de prudencia, derivación y límites profesionales que deben mantenerse activos.

## Dominios

Los dominios principales viven en `skills/`:

- `academia`
- `arte-musical`
- `bienestar`
- `ciencia-ingenieria-datos`
- `derecho`
- `desarrollo-humano`
- `desarrollo-ia` (dominio compuesto)
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

## Templates por plataforma

[`templates/`](templates/) contiene plantillas de carga adaptadas a cada plataforma:

- [`claude.md`](templates/claude.md)
- [`chatgpt.md`](templates/chatgpt.md)
- [`gemini.md`](templates/gemini.md)
- [`ollama.md`](templates/ollama.md)
- [`lmstudio.md`](templates/lmstudio.md)
- [`openwebui.md`](templates/openwebui.md)

## Ejemplos

[`examples/`](examples/) contiene paquetes de integración para plataformas específicas. Ver [`examples/README.md`](examples/README.md).

## Documentación adicional

- [`CONTRIBUTING.md`](CONTRIBUTING.md): reglas de contribución, diseño de dominios y flujo de cambios.
- [`SECURITY.md`](SECURITY.md): límites de seguridad y tratamiento de contenido externo.
- [`docs/`](docs/): auditorías, planes, estados y reportes por dominio. Subdirectorios: `archivos/` (auditorías iniciales), `dominios/` (seguimiento por dominio), `eliminar/` (archivos pendientes de eliminación).

## Workflow de mantenimiento

Esta sección es para mantenedores y contribuidores. El flujo vigente parte de [`prompts/GUIA_EJECUCION_PROMPTS.md`](prompts/GUIA_EJECUCION_PROMPTS.md); fases, prompts y gates están documentados en [`workflows/workflow_skills_dominio_v1.1.md`](workflows/workflow_skills_dominio_v1.1.md).
