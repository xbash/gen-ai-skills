# Skills SDLC académico — propuesta v0.1

Capa de proceso complementaria a las skills técnicas existentes. **No reemplaza** `instrucciones_base_dev.md`, `diseno_arquitectura_reglas.md`, `pruebas_calidad_reglas.md` ni las demás reglas.

## Orden de uso
`00_orquestador_sdlc.md` → `01_planificacion.md` → `02_requisitos.md` → `03_diseno.md` → `04_desarrollo.md` → `05_pruebas_validacion.md` → `06_despliegue.md` → `07_mantenimiento.md`.

El ciclo puede retroceder o repetirse; las siete etapas no implican cascada rígida.

## Integración recomendada
- Añadir una sección «Ciclo de vida / SDLC» al `README.md` del dominio, con routing por etapa.
- Mantener `instrucciones_base_dev.md` como fuente de invariantes técnicos; incorporar únicamente referencia al orquestador y a la exigencia de trazabilidad.
- Mantener reglas especializadas sin duplicarlas en las skills de etapa.
- Ampliar `checklist_codigo_dev.md` con comprobación de REQ, DIS, PRU y EVI vinculados.
- Revisar `cli_pipeline_reglas.md`: determinismo no está garantizado para datos externos, servicios cambiantes o algoritmos no deterministas; registrar semillas, snapshots, versiones y tolerancias.
- Revisar `contenedor_pipeline_reglas.md`: una imagen no garantiza por sí sola resultados reproducibles; fijar dependencias y considerar digest de imagen, arquitectura y procedencia de datos.
- Revisar `notebooks_reproducibles_reglas.md`: semillas y kernel limpio son necesarios en muchos casos pero no garantizan igualdad exacta de resultados en todos los entornos.
- Revisar ejemplos de `dashboard_datos_reglas.md` para evitar recomendaciones de APIs deprecadas o supuestos de escala sin medición.
- Evitar aplicar todos los documentos a cada tarea: selección por etapa y por tecnología.

## Criterio de adopción
Validar primero en un único módulo del proyecto de tesis; comparar calidad de requisitos, trazabilidad, esfuerzo y evidencia antes de extender al resto.
