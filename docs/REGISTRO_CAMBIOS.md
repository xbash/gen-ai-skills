# Registro de cambios

## 2026-07-19

### Consolidacion de contexto de sesion

Archivos creados:

- `docs/CONTEXTO_PROYECTO.md`
- `docs/DECISIONES_TECNICAS.md`
- `docs/PENDIENTES.md`
- `docs/REGISTRO_CAMBIOS.md`
- `docs/BITACORA_CODEX.md`

Motivo:

- Dejar continuidad para futuras sesiones de Codex o agentes.
- Registrar objetivo actual, decisiones, supuestos, problemas encontrados, comandos utiles, proximos pasos e instrucciones persistentes sugeridas.
- Identificar posibles memories durables sin guardarlas automaticamente.

### Hechos observados

- El repositorio no tenia `AGENTS.md` en la raiz.
- `docs/architecture.md`, `docs/best-practices.md`, `docs/getting-started.md`, `docs/prompt-design.md` y `docs/roadmap.md.txt` estaban vacios.
- `skills/academia/prompt-tarea1-vision-nlp-redes.md` aparecia como archivo no versionado antes de esta consolidacion.
- `README.md` raiz muestra mojibake en el arbol de directorios.
- Git mostro advertencias de conversion de fin de linea LF a CRLF al ejecutar `git diff --stat`.
- En una revision posterior, `docs/roadmap.md.txt` aparecio eliminado y `docs/roadmap.md` aparecio no versionado con longitud 0. Pendiente confirmar si fue renombrado intencionalmente.

### Sin cambios

- No se modificaron archivos bajo `skills/`.
- No se modifico el archivo no versionado `skills/academia/prompt-tarea1-vision-nlp-redes.md`.
- No se creo commit.
- No se ejecuto validacion automatica, porque el cambio fue documental.

### Actualizacion de memories propuestas

Se agrego en `docs/BITACORA_CODEX.md` una seccion de memories durables propuestas con:

- memory propuesta;
- motivo;
- alcance;
- riesgo si se guarda;
- alternativa si debe ir mejor en `AGENTS.md` o `docs/`.

## Cambios previos verificados por historial Git

Ultimos commits observados con `git log --oneline -5`:

```text
94166a0 Agrega dominio academia para revision de notebooks
ea5e804 Mejora y compacta dominios de skills
0ac0b92 Initial commit
```

No se infiere contenido adicional de esos commits mas alla de sus mensajes.
