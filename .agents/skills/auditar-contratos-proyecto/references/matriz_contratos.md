# Matriz de contratos documentales

## Aplicabilidad y cumplimiento

Determina primero la aplicabilidad de **cada contrato** para el proyecto concreto:

- `OBLIGATORIO`: una fuente externa aplicable y verificada, o una política interna vigente, exige el contrato. Identifica la fuente y su alcance.
- `RECOMENDADO`: aporta valor demostrable al uso, colaboración o mantenimiento del proyecto; su ausencia genera una recomendación, no un incumplimiento por sí misma.
- `CONDICIONAL`: hay un disparador concreto por comprobar o la necesidad depende de una característica del proyecto. Registra la condición. Al confirmarla, decide si el contrato pasa a obligatorio por una fuente verificada, permanece recomendado o deja de aplicar.
- `NO_APLICA`: la condición se evaluó y hay evidencia suficiente de que el contrato no aporta valor o no corresponde. Registra el motivo.

El resultado es independiente de la aplicabilidad: `CUMPLE` (criterios aplicables satisfechos), `PARCIAL` (brecha comprobada en un contrato parcialmente útil), `NO_CUMPLE` (brecha comprobada frente a un criterio aplicable), `NO_APLICA` (decisión justificada) o `NO_VERIFICADO` (evidencia insuficiente). No conviertas ausencia de archivo, por sí sola, en incumplimiento: evalúa antes su pertinencia. Si una condición no pudo resolverse, usa `CONDICIONAL` y `NO_VERIFICADO`.

La columna inicial expresa una **convención de revisión**, no un requisito oficial. Una obligación nace solo de la fuente identificada para ese proyecto. No presupongas que ser público, privado, académico, personal, empresarial, prototipo o producto impone por sí solo un archivo concreto. Considera esas características junto con colaboración, distribución, operación y tipo de solución.

| Contrato | Propósito | Aplicabilidad inicial | Criterio de evaluación | Condición a comprobar |
| --- | --- | --- | --- | --- |
| `AGENTS.md` global y local | Instrucciones operativas para agentes | Condicional | Alcance, jerarquía efectiva, reglas accionables, coherencia y carga de contexto | Uso de agentes con instrucciones persistentes; verificar mecanismo de cada herramienta |
| `README.md` | Presentación, requisitos y uso | Recomendado | Pasos, comandos y descripciones acordes con el proyecto real | Especialmente útil cuando otra persona necesita comprender o usar el proyecto |
| `CHANGELOG.md` | Historial de cambios publicados | Condicional | Entradas trazables y coherentes con las versiones declaradas | Versionado o proceso de publicación que necesite historial |
| `CONTRIBUTING.md` | Convenciones de contribución | Condicional | Proceso realizable y reglas vigentes, sin duplicar instrucciones de agentes | Contribuciones de terceros o colaboración formal |
| `SECURITY.md` | Alcance y vía de reporte de seguridad | Condicional | Política y canal realmente definidos; no inventar direcciones, plazos ni garantías | Política organizacional o proceso de reporte aplicable |
| `LICENSE` | Condiciones de uso y distribución | Condicional | Texto, titularidad y distribución coherentes; sin derivar interpretación legal | Distribución o política que requiera términos explícitos |
| `VERSION` | Identificador de versión | Condicional | Fuente de verdad y concordancia con manifiestos y changelog | Si el proyecto usa este archivo para versionarse |
| `.gitignore` | Exclusión de artefactos locales | Condicional | Patrones pertinentes; ausencia de exclusión accidental de fuentes necesarias | Uso de Git con datos o artefactos locales o generados |
| `.editorconfig` | Reglas compartidas de formato | Condicional | Reglas compatibles con archivos y convenciones reales | Formato compartido que necesite este mecanismo |
| `.gitattributes` | Tratamiento de archivos en Git | Condicional | Atributos pertinentes para texto, binarios u otros casos reales | Necesidad de normalización o atributos específicos |
| Manifiestos de proyecto | Metadatos, comandos y dependencias | Condicional | Concordancia con código, herramientas y versiones observadas | Ecosistema o empaquetado que utilice manifiestos |
| Archivos de dependencias y bloqueo | Instalación reproducible | Condicional | Relación coherente con manifiestos y gestor utilizado | Gestor de dependencias y política de bloqueo aplicables |
| `.env.example` | Configuración de entorno sin secretos | Condicional | Variables necesarias, nombres vigentes y valores seguros | Configuración por variables de entorno |
| `docs/` y arquitectura | Explicar decisiones o estructuras complejas | Condicional | Contenido vigente, enlazado y con fuente de verdad identificable | Complejidad que no se resuelve en documentos breves |
| Configuración CI/CD | Validación, entrega o publicación automatizada | Condicional | Flujos y comandos coherentes con el repositorio y su documentación | Automatización efectivamente configurada |

## Contratos rectores de continuidad

Convención de revisión de esta skill (criterio propio, no norma ni requisito oficial): un conjunto mínimo de documentos permite retomar un proyecto en otra sesión o con otro agente sin reconstruir contexto. Para estos contratos la aplicabilidad inicial de esta sección prevalece sobre la tabla anterior. Su ausencia genera una `RECOMENDACIÓN`, no un `INCUMPLIMIENTO`, salvo que una política interna vigente del proyecto los exija (entonces `OBLIGATORIO`, citando la fuente).

### Nivel 1: mínimo para todo proyecto y entorno

| Contrato | Pregunta que debe responder | Aplicabilidad inicial |
| --- | --- | --- |
| `README.md` | ¿Qué es y cómo se ejecuta una prueba de humo? | Recomendado |
| `docs/CONTEXT.md` | ¿Objetivo, alcance, restricciones y supuestos? | Recomendado |
| `docs/DECISIONS.md` | ¿Qué se decidió, por qué y qué se descartó? | Recomendado |
| `docs/HANDOFF.md` | ¿Dónde quedó el trabajo, qué sigue y qué está bloqueado? | Recomendado |
| `VERSION` y `CHANGELOG.md` | ¿Qué versión es y qué cambió? | Recomendado; `CONDICIONAL` si el proyecto no se versiona |
| `AGENTS.md` | ¿Qué reglas siguen los agentes? | Recomendado; punteros en `CLAUDE.md`, `GEMINI.md` u otros solo si existen o hay más de un agente |
| `.gitignore` y `.env.example` | ¿Qué no se versiona y qué configuración existe, sin secretos? | `.gitignore` recomendado; `.env.example` condicional a configuración por variables |
| Manifiesto y bloqueo de dependencias | ¿Con qué versiones se reproduce? | Condicional al ecosistema |

### Nivel 2: según tipo de proyecto

Determina el tipo por evidencia (dependencias y SDK, directorios como `prompts/`, `data/`, `models/`, código, notebooks); un proyecto puede combinar tipos y se aplica la unión. Si el tipo no puede determinarse, usa `CONDICIONAL` y `NO_VERIFICADO`.

| Contrato | LLM / agentes | RAG | ML clásico |
| --- | --- | --- | --- |
| `prompts/` versionados | Recomendado | Recomendado | `NO_APLICA` |
| `docs/EVALUATION.md` (métricas, casos, criterios, línea base) | Recomendado | Recomendado | Recomendado |
| `docs/DATA.md` (origen, licencia, versión, datos personales) | Condicional a datos propios | Recomendado (corpus) | Recomendado |
| `docs/MODEL.md` (modelo, versión, parámetros, usos y límites) | Recomendado | Recomendado (embeddings y generador) | Recomendado |
| `docs/RISKS.md` (riesgos y mitigaciones) | Recomendado | Recomendado | Recomendado |

### Nivel 3: según entorno

Condicionales a evidencia de uso académico (`docs/REPRODUCIBILITY.md`: semillas, hardware, tiempos) o empresarial/operado (`SECURITY.md`, `LICENSE`, `docs/ARCHITECTURE.md`, `docs/RUNBOOK.md`, CI). No los exijas sin esa evidencia.

### Criterios de pertinencia del contenido

Para cada contrato presente, evalúa en solo lectura:

- **Redacción:** no está vacío ni es una plantilla sin completar (marcadores como `<...>`, `TODO`, `TBD`, `[completar]`) y contiene lo que su pregunta exige.
- **Alineación con la finalidad:** concuerda con el propósito declarado en `README.md` y `docs/CONTEXT.md` y con el código, manifiestos y estructura reales.
- **Referencias existentes:** las rutas, archivos, comandos, variables de entorno, modelos, datasets y enlaces internos citados existen en el alcance. Los enlaces externos no se siguen: márcalos `NO_VERIFICADO`.
- **Valores faltantes:** campos sin valor; `HANDOFF.md` sin fecha, estado o próxima acción; `DECISIONS.md` sin motivo o alternativas; versiones o fechas ausentes.
- **Coherencia cruzada:** `VERSION`, `CHANGELOG.md`, manifiesto y etiqueta Git concuerdan (registra la fuente de verdad); `HANDOFF.md` es consistente con el historial Git; los punteros (`CLAUDE.md`, `GEMINI.md`) importan `AGENTS.md` sin contradecirlo; `.env.example` cubre las variables que usa el código; `.env` está cubierto por `.gitignore` sin abrir su contenido.
- **Situaciones no declaradas:** dependencias, servicios, variables, datos o modelos que el código o la configuración evidencian y los documentos no mencionan.

Evalúa variantes con otros nombres o ubicaciones por su función antes de recomendar un archivo nuevo. Comprueba también `AGENTS.md` anidados, skills y convenciones del proyecto cuando existan. Para VERSION, changelog y metadatos de versión, registra cuál es la fuente de verdad real antes de señalar contradicciones. Las afirmaciones sobre estándares externos, herramientas o compatibilidad entre Codex, Claude, Gemini y otros agentes requieren una fuente verificable; en su ausencia, marca el punto `NO_VERIFICADO`.
