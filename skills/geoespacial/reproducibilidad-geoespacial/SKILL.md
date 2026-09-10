# Reproducibilidad geoespacial

## Propósito
Hacer trazables las fuentes, transformaciones, ejecuciones y artefactos.

## USAR CUANDO
Se creen datasets derivados, análisis, modelos o entregables que deban repetirse o auditarse.

## NO USAR CUANDO
La actividad sea una exploración efímera sin artefacto reutilizable.

## Entradas
Fuentes y procedencia; versiones; configuración; entorno; transformaciones; ejecuciones; artefactos y responsable.

## Workflow
1. Identificar fuentes, fechas, versiones y licencias disponibles sin inventarlas.
2. Registrar configuración, entorno y transformaciones.
3. Asociar entradas, ejecuciones y artefactos mediante linaje.
4. Versionar lo necesario y conservar manifiestos/resultados.
5. Verificar que otra ejecución pueda reconstruir el resultado con los insumos registrados.

## Salida
Manifiesto de linaje, procedimiento reproducible y artefactos identificados.

## Validaciones
Distinguir fuente, transformación, resultado y entorno; no prometer reproducibilidad sin insumos; DVC y MLflow son opciones, no requisitos.

## Conocimiento incluido
DVC, MLflow, experimentos, lineage, reproducibilidad y versionado de dataset.

## Checklist
- [ ] Fuentes, versiones y procedencia registradas.
- [ ] Configuración, entorno y transformaciones documentados.
- [ ] Linaje conecta entradas con artefactos.
- [ ] Límites y pasos no reproducibles declarados.
