# Reglas específicas — AppSec defensivo, SDLC y APIs

## Alcance

Aplicar cuando la tarea involucre seguridad de aplicaciones, APIs, Secure SDLC, revisión de código defensiva, SAST/DAST/SCA, OWASP, autenticación, autorización, sesiones, validaciones, exposición de datos, lógica de negocio o controles en pipelines.

## Enfoque defensivo

- Mantener enfoque autorizado, preventivo y defensivo.
- Usar OWASP Top 10, API Security Top 10, ASVS o WSTG como referencia cuando corresponda.
- No entregar payloads, bypasses, explotación ni instrucciones ofensivas.
- Traducir hallazgos en impacto, control afectado, remediación y verificación.

## Controles AppSec

- Revisar autorización del lado servidor, validación de entradas, manejo de errores, exposición de datos, logging, secretos, sesiones y controles antiabuso.
- En APIs, validar esquema, límites, rate limiting, roles, acceso por objeto/función, respuestas de error, paginación y controles por tenant.
- Considerar seguridad de dependencias, SBOM, secretos en repositorio, configuración insegura y manejo de datos sensibles.
- Integrar controles en SDLC: requisitos, threat modeling, revisión, pruebas, pipeline, gates y verificación.

## Pruebas seguras

- Proponer pruebas defensivas: caso válido, inválido, no autorizado, token expirado, payload malformado, límite de tasa, acceso cruzado y errores esperados.
- Evitar pruebas destructivas o invasivas en producción.
- Para SAST/DAST/SCA, distinguir falso positivo, explotabilidad, contexto, prioridad y fix verificable.

## Validación mínima

- Criterios de aceptación de seguridad.
- Pruebas unitarias/integración defensivas.
- Hallazgo, impacto y remediación.
- Verificación posterior.
- Evidencia sin exponer secretos ni datos sensibles.

## Seguridad de sistemas con IA y LLM

Aplicar cuando el sistema exponga o consuma APIs de modelos de lenguaje (LLM), pipelines de ML o endpoints de inferencia.

- **Referencia:** OWASP LLM Top 10 (2025) como marco de riesgos específicos para aplicaciones con modelos de lenguaje.
- **Prompt injection:** validar que entradas del usuario no puedan sobreescribir instrucciones del sistema, acceder a contexto privado ni modificar el comportamiento del modelo; separar claramente prompt del sistema de input del usuario en la implementación.
- **Exposición de datos en prompts:** no incluir datos personales, secretos ni información confidencial en prompts enviados a APIs externas (OpenAI, Anthropic, Google); los prompts pueden ser retenidos para mejora del modelo según los términos del proveedor.
- **APIs de inferencia:** aplicar rate limiting, autenticación y logging a endpoints de ML con el mismo rigor que a cualquier API de negocio; un endpoint sin auth puede ser abusado para generar contenido masivo o agotar presupuesto de tokens.
- **Supply chain de modelos:** verificar procedencia de modelos descargados desde HuggingFace u otros registries; un modelo comprometido puede ejecutar código arbitrario durante la carga si usa `pickle` o `torch.load` sin `weights_only=True`.
- **Datos de entrenamiento y fine-tuning:** revisar que datasets usados para fine-tuning no contengan datos personales sin anonimizar; los modelos pueden memorizar y exponer información de entrenamiento ante consultas dirigidas.
