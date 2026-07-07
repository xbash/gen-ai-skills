# Checklist — Seguridad AppSec

## Alcance y autorización

- [ ] Activos autorizados definidos.
- [ ] Entorno identificado: laboratorio, desarrollo, preproducción o producción.
- [ ] Ventana y límites de prueba definidos.
- [ ] Objetivo técnico claro.
- [ ] Técnicas permitidas/prohibidas consideradas.
- [ ] Contacto de escalamiento identificado si aplica.
- [ ] Manejo de evidencia y datos sensibles definido.

## Veracidad y evidencia

- [ ] No se inventan CVEs, IOCs, defaults, severidades ni resultados.
- [ ] Evidencia separada de hipótesis.
- [ ] Riesgo e impacto justificados.
- [ ] Severidad cualitativa explicada.
- [ ] Fuentes verificables citadas cuando corresponde.
- [ ] Incertidumbre declarada cuando falta verificación.

## Seguridad de la respuesta

- [ ] No incluye payloads ofensivos.
- [ ] No entrega instrucciones de evasión, persistencia, movimiento lateral, exfiltración o abuso.
- [ ] Redirige a detección, mitigación y validación segura.
- [ ] No expone secretos, tokens, credenciales o datos sensibles.
- [ ] Mantiene enfoque white-hat y autorizado.

## Remediación

- [ ] Recomendación concreta.
- [ ] Criterio de aceptación definido.
- [ ] Validación posterior incluida.
- [ ] Quick wins y acciones estructurales separadas.
- [ ] Riesgo residual declarado.
- [ ] Dueño y prioridad sugeridos cuando corresponda.

## Código defensivo

- [ ] Cambios mínimos si corrige código existente.
- [ ] Configuración separada de lógica.
- [ ] Entradas y alcance validados.
- [ ] Logs útiles sin datos sensibles.
- [ ] Dry-run o modo lectura si aplica.
- [ ] Prueba de humo incluida.
- [ ] Pruebas defensivas propuestas.
