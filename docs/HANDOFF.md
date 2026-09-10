# Handoff de continuidad

Fecha de corte: 2026-09-09

## Al iniciar la próxima sesión

1. Leer `docs/CONTEXT.md`, `docs/DECISIONS.md` y este archivo.
2. No restaurar nombres numerados ni `pack-chatgpt/`.
3. No ejecutar commit, push o release; el usuario hará la publicación.
4. Mantener separados los cambios intencionales existentes del trabajo de esta sesión.

## Próximo trabajo prioritario

### 1. Validación funcional

Probar selección y comportamiento con un LLM en:

- clasificación tabular;
- fine-tuning;
- RAG;
- agente con herramientas;
- API de inferencia;
- forecasting;
- recomendadores;
- OCR/VLM;
- evaluación de regresión.

Registrar solo resultados observados, configuración usada, archivos cargados y limitaciones.

### 2. Medición de contexto

Comparar, para casos equivalentes:

- base sola;
- base + transversal;
- base + transversal + módulo principal;
- base + transversal + complementarios.

Reportar palabras o tokens según la herramienta disponible y distinguir tamaño estático de comportamiento del modelo.

## Referencias principales

- `skills/desarrollo-ia/README.md`
- `skills/desarrollo-ia/base/instrucciones_base_ia.md`
- `skills/desarrollo-ia/base/reglas_transversales_ia.md`
- `skills/desarrollo-ia/seguridad/gobernanza_uso_responsable_ia_reglas.md`
- `skills/ciencia-ingenieria-datos/README.md`
- `docs/DECISIONES_TECNICAS.md`
- `docs/PENDIENTES.md`

## Verificaciones ya realizadas

- Árbol físico de `desarrollo-ia` reorganizado y referencias relativas actualizadas.
- 21 Markdown de `desarrollo-ia` verificados sin BOM, CRLF, espacios finales ni archivos vacíos.
- No quedan referencias al antiguo `rl_optimizacion_evolutivos_reglas.md`.
- `.gitattributes` y `.editorconfig` creados.
