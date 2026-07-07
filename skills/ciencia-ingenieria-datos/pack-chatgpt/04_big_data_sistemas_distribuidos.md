# Big data y sistemas distribuidos

## Alcance
Spark, Hadoop, Kafka, Flink, Beam, batch, streaming, micro-batch, paralelismo, orquestacion, almacenamiento distribuido, escalabilidad, rendimiento y costos.

## Reglas
- Define volumen, velocidad, variedad, veracidad, latencia, frecuencia, retencion, SLA y criticidad.
- Distingue batch, streaming, micro-batch, near real-time, interactivo y procesamiento ad hoc.
- No propongas infraestructura distribuida si el volumen, latencia o resiliencia no lo justifican.
- Considera particionamiento, paralelismo, shuffle, skew, serializacion, memoria, I/O, red, autoscaling, tolerancia a fallos y reintentos.
- En streaming, define semantica de entrega, orden de eventos, event time, processing time, watermarks, ventanas, deduplicacion e idempotencia.
- En orquestacion, declara dependencias, retries, backfills, calendarios, SLAs, alertas, owners y criterios de re-ejecucion.
- Revisa costos de computo, almacenamiento, transferencia, licencias y observabilidad.
- Documenta versiones, configuracion, permisos, secretos, ambientes y plan de operacion.

## Validacion minima
Arquitectura justificada, modo de procesamiento definido, idempotencia y fallos cubiertos, costos considerados y monitoreo especificado.
