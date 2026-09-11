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
- `SKILL.md` no es un requisito de uniformidad: se usa solo cuando existe un beneficio concreto y está respaldado por el diseño del dominio.
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

## Skills operacionales

- `precheck-publica-repo`: revisión previa a publicar repositorios en GitHub u otros remotos públicos, con foco en secretos, datos privados, artefactos locales, licencias y readiness documental.

## Convención de dominios

Los dominios Markdown simples suelen incluir:

- `README.md`: descripción, mapa de archivos, recomendación de uso y principios.
- `instrucciones_base_*.md`: rol, alcance, límites, estilo y formato.
- `*_reglas.md`: reglas específicas por subtema.
- `checklist_*.md`: checklist operacional o metodológico.

Los dominios compuestos pueden usar otra estructura cuando sus responsabilidades y triggers lo justifiquen. `skills/geoespacial/README.md` documenta su router, sus skills CORE y sus skills SPECIALIZED.

## Workflow de mantenimiento

El flujo vigente es: precheck → diseño o auditoría → plan congelado → ejecución → validación → auditoría post-refactor o cierre. El Planner define y congela el plan; el Executor aplica únicamente acciones autorizadas; el Validator comprueba criterios, referencias, trazabilidad y estado final.

Las fases, prompts y gates están documentados en [`workflows/workflow_skills_dominio_v1.md`](workflows/workflow_skills_dominio_v1.md) y [`prompts/GUIA_EJECUCION_PROMPTS.md`](prompts/GUIA_EJECUCION_PROMPTS.md). Los cambios de alto impacto, baja confianza o contradicción significativa requieren el gate definido para Terra High.

## Criterios de calidad

- No inventar fuentes, citas, datos, leyes, guías, benchmarks ni resultados.
- Separar hechos, supuestos, interpretaciones, recomendaciones y limitaciones.
- Mantener instrucciones concisas, accionables y no redundantes.
- Declarar límites profesionales en áreas sensibles.
- Preferir reglas específicas y checklists sobre textos enciclopédicos.
- Preservar la trazabilidad y validar rutas, referencias y criterios de aceptación.
- Mantener los archivos de texto en UTF-8, LF y con newline final, según `.editorconfig` y `.gitattributes`.
