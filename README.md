# Gen AI Skills

Coleccion de instrucciones especializadas para asistentes de IA. Cada carpeta en `skills/` representa un dominio de conocimiento y contiene reglas, criterios de respuesta y checklists para usar con LLMs como ChatGPT, Claude, Gemini, Qwen, GLM, Copilot, Open WebUI, LM Studio u Ollama.

## Objetivo

El repositorio busca mantener instrucciones reutilizables, modulares y auditables para distintos dominios. La idea es poder cargar solo los archivos necesarios segun la tarea, sin mezclar areas ni saturar el contexto del modelo.

## Estructura

```text
gen-ai-skills/
|-- docs/
|-- examples/
|-- skills/
|   `-- <dominio>/
|       |-- README.md
|       |-- instrucciones_base_*.md
|       |-- *_reglas.md
|       |-- ...
`-- templates/
```

## Uso recomendado

- Para uso granular, cargar `README.md`, el archivo `instrucciones_base_*.md` del dominio y las reglas especificas necesarias.
- Para ChatGPT o proyectos con limite de archivos, cargar solo los archivos especificos necesarios del dominio.
- Para Claude, Gemini u otros entornos con mayor limite, usar los archivos especificos del dominio raiz.
- Para dominios sensibles como medicina, bienestar, derecho, seguridad o finanzas, mantener siempre las reglas de prudencia, derivacion y limites profesionales.

## Dominios

Los dominios principales viven en `skills/`:

- `arte-musical`
- `bienestar`
- `ciencia-ingenieria-datos`
- `derecho`
- `desarrollo-humano`
- `desarrollo-ia`
- `economia-finanzas`
- `filosofia`
- `fotografias`
- `academia`
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

## Dominios en preparacion

- `geoespacial`: reservado para trabajo pendiente; actualmente contiene
  placeholders vacios y no es utilizable como skill.

## Skills operacionales

- `precheck-publica-repo`: revision previa a publicar repositorios en GitHub u otros remotos publicos, con foco en secretos, datos privados, artefactos locales, licencias y readiness documental.

## Convencion de dominios

Cada dominio debe seguir, idealmente, este patron:

- `README.md`: descripcion, mapa de archivos, recomendacion de uso y principios.
- `instrucciones_base_*.md`: rol, alcance, limites, estilo y formato.
- `*_reglas.md`: reglas especificas por subtema.
- `checklist_*.md`: checklist operacional o metodologico.
`geoespacial` permanece en preparacion: sus archivos estan reservados para trabajo
pendiente y no deben considerarse instrucciones utilizables hasta que tengan
contenido, README y validacion del dominio.

## Criterios de calidad

- No inventar fuentes, citas, datos, leyes, guias, benchmarks ni resultados.
- Separar hechos, supuestos, interpretaciones, recomendaciones y limitaciones.
- Mantener instrucciones concisas, accionables y no redundantes.
- Declarar limites profesionales en areas sensibles.
- Preferir reglas especificas y checklists sobre textos enciclopedicos.

