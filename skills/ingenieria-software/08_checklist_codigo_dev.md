# Checklist — Código, scripts y sistemas de software

Usar antes de entregar, corregir o revisar código, consultas, configuraciones, pipelines, servicios o aplicaciones.

## Alcance

- [ ] Objetivo técnico claro.
- [ ] Lenguaje, versión, framework y entorno declarados.
- [ ] Entradas, salidas y restricciones identificadas.
- [ ] Supuestos explícitos.
- [ ] Impacto del cambio acotado.
- [ ] Requisitos funcionales y no funcionales relevantes identificados.

## Cambios

- [ ] No refactoriza si no fue solicitado o no es necesario.
- [ ] Mantiene la lógica original cuando corresponde.
- [ ] Cambios mínimos para corrección de errores.
- [ ] Dependencias nuevas justificadas.
- [ ] Cambios de arquitectura justificados.
- [ ] Riesgos y limitaciones declarados.

## Calidad de código

- [ ] Modulariza cuando aporta claridad, prueba o reutilización.
- [ ] Usa nombres claros y consistentes.
- [ ] Prefiere español para lógica propia cuando sea razonable.
- [ ] Separa configuración de lógica.
- [ ] Valida entradas, tipos, rutas, archivos, permisos, estados nulos y dependencias.
- [ ] Maneja errores y excepciones.
- [ ] Incluye logs o mensajes útiles sin ruido excesivo.
- [ ] Evita secretos y datos sensibles.
- [ ] Prioriza legibilidad antes que complejidad.
- [ ] Usa comentarios mínimos para decisiones no obvias.

## Datos y persistencia

- [ ] Consultas parametrizadas si hay entradas de usuario.
- [ ] Migraciones con plan de rollback o mitigación cuando aplique.
- [ ] Conteos antes/después para cambios masivos.
- [ ] Índices, transacciones, bloqueos y rendimiento revisados si aplica.
- [ ] Datos personales o sensibles protegidos.

## Seguridad

- [ ] Validación server-side cuando aplica.
- [ ] Autenticación y autorización revisadas.
- [ ] Secretos fuera de código, logs y artefactos.
- [ ] Errores no exponen detalles sensibles.
- [ ] Dependencias o imágenes revisadas si se agregan o actualizan.

## Validación

- [ ] Incluye instrucciones de ejecución.
- [ ] Incluye prueba de humo o caso mínimo.
- [ ] Indica resultado esperado.
- [ ] Recomienda pruebas adicionales si el riesgo lo amerita.
- [ ] Distingue mejoras opcionales de cambios necesarios.
- [ ] Documenta riesgos no cubiertos por pruebas.
