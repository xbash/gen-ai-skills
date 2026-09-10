# Contexto de continuidad

Fecha de corte: 2026-09-09
Repositorio: `C:\rutinas-local\gen-ai-skills\gen-ai-skills`

## Objetivo actual

Mantener una biblioteca modular de instrucciones Markdown bajo `skills/<dominio>/`, con carga selectiva, activación clara, bajo contexto redundante y reglas reutilizables para distintos agentes y modelos.

## Trabajo realizado en esta sesión

### `skills/ciencia-ingenieria-datos`

- Se incorporó `reglas_transversales_cied.md`.
- Se añadió selección de módulos y activadores `Usar cuando`.
- Se actualizó su README.

### `skills/desarrollo-ia`

- Se incorporó `base/reglas_transversales_ia.md`.
- Se compactó `base/instrucciones_base_ia.md`.
- Se añadieron límites de activación a los módulos.
- Se redujo duplicación entre LLM/NLP, seguridad, MLOps/serving, datos/testing y checklist.
- Se creó `seguridad/gobernanza_uso_responsable_ia_reglas.md`.
- Se dividió RL y optimización evolutiva en:
  - `modelamiento/rl_control_decisiones_secuenciales_reglas.md`
  - `modelamiento/optimizacion_evolutivos_busqueda_reglas.md`
- Se aplicó la estructura física `base`, `modelamiento`, `sistemas_generativos`, `ciclo_de_vida`, `seguridad` y `validacion`.
- Se actualizaron referencias relativas y README.

## Decisiones confirmadas por el usuario

- Los nombres descriptivos sin prefijos numéricos son la convención canónica.
- Los subdirectorios `pack-chatgpt/` fueron eliminados intencionalmente y no deben recrearse.
- El usuario revisará y subirá los cambios a GitHub; no hacer commit ni push.

## Política de archivos

- UTF-8 sin BOM.
- Finales de línea LF.
- Nueva línea final y sin espacios finales.
- `.gitattributes` y `.editorconfig` establecen la política para cambios futuros.

## Estado funcional

- Validación estática ejecutada: archivos no vacíos, referencias nuevas existentes, sin referencias al módulo RL antiguo y Markdown normalizado.
- No se ha ejecutado todavía una validación funcional con un LLM.
- No se ha medido todavía el ahorro neto de tokens/contexto.

## Restricciones

- No inventar métricas, resultados, capacidades, benchmarks ni evidencia.
- No restaurar numeración ni `pack-chatgpt/`.
- No limpiar, revertir, hacer staging ni publicar cambios sin solicitud explícita.
- Tratar el working tree como intencionalmente sucio; no asumir que todos los cambios son de esta sesión.
