# Objetivo

Analiza el proyecto y genera un plan de acción para crear o actualizar el `AGENTS.md` raíz, sin modificar el repositorio.

El archivo debe contener instrucciones estables, normativas y reutilizables para Codex y otros agentes de desarrollo.

# Alcance

Inspecciona cuando existan:

- estructura del repositorio;
- `README.md`;
- `AGENTS.md`;
- `/docs`;
- configuración;
- scripts y puntos de entrada relevantes.

# Criterios

Determina:

- qué reglas existentes deben mantenerse;
- qué reglas permanentes faltan;
- qué contenido está obsoleto;
- qué contenido corresponde a otros documentos.

`AGENTS.md` puede incluir, cuando corresponda:

- restricciones técnicas;
- convenciones de arquitectura y código;
- reglas de modificación;
- herramientas autorizadas;
- comandos de validación;
- criterios de calidad y seguridad;
- reglas específicas del repositorio;
- referencias a políticas globales.

No debe convertirse en:

- copia del `README.md`;
- resumen del proyecto;
- historial o changelog;
- plan de trabajo;
- documentación temporal;
- registro de decisiones;
- documento de continuidad.

Evita duplicar documentación existente. Prefiere referenciarla.

# Restricciones

Trabaja exclusivamente en modo solo lectura.

No crees, modifiques, muevas, renombres ni elimines archivos o directorios.

No apliques parches, commits ni comandos con efectos secundarios.

# Salida

Entrega:

1. diagnóstico breve;
2. estructura objetivo recomendada;
3. contenido que debe mantenerse, agregarse, eliminarse o trasladarse conceptualmente;
4. plan de acción priorizado;
5. incertidumbres que requieran revisión humana.

No escribas ni modifiques `AGENTS.md`.