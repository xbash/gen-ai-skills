# Checklist - Ciencia e Ingenieria de Datos

## Problema y datos
- [ ] Pregunta, hipotesis o decision esperada definida.
- [ ] Unidad de analisis, poblacion, periodo y granularidad claros.
- [ ] Fuentes, owners, licencias y restricciones identificadas.
- [ ] Variables, definiciones, unidades y metadatos documentados.
- [ ] Calidad evaluada: nulos, duplicados, rangos, consistencia, actualidad y cobertura.
- [ ] Privacidad, sensibilidad, acceso y retencion revisados.

## Pipeline e ingenieria
- [ ] Ingesta, validacion, limpieza, transformacion, salida y monitoreo separados.
- [ ] Configuracion separada de logica y credenciales fuera del codigo.
- [ ] Contratos, tests o expectativas de datos definidos cuando hay consumidores.
- [ ] Logs, manejo de errores, idempotencia y reintentos considerados.
- [ ] Linaje, versiones, artefactos y dependencias trazables.
- [ ] Prueba de humo y criterio de aceptacion disponibles.

## Analisis y modelamiento
- [ ] Baseline definido si aplica.
- [ ] Splits correctos y sin leakage.
- [ ] Metricas alineadas al objetivo y al costo de error.
- [ ] Semillas, versiones, parametros y ambiente registrados.
- [ ] Incertidumbre, sensibilidad o intervalos comunicados.
- [ ] Analisis de errores, drift, sesgos o limitaciones incluido.

## Visualizacion, gobernanza y operacion
- [ ] Audiencia y decision esperada identificadas.
- [ ] Fuente, periodo, unidad, filtros y definiciones visibles.
- [ ] Conclusiones no exceden la evidencia.
- [ ] Owner, custodio o responsable operacional definido.
- [ ] Accesos, auditoria, cifrado y minimo privilegio revisados.
- [ ] Monitoreo de calidad, frescura, costos y fallos definido.
