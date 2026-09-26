# Objetivo

Analiza el `README.md` raíz del proyecto y genera un **plan de acción para actualizarlo**, sin modificar ningún archivo.

El README debe funcionar como documento de entrada al proyecto: permitir comprender rápidamente qué es, para qué sirve, cómo usarlo de forma básica y dónde encontrar documentación más detallada.

## Criterios

Revisa el repositorio y determina qué contenido del README debe:

- mantenerse;
- actualizarse;
- eliminarse;
- agregarse;
- referenciarse desde otra documentación.

Considera al menos:

- `README.md` raíz;
- `AGENTS.md`;
- estructura del proyecto;
- `/docs`;
- README de subdirectorios;
- scripts, configuración y puntos de entrada relevantes.

El README raíz debe ser breve y orientado al usuario o desarrollador.

No debe convertirse en:

- copia de `AGENTS.md`;
- historial del proyecto;
- changelog;
- registro de decisiones;
- documentación detallada de scripts o flujos;
- duplicación de `/docs` o README de subdirectorios.

Cuando exista documentación específica, prefiere enlazarla en lugar de duplicarla.

No inventes comandos, funcionalidades, requisitos ni procedimientos que no puedan verificarse en el repositorio.

## Restricción

Trabaja exclusivamente en **modo solo lectura**.

No crees, modifiques, muevas, renombres ni elimines archivos o directorios.  
No apliques parches, commits ni comandos con efectos secundarios sobre el repositorio.

## Resultado

Genera un plan de acción suficientemente preciso para ser ejecutado posteriormente por **Luna** como tarea mecánica.

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

Marca explícitamente cualquier información que no pueda verificarse.

No modifiques el `README.md`.

Al finalizar entrega:

1. diagnóstico breve;
2. estructura objetivo recomendada;
3. plan de acción priorizado;
4. incertidumbres o decisiones que requieran revisión humana.