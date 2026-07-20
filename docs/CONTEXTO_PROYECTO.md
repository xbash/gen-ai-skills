# Contexto del proyecto

Fecha de consolidacion: 2026-07-19

## Objetivo actual

`gen-ai-skills` es un repositorio de instrucciones Markdown reutilizables para asistentes de IA. Su objetivo verificable, segun `README.md`, es mantener instrucciones modulares y auditables por dominio, permitiendo cargar solo los archivos necesarios para una tarea sin mezclar areas ni saturar el contexto del modelo.

## Estructura verificada

- `skills/`: dominios de instrucciones.
- `skills/<dominio>/README.md`: descripcion, mapa de archivos, recomendacion de uso y principios del dominio.
- `skills/<dominio>/00_*`: instrucciones base del dominio.
- `skills/<dominio>/NN_*`: reglas y checklists especificos.
- `skills/<dominio>/pack-chatgpt/`: version compacta cuando exista.
- `templates/`: plantillas para distintos entornos.
- `docs/`: documentacion del proyecto.

## Dominio academia

Existe el dominio `skills/academia`, orientado a revision academica, tecnica y conceptual de notebooks Jupyter con Python usados en laboratorios, tareas, controles, pruebas o actividades formativas.

Hechos verificados en `skills/academia/README.md`:

- El dominio es deliberadamente transversal.
- No asume IA, programacion, estadistica, matematicas o seguridad salvo que el material lo indique.
- El uso recomendado es cargar siempre `00_instrucciones_base_academia.md`.
- Luego se selecciona `01_analisis_tecnico_conceptual.md` o una especializacion `02` a `06`.
- `07_checklist_revision_notebook.md` funciona como checklist transversal.

## Estado del arbol de trabajo

Ultima revision local ejecutada:

```powershell
git status --short
```

Resultado relevante:

```text
?? skills/academia/prompt-tarea1-vision-nlp-redes.md
```

Ese archivo no versionado ya existia antes de crear esta documentacion de cierre en esta sesion. No fue inspeccionado ni modificado en esta consolidacion.

## Archivos modificados en esta consolidacion

- `docs/CONTEXTO_PROYECTO.md`
- `docs/DECISIONES_TECNICAS.md`
- `docs/PENDIENTES.md`
- `docs/REGISTRO_CAMBIOS.md`
- `docs/BITACORA_CODEX.md`

## Cambios externos detectados durante la consolidacion

Despues de la primera escritura de estos documentos, `git status --short -- docs` mostro:

```text
 D docs/roadmap.md.txt
?? docs/roadmap.md
```

`docs/roadmap.md` existe con longitud 0. No fue creado ni modificado por Codex en esta consolidacion, por lo que se trata como cambio externo pendiente de confirmacion.

## Supuestos vigentes

- El bloque de instrucciones entregado por el usuario actua como instruccion persistente deseada mientras no exista `AGENTS.md` en la raiz.
- La documentacion debe distinguir hechos verificados, supuestos, recomendaciones, riesgos y pendientes.
- No se deben inventar datos, columnas, variables, metricas, resultados, benchmarks, costos, tiempos ni citas.
- Los cambios deben ser minimos, trazables y coherentes con la estructura actual del repositorio.
- Las memories durables deben proponerse, no guardarse automaticamente, salvo instruccion explicita del usuario.

## Pendiente de verificacion

- Confirmar si debe existir un `AGENTS.md` real en la raiz del repositorio.
- Confirmar si `skills/academia/prompt-tarea1-vision-nlp-redes.md` debe moverse fuera de `skills/academia` hacia una biblioteca de prompts concretos.
- Revisar codificacion de `README.md`, porque el arbol de directorios muestra caracteres mojibake.
- Confirmar si el cambio de `docs/roadmap.md.txt` a `docs/roadmap.md` fue intencional.
