# Checklist — Scripts, runbooks y cambios operacionales

Usar este checklist antes de entregar, ejecutar o revisar scripts, comandos, consultas, runbooks, automatizaciones o cambios de infraestructura.

## Alcance

- [ ] Objetivo operacional claro.
- [ ] Ambiente declarado: desarrollo, QA, staging, PROD u otro.
- [ ] Sistema operativo, plataforma, shell/lenguaje y versión considerados.
- [ ] Permisos requeridos declarados.
- [ ] Impacto operacional identificado.
- [ ] Ventana de cambio, responsable y criterio de éxito definidos cuando aplique.

## Seguridad y control

- [ ] No contiene secretos hardcodeados.
- [ ] No expone credenciales, tokens, strings de conexión o datos sensibles en logs.
- [ ] Tiene confirmación para acciones destructivas, masivas o costosas.
- [ ] Incluye dry-run, precheck o validación previa cuando aplica.
- [ ] Usa lista blanca/exclusiones para acciones de eliminación, cierre masivo o cambios de firewall.
- [ ] Considera respaldo, snapshot, export o rollback si modifica estado.
- [ ] Valida ambiente para evitar ejecutar en PROD cambios de QA.

## Calidad técnica

- [ ] Usa funciones cuando aporta claridad.
- [ ] Mantiene nombres claros y consistentes, preferentemente en español para lógica propia.
- [ ] Separa configuración de lógica.
- [ ] Valida entradas, rutas, archivos, hosts, puertos, servicios, permisos y dependencias.
- [ ] Maneja errores y excepciones.
- [ ] Usa logs útiles con inicio, fin, resultado y errores.
- [ ] Evita dependencias externas innecesarias.
- [ ] Prioriza legibilidad antes que complejidad.
- [ ] Incluye comentarios mínimos para decisiones no obvias.

## Operación

- [ ] Incluye instrucciones de ejecución.
- [ ] Incluye prueba de humo.
- [ ] Permite verificar estado posterior.
- [ ] Registra evidencia suficiente para auditoría o control de cambios.
- [ ] Declara limitaciones y riesgos residuales.
- [ ] Distingue código exploratorio de código apto para operación.

## Continuidad

- [ ] Considera monitoreo o alerta posterior si el cambio impacta un servicio.
- [ ] Considera RTO/RPO si toca respaldos, restauración o continuidad.
- [ ] Incluye plan de reversa probado o razonablemente verificable.
- [ ] Indica condiciones para detener la ejecución o escalar.
