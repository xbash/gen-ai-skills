# Auditoría de skills existentes y propuesta de integración

## Alcance
Se revisaron los 17 Markdown suministrados por el usuario. El diagnóstico se refiere al contenido de esos archivos, no al repositorio completo ni a ejecuciones reales de la tesis.

## Hallazgos
- **Fortaleza:** `instrucciones_base_dev.md` establece invariantes de rigor, pruebas, seguridad, trazabilidad y cambios mínimos.
- **Fortaleza:** `README.md` ya ofrece routing por especialidad técnica.
- **Fortaleza:** existen reglas específicas de arquitectura, CLI, notebooks, contenedores, datos, pruebas y DevOps.
- **Brecha:** falta routing por fase SDLC y un criterio explícito de aprobación entre fases.
- **Brecha:** no existe matriz canónica obligatoria que enlace objetivos, requisitos, diseño, implementación, pruebas y evidencia.
- **Brecha:** la validación metodológica/científica requiere separación explícita de las pruebas funcionales.
- **Riesgo técnico:** `cli_pipeline_reglas.md` formula el determinismo como invariante general; conviene matizarlo según fuentes y algoritmos.
- **Riesgo técnico:** `contenedor_pipeline_reglas.md` equipara en exceso imagen y reproducibilidad del entorno; conviene verificar dependencias y datos.
- **Riesgo técnico:** `notebooks_reproducibles_reglas.md` promete el mismo resultado al repetir ejecución; debe distinguir equivalencia, tolerancia numérica y no determinismo.

## Cambios propuestos (sin modificar originales)
1. **P0**: agregar orquestador SDLC y siete skills por fase.
2. **P0**: incorporar matriz OBJ→REQ→DIS→IMP→PRU→EVI y puertas de control humanas.
3. **P1**: actualizar routing del README existente.
4. **P1**: complementar checklist de código con trazabilidad a requisitos y evidencias.
5. **P1**: precisar afirmaciones de reproducibilidad de CLI, notebooks y contenedores.
6. **P2**: auditar ejemplos de herramientas/APIs y supuestos de rendimiento antes de su uso.

## Advertencias metodológicas
La propuesta fortalece disciplina de ingeniería, pero no acredita por sí misma originalidad científica, validez estadística, calidad de datos o cumplimiento de exigencias de la universidad. La aprobación del diseño de investigación corresponde al estudiante y a su profesor guía.
