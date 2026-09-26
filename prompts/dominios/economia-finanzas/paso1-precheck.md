Aplica estrictamente:

prompts/iniciar_workflow_dominio.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
economia-finanzas

Ruta:
skills/economia-finanzas/

Fecha:
20260910

Ejecuta únicamente la FASE 1 — PRECHECK.

Usa:

prompts/precheck_skills_dominio_ejec.md

No avances automáticamente a diseño, auditoría, refactorización ni creación
de nuevas skills.

## Alcance de esta fase

Inspecciona únicamente el contenido REAL y ACTUAL de:

skills/economia-finanzas/

Determina:

- existencia y accesibilidad de la ruta;
- cantidad de archivos Markdown;
- archivos vacíos y no vacíos;
- componentes operativos por contenido;
- archivos auxiliares;
- placeholders;
- estructura plana o jerárquica;
- existencia de subdirectorios;
- existencia de SKILL.md;
- alcance declarado por los archivos existentes.

No evalúes todavía:

- calidad económica o financiera;
- cobertura temática;
- redundancia;
- riesgos regulatorios;
- necesidad de nuevas skills;
- conveniencia de subdirectorios;
- conveniencia de SKILL.md;
- arquitectura objetivo.

## Regla de clasificación

Clasifica exactamente como uno de:

EMPTY
PLACEHOLDER_ONLY
FUNCTIONAL
MIXED
INVALID

La clasificación debe basarse en el contenido.

No clasifiques como incompleto solamente porque el dominio tenga pocos
archivos.

No clasifiques como funcional un archivo únicamente por tener un nombre
descriptivo.

README, checklist, matrices, índices o archivos de routing pueden ser
auxiliares y no necesariamente skills operativas.

## Consideración específica

El nombre del dominio es:

economia-finanzas

En esta fase NO debes asumir que:

economía
finanzas
inversiones
mercados
contabilidad
riesgo
banca
negocios

deban corresponder a skills independientes.

Solo registra objetivamente qué capacidades existen actualmente.

## Archivos de salida

Genera:

docs/precheck_economia-finanzas_20260910.md

docs/estado_economia-finanzas_20260910.md

## Estado

El archivo de estado debe incluir al menos:

- dominio;
- ruta;
- fase ejecutada;
- clasificación;
- cantidad de Markdown;
- cantidad no vacía;
- cantidad de componentes operativos;
- cantidad de auxiliares;
- placeholders;
- subdirectorios;
- SKILL.md;
- ruta siguiente;
- modelo siguiente;
- esfuerzo siguiente;
- prompt siguiente;
- cambios realizados.

## Restricciones

NO modifiques:

skills/economia-finanzas/

NO crees archivos dentro del dominio.
NO renombres archivos.
NO muevas archivos.
NO elimines archivos.
NO diseñes skills.
NO audites arquitectura.

Esta fase es exclusivamente mecánica.

## Routing

Si:

FUNCTIONAL
→ FASE 2B — AUDITORÍA FUNCIONAL
→ GPT-5.6 Terra / Medium
→ prompts/audita_skills_dominios_v2_arq.md

MIXED
→ FASE 2C — AUDITORÍA HÍBRIDA
→ GPT-5.6 Terra / Medium

EMPTY o PLACEHOLDER_ONLY
→ FASE 2A — DISEÑO
→ GPT-5.6 Terra / Medium

INVALID
→ STOP

## Respuesta en chat

Responde únicamente:

DOMINIO: economia-finanzas

CLASIFICACION:

MARKDOWN:
OPERATIVOS:
AUXILIARES:
PLACEHOLDERS:
SUBDIRECTORIOS:
SKILL_MD:

RUTA_SIGUIENTE:

SIGUIENTE_MODELO:
SIGUIENTE_ESFUERZO:
SIGUIENTE_PROMPT:

CAMBIOS_REALIZADOS:
NO