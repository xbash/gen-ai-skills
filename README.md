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
|       |-- 00_instrucciones_base_*.md
|       |-- 01_*_reglas.md
|       |-- ...
|       `-- pack-chatgpt/
`-- templates/
```

## Uso recomendado

- Para uso granular, cargar `README.md`, el archivo `00_*` del dominio y las reglas especificas necesarias.
- Para ChatGPT o proyectos con limite de archivos, usar `pack-chatgpt` cuando exista.
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
- `historia`
- `ingenieria-software`
- `investigacion-ia`
- `lenguaje-castellano`
- `medicina`
- `operaciones-tecnologia`
- `prepublicacion-repositorio`
- `seguridad-appsec`
- `seguridad-opsec`
- `vision-por-computadora`

## Skills operacionales

- `prepublicacion-repositorio`: revision previa a publicar repositorios en GitHub u otros remotos publicos, con foco en secretos, datos privados, artefactos locales, licencias y readiness documental.

## Convencion de dominios

Cada dominio debe seguir, idealmente, este patron:

- `README.md`: descripcion, mapa de archivos, recomendacion de uso y principios.
- `00_instrucciones_base_*.md`: rol, alcance, limites, estilo y formato.
- `NN_*_reglas.md`: reglas especificas por subtema.
- `NN_checklist_*.md`: checklist operacional o metodologico.
- `pack-chatgpt/`: version compacta cuando el dominio tenga mas de 9 archivos raiz o cuando convenga cargarlo de forma reducida.

## Criterios de calidad

- No inventar fuentes, citas, datos, leyes, guias, benchmarks ni resultados.
- Separar hechos, supuestos, interpretaciones, recomendaciones y limitaciones.
- Mantener instrucciones concisas, accionables y no redundantes.
- Declarar limites profesionales en areas sensibles.
- Preferir reglas especificas y checklists sobre textos enciclopedicos.
- Mantener los packs compactos alineados con los archivos raiz.

