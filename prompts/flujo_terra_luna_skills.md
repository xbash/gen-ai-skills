# Flujo operativo — Terra analiza, Luna ejecuta

## Objetivo

Separar razonamiento costoso de manipulación de archivos para maximizar calidad por token.

| Etapa | Modelo | Esfuerzo | Responsabilidad | Salida |
|---|---|---|---|---|
| 1 | GPT-5.6 Terra | Medio | Auditoría completa del dominio | Diagnóstico + arquitectura |
| 2 | GPT-5.6 Terra | Alto, solo si aplica | Resolver únicamente decisiones `REVISIÓN_TERRA_ALTA` | Decisiones cerradas |
| 3 | GPT-5.6 Terra | Medio | Convertir decisiones en plan determinista | `PLAN_EJECUCION_LUNA` |
| 4 | GPT-5.6 Luna | Bajo | Operaciones mecánicas | estructura, movimientos, referencias |
| 5 | GPT-5.6 Luna | Medio solo cuando sea necesario | Reescrituras guiadas sin decisiones de arquitectura | contenido refactorizado |
| 6 | GPT-5.6 Luna | Bajo | Validación mecánica | `EXECUTION_REPORT.md` |
| 7 | GPT-5.6 Terra | Medio, opcional | Revisar solo fallos o cambios de alto riesgo | aprobación/correcciones |

## Política de ahorro

1. No usar Terra para mover, renombrar o escribir archivos de forma mecánica.
2. No usar Luna para reauditar o decidir arquitectura.
3. No repetir la auditoría completa con esfuerzo alto.
4. Escalar a Terra Alto solo clusters ambiguos y de alto impacto.
5. Cada acción del plan debe declarar `files_to_load`; Luna no debe cargar el dominio completo por defecto.
6. Usar Luna Bajo para cambios exactos y Luna Medio solo para redacción guiada.
7. En una segunda revisión con Terra, enviar únicamente el diff, el informe de ejecución y los archivos afectados.

## Secuencia ejecutable

```text
1. Ejecutar audita_skills_dominios_v2_terra.md con Terra/Medium.
2. Revisar únicamente elementos marcados REVISIÓN_TERRA_ALTA.
3. Cerrar todas las decisiones arquitectónicas.
4. Guardar la sección PLAN_EJECUCION_LUNA en un archivo del proyecto.
5. Cambiar a Luna/Low.
6. Ejecutar solo acciones LUNA_LOW.
7. Si existen acciones LUNA_MEDIUM, cambiar a Luna/Medium y ejecutar solo esas.
8. Ejecutar validaciones finales con Luna/Low.
9. Revisar EXECUTION_REPORT.md.
10. Si hay FAIL/BLOCKED o cambios de alto riesgo, volver a Terra con contexto mínimo.
```

## Contexto mínimo para una revisión final con Terra

Entregar solo:

- arquitectura aprobada;
- `PLAN_EJECUCION_LUNA`;
- `EXECUTION_REPORT.md`;
- diff de los archivos modificados;
- acciones `FAIL/BLOCKED`.

No volver a cargar todas las skills salvo que el problema lo requiera.
