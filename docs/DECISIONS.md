# DECISIONS — Decisiones vigentes

Fecha de corte: 2026-10-11 (America/Santiago)

## Integración de skills globales

- `skills/ingenieria-software/` es la fuente técnica rectora. Las skills globales y los paquetes de `examples/` actúan como adaptadores y no duplican esas reglas.
- `ingenieria-software` y `auditoria-software` son los únicos nombres canónicos para las funciones de ingeniería general y auditoría estructurada, respectivamente. Sus paquetes de distribución son `examples/ingenieria-software/` y `examples/auditoria-software/`.
- `planificar-cambios` conserva la responsabilidad de producir planes; ingeniería-software aporta criterios técnicos y respeta los contratos locales. La auditoría es de solo lectura por defecto y no autoriza correcciones.
- Se retiraron las instalaciones y paquetes heredados `usar-reglas-dev` y `revisar-codigo-dev` en las cuatro rutas autorizadas por IS-06B. Los alias bajo `examples/gen-ia-codex/` ya estaban ausentes antes de esa operación.
- No se modifican las reglas rectoras, los AGENTS globales o locales, ni `planificar-cambios` como parte de la consolidación. Cualquier cambio futuro requiere una autorización y alcance propios.

## Compatibilidad y evidencia

- La comprobación de hashes demuestra identidad de copias, no activación funcional por sí sola. Las sesiones documentadas en el plan verificaron lecturas y comportamiento funcional de las skills canónicas.
- El CLI no ofrece una señal independiente y autoritativa de selección automática. La prueba implícita posterior al retiro no observó lectura de una skill; no debe presentarse como evidencia de activación automática.
- T05 probó localizar el dominio desde un directorio externo, pero no aislamiento completo de memoria global. Las trazas también mostraron una lectura heredada de `revisar-codigo-dev`; se repitió la auditoría tras su retiro.
- El retiro se respaldó con manifiesto SHA-256 y una restauración simulada verificada. El riesgo de consumidores externos no observables permanece; no se afirma su ausencia absoluta.

## Conservación del trabajo previo

El árbol de trabajo tenía cambios previos extensos. Se preservan; ninguna limpieza, reversión global o normalización general queda autorizada por estas decisiones.
