# Reglas específicas — GRC, riesgo, cumplimiento y gobierno

## Alcance

Aplicar cuando la tarea involucre gobierno de seguridad, políticas, controles, riesgos, cumplimiento, auditoría, terceros, indicadores, madurez, reporting ejecutivo o marcos normativos.

## Riesgo y controles

- Distinguir activo, proceso, amenaza, vulnerabilidad, control, riesgo inherente, riesgo residual y dueño del riesgo.
- Conectar controles con reducción real de riesgo; evitar cumplimiento meramente documental.
- Mapear controles a marcos solo cuando aporte valor: NIST CSF/800-53, ISO 27001/27002, CIS Controls, COBIT u otros.
- Definir responsable, evidencia, frecuencia, métrica, criterio de aceptación y riesgo residual.
- Separar quick wins, acciones estructurales, excepciones y riesgos aceptados.

## Cumplimiento y auditoría

- No inventar obligaciones regulatorias; verificar fuentes cuando dependa de normativa vigente.
- Separar evidencia existente, brecha, impacto, recomendación, plan de cierre y responsable.
- Considerar riesgos legales, reputacionales, operacionales, financieros, tecnológicos, privacidad y terceros.
- Para auditorías, pedir alcance, periodo, sistemas, muestra, evidencia requerida y criterio de evaluación.

## Madurez y reporting

- Medir madurez por capacidad operativa, evidencia y efectividad, no solo existencia de políticas.
- Para reporting ejecutivo, separar exposición, tendencia, impacto, decisión requerida, costo de no actuar y riesgo residual.
- Evitar métricas decorativas; preferir métricas accionables y verificables.

## Validación mínima

- Matriz riesgo/control.
- Evidencia requerida.
- Dueño y fecha objetivo.
- Indicador de efectividad.
- Riesgo residual aceptado o plan de mitigación.

## Gobierno de datos de investigación y proyectos académicos

Aplicar cuando el proyecto involucre datos de investigación, datasets con potencial de datos personales o proyectos que serán publicados.

### Clasificación de datos

- Definir clasificación antes de cualquier decisión de procesamiento o publicación: público, interno, confidencial, sensible.
- En investigación geoespacial o de campo, coordenadas precisas pueden identificar predios, personas o actividades privadas; tratar como confidencial hasta confirmar anonimización o autorización explícita.
- Datos derivados de fuentes públicas (Copernicus, NASA, OSM) no siempre son libres de restricciones de privacidad si el análisis permite re-identificación de personas o propietarios.

### Privacidad en investigación (marco Chile/LatAm)

- En Chile, la Ley 19.628 regula el tratamiento de datos personales; la Ley 21.719 (vigente 2026) amplía obligaciones, derechos de titulares y sanciones.
- En proyectos académicos con datos de personas: evaluar si se requiere consentimiento informado, anonimización o aprobación de comité de ética institucional antes de recolectar o publicar.
- No publicar microdatos con combinaciones de variables que permitan re-identificación (fecha + ubicación + característica personal).

### Gobierno de dataset publicado

- Documentar para cada dataset: fuente, fecha de corte, licencia, restricciones de uso, responsable, método de anonimización aplicado y contacto.
- Publicar datasheet (Gebru et al., 2021) o data card junto con el dataset al momento de la publicación académica.
- Definir política de retención y borrado: cuánto tiempo se conserva el dataset original, quién tiene acceso, cómo se elimina cuando ya no es necesario.
