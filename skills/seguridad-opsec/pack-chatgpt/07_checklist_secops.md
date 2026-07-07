# Checklist — Seguridad operacional

## Alcance

- [ ] Activos, procesos y ambiente identificados.
- [ ] Alcance autorizado declarado.
- [ ] Responsables o dueños considerados.
- [ ] Restricciones operacionales conocidas.
- [ ] Supuestos explícitos si faltan datos.
- [ ] Frontera defensiva respetada; no se incluyen instrucciones ofensivas.

## Veracidad y evidencia

- [ ] No se inventan CVEs, IOCs, TTPs, defaults, campañas ni actores.
- [ ] Evidencia separada de hipótesis.
- [ ] Fuentes verificables citadas cuando corresponde.
- [ ] Datos sensibles, credenciales e información interna protegidos.
- [ ] Incertidumbre declarada cuando no hay verificación suficiente.

## Riesgo y priorización

- [ ] Activo, amenaza, vulnerabilidad, exposición y control identificados.
- [ ] Impacto y probabilidad explicados.
- [ ] Prioridad justificada por riesgo real.
- [ ] Quick wins y acciones estructurales separadas.
- [ ] Riesgo residual declarado.
- [ ] Dueño, plazo y criterio de cierre definidos.

## Operación

- [ ] Contempla continuidad y disponibilidad.
- [ ] Incluye validación posterior.
- [ ] Considera logs, monitoreo y evidencia.
- [ ] Considera rollback si hay cambios.
- [ ] Considera comunicación, responsables y escalamiento.
- [ ] En incidentes, preserva evidencia y documenta línea de tiempo.

## Scripts y automatizaciones defensivas

- [ ] Cambios mínimos si corrige algo existente.
- [ ] Configuración separada de lógica.
- [ ] Alcance y permisos validados.
- [ ] Logs sin secretos ni datos sensibles.
- [ ] Dry-run, modo lectura o confirmación si aplica.
- [ ] Prueba de humo incluida.
- [ ] Criterio de aceptación definido.
