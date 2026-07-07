# Reglas específicas — Frontend, aplicaciones web y UX técnica

## Alcance

Aplicar cuando la tarea involucre interfaces web, componentes, formularios, estado, routing, consumo de APIs, accesibilidad, rendimiento, experiencia de usuario, diseño responsive o integración frontend-backend.

## Diseño de interfaz

- Declarar framework, versión, navegador objetivo, restricciones y sistema de diseño si existe.
- Separar componentes, estado, servicios de API, validaciones, estilos y utilidades.
- Mantener componentes con responsabilidades claras; evitar componentes enormes con lógica mezclada.
- Manejar estados de carga, error, vacío, éxito, permisos insuficientes y datos parciales.
- Diseñar flujos principales, errores recuperables y mensajes útiles para el usuario.
- No usar textos visibles para explicar funcionalidades internas si la interfaz debe ser autoexplicativa.

## Datos, formularios y APIs

- Validar entradas también en backend; no confiar solo en validación de cliente.
- Definir contrato con APIs: parámetros, payload, respuesta, errores, paginación, cache y reintentos.
- Evitar exponer secretos, tokens privados, claves de servicio o lógica sensible en frontend.
- Manejar expiración de sesión, permisos, errores de red y estados inconsistentes.

## Accesibilidad y responsive

- Considerar etiquetas, roles, navegación por teclado, foco visible, contraste, tamaño táctil y mensajes claros.
- Evitar solapamientos, texto truncado sin necesidad o elementos que cambien de tamaño de forma inestable.
- Probar tamaños móviles y desktop cuando la interfaz sea responsive.
- Asegurar que estados dinámicos no rompan layout ni navegación.

## Rendimiento

- Considerar renderizados innecesarios, tamaño de bundle, carga diferida, imágenes, cache, listas grandes y memoización.
- Evitar traer datos innecesarios o bloquear la interfaz durante operaciones largas.
- Medir antes de optimizar cuando el rendimiento no sea evidentemente problemático.

## Validación mínima

- Prueba de humo de carga de pantalla.
- Validar flujo principal, estados de carga/error/vacío, formularios y errores de API.
- Revisar consola del navegador, accesibilidad básica y comportamiento responsive.
