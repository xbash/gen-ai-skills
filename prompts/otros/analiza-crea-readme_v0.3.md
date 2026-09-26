# Objetivo

Analiza el `README.md` raíz y genera un plan de acción para actualizarlo, sin modificar el repositorio.

El README debe permitir comprender rápidamente qué es el proyecto, para qué sirve, cómo utilizarlo de forma básica y dónde encontrar documentación detallada.

# Alcance

Inspecciona cuando existan:

- `README.md` raíz;
- `AGENTS.md`;
- estructura del proyecto;
- `/docs`;
- README de subdirectorios;
- scripts;
- configuración;
- puntos de entrada relevantes.

# Criterios

Determina qué contenido debe:

- mantenerse;
- actualizarse;
- eliminarse;
- agregarse;
- referenciarse desde otra documentación.

El README debe ser breve y orientado al usuario o desarrollador.

No debe convertirse en:

- copia de `AGENTS.md`;
- historial o changelog;
- registro de decisiones;
- documentación detallada de scripts o flujos;
- duplicación de `/docs` o README de subdirectorios.

Cuando exista documentación especializada, prefiere enlazarla.

No inventes comandos, funcionalidades, requisitos ni procedimientos que no puedan verificarse.

# Restricciones

Trabaja exclusivamente en modo solo lectura.

No crees, modifiques, muevas, renombres ni elimines archivos o directorios.

No apliques parches, commits ni comandos con efectos secundarios.

# Salida

Genera un plan suficientemente preciso para una ejecución mecánica posterior.

Para cada cambio indica:

```text
ACCION-NN
Prioridad: P0 | P1 | P2 | P3
Tipo: AGREGAR | MODIFICAR | ELIMINAR | REORDENAR
Sección:
Acción:
Fuente de verdad:
Validación:
Requiere revisión humana: SÍ | NO
```

Entrega:

1. diagnóstico breve;
2. estructura objetivo recomendada;
3. plan de acción priorizado;
4. incertidumbres o decisiones que requieran revisión humana.

No modifiques `README.md`.