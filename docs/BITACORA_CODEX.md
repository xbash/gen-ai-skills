# Bitacora Codex

Fecha de consolidacion: 2026-07-19

## Contexto cargado

Codex cargo el contexto del proyecto desde:

- `README.md`
- `CONTRIBUTING.md`
- `CHANGELOG.md`
- `SECURITY.md`
- `skills/academia/README.md`
- listado de archivos con `rg --files`
- estado Git con `git status --short --branch`
- historial breve con `git log --oneline -5`

Tambien se uso memoria local previa para orientar la lectura del dominio `academia`. Esa memoria se trato como contexto auxiliar y no como evidencia suficiente para afirmar cambios no verificados en el checkout actual.

## Comandos utiles

```powershell
git status --short --branch
```

Muestra rama y cambios pendientes.

```powershell
git status --short
```

Muestra cambios pendientes en formato compacto.

```powershell
git log --oneline -5
```

Muestra los ultimos cinco commits.

```powershell
rg --files
```

Lista archivos versionados y no versionados visibles desde el directorio de trabajo.

```powershell
Get-ChildItem docs | Select-Object Name,Length,LastWriteTime
```

Permite detectar documentos vacios o placeholders en `docs/`.

```powershell
Get-Content -Raw skills\academia\README.md
```

Carga el mapa del dominio `academia`.

## Instrucciones que deberian persistir en AGENTS.md

Propuesta basada en la instruccion entregada por el usuario y en las reglas del repo:

```text
Actua como academico, investigador aplicado y asesor metodologico especializado.
No inventes datos, metricas, resultados experimentales, estado del arte, comparativas de modelos, benchmarks, costos, tiempos de entrenamiento ni citas.
Si faltan datos - tarea, dataset, metrica, baseline, restricciones, recursos, entorno, presupuesto de computo o criterio de exito -, solicita lo minimo indispensable o trabaja con supuestos explicitos.
Distingue hechos verificables, supuestos, hipotesis, estimaciones, recomendaciones, riesgos y limitaciones.
Considera riesgos metodologicos y practicos.
Antes de modificar archivos, revisa la estructura existente y preserva cambios no propios.
Para este repositorio, manten separacion entre skills reutilizables y prompts concretos de tareas, laboratorios o evaluaciones.
No presentes memoria previa como hecho confirmado si no fue verificada en el checkout actual.
```

## Memories durables propuestas

Estas son propuestas para futuras sesiones de Codex/ChatGPT. No fueron guardadas como memoria; requieren confirmacion explicita del usuario.

### Memory propuesta 1

- Memory propuesta: En el repo `gen-ai-skills`, trabajar con rigor academico/metodologico: no inventar datos, variables, metricas, resultados, benchmarks, costos, tiempos ni citas; distinguir hechos, supuestos, recomendaciones, riesgos y pendientes.
- Motivo: Es una preferencia estable del usuario y afecta la calidad de todas las tareas en este repositorio.
- Alcance: Futuras sesiones de Codex/ChatGPT sobre `gen-ai-skills` y tareas academicas relacionadas.
- Riesgo si se guarda: Bajo; no contiene secretos ni datos personales. Puede duplicar reglas si luego existe `AGENTS.md`.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Debe ir principalmente en `AGENTS.md` porque es una regla permanente de conducta. La memory puede quedar como recordatorio general solo si el usuario lo confirma.

### Memory propuesta 2

- Memory propuesta: En `gen-ai-skills`, separar skills reutilizables de prompts concretos de tareas, laboratorios, controles o evaluaciones; los prompts especificos no deberian vivir dentro de dominios reutilizables salvo decision explicita.
- Motivo: Evita mezclar instrucciones transversales con trabajos puntuales y preserva modularidad del repo.
- Alcance: Organizacion futura de `skills/academia` y posibles bibliotecas como `prompts-academicos/`.
- Riesgo si se guarda: Medio-bajo; es una decision de arquitectura que podria cambiar. Si se guarda sin confirmacion, podria sobredirigir futuras reorganizaciones.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Debe auditarse en `docs/DECISIONES_TECNICAS.md`; tambien puede ir en `AGENTS.md` como regla operativa si el usuario la confirma.

### Memory propuesta 3

- Memory propuesta: Para el dominio `skills/academia`, usar la base transversal primero; no asumir IA/ML/DL, programacion, estadistica, matematicas o ciberseguridad salvo que el notebook o curso lo indique.
- Motivo: Es coherente con el `README.md` del dominio y previene sesgos tematicos en revisiones de notebooks.
- Alcance: Revisiones futuras de notebooks y mantenimiento del dominio `skills/academia`.
- Riesgo si se guarda: Bajo; esta respaldada por documentacion del repo. Podria quedar obsoleta si se redisena el dominio.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Ya esta reflejada en `skills/academia/README.md`; si se vuelve regla transversal de agente, agregarla a `AGENTS.md`.

### Memory propuesta 4

- Memory propuesta: Al trabajar en este repo, tratar cambios no versionados o no propios como existentes del usuario: revisarlos si afectan la tarea, no borrarlos ni moverlos sin instruccion explicita.
- Motivo: El repo puede quedar con archivos no versionados entre sesiones; preservar cambios evita perdida de trabajo.
- Alcance: Futuras sesiones de edicion en `gen-ai-skills`.
- Riesgo si se guarda: Bajo; es una regla operacional segura. Puede ser redundante con instrucciones generales de Codex.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Debe ir en `AGENTS.md` si se quiere reforzar como regla permanente del repositorio.

### Memory propuesta 5

- Memory propuesta: El repo tiene problemas pendientes de codificacion/fin de linea: `README.md` muestra mojibake en el arbol y Git advierte conversion LF a CRLF; antes de ediciones documentales amplias, verificar politica UTF-8 y EOL.
- Motivo: Es util para evitar agravar problemas de codificacion en futuras sesiones.
- Alcance: Mantenimiento documental y cambios masivos en Markdown.
- Riesgo si se guarda: Medio; puede volverse obsoleta despues de corregir la codificacion o configurar `.gitattributes`.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Mejor mantenerlo en `docs/PENDIENTES.md` hasta resolverlo. Guardar como memory solo si el problema persiste por varias sesiones.

### Memory propuesta 6

- Memory propuesta: Pendiente de confirmacion del usuario: decidir si `skills/academia/prompt-tarea1-vision-nlp-redes.md` debe moverse a una biblioteca de prompts concretos, versionarse o descartarse.
- Motivo: El archivo aparece no versionado y puede indicar una decision de organizacion pendiente.
- Alcance: Solo este checkout/repo y el manejo de ese prompt puntual.
- Riesgo si se guarda: Medio; es temporal y podria resolverse pronto, por lo que no parece buena memory duradera.
- Alternativa si debe ir mejor en AGENTS.md o docs/: Mejor mantenerlo en `docs/PENDIENTES.md`, no como memory durable.

## Supuestos vigentes

- El usuario quiere conservar trazabilidad para futuras sesiones.
- Las instrucciones academicas y metodologicas deben dominar cuando se trabaje en este repo.
- Las decisiones documentadas aqui no reemplazan un `AGENTS.md` real hasta que ese archivo exista.

## Problemas encontrados

- Falta `AGENTS.md` en la raiz.
- Hay mojibake visible en `README.md`.
- Existen documentos vacios en `docs/`.
- Hay un archivo no versionado en `skills/academia/`.
- Git advierte posibles conversiones LF a CRLF.
- `docs/roadmap.md.txt` aparece eliminado y `docs/roadmap.md` aparece no versionado; pendiente confirmar si fue un renombrado intencional.

## Proximos pasos recomendados

1. Crear `AGENTS.md` con las instrucciones persistentes si el usuario lo confirma.
2. Revisar y corregir codificacion de `README.md` sin alterar contenido sustantivo.
3. Decidir si `skills/academia/prompt-tarea1-vision-nlp-redes.md` se versiona, se mueve o se descarta.
4. Completar los documentos vacios de `docs/` o eliminarlos si no cumplen funcion.
5. Definir politica de codificacion y fin de linea para el repositorio.
6. Confirmar cuales, si alguna, de las memories propuestas deben guardarse como memoria durable.

## 2026-07-23 - Cierre con skill

### Objetivo

Aplicar `$cerrar-sesion-proyecto` al repositorio `gen-ai-skills` para dejar continuidad auditable despues de cargar contexto.

### Archivos actualizados

- `docs/CONTEXTO_PROYECTO.md`
- `docs/DECISIONES_TECNICAS.md`
- `docs/PENDIENTES.md`
- `docs/REGISTRO_CAMBIOS.md`
- `docs/BITACORA_CODEX.md`
- `docs/BITACORA_AGENTES.md`

### Comandos ejecutados

```powershell
git status --short --branch
Get-Content -LiteralPath README.md
Get-Content -LiteralPath docs\CONTEXTO_PROYECTO.md
Get-Content -LiteralPath docs\DECISIONES_TECNICAS.md
Get-Content -LiteralPath docs\PENDIENTES.md
Get-Content -LiteralPath docs\REGISTRO_CAMBIOS.md
Get-Content -LiteralPath docs\BITACORA_CODEX.md
Get-ChildItem -LiteralPath skills\geoespacial -Force -Recurse
Get-ChildItem -LiteralPath templates -File
Get-ChildItem -LiteralPath docs -File
```

### Resultados observados

- Rama reportada: `main...origin/main`.
- Cambio no versionado previo a esta consolidacion: `skills/geoespacial/`.
- `skills/geoespacial/stac.md.txt` existe con longitud 0.
- No existe `AGENTS.md` raiz.
- No existe `GEMINI.md` raiz.
- No existe metadata `.template/` raiz.
- `docs/BITACORA_AGENTES.md` no existia antes de esta consolidacion.
- El `README.md` raiz sigue mostrando mojibake en el arbol de directorios.

### Pendientes principales

- Crear `AGENTS.md` raiz si se confirma como regla persistente del repositorio.
- Formalizar o descartar el dominio `skills/geoespacial/`.
- Completar o eliminar placeholders vacios en `docs/` y `templates/`.
- Revisar codificacion y politica de fin de linea.
