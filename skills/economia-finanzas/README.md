# Dominio: Economia, Finanzas y Negocios

## Descripcion
Este dominio esta pensado para analisis academico, tecnico y metodologico en economia, finanzas, contabilidad, riesgos, regulacion y gestion de negocios. Sirve para evaluar decisiones, construir modelos, revisar supuestos, interpretar indicadores y comunicar recomendaciones con prudencia.

No reemplaza asesoria financiera, tributaria, legal, contable ni de inversion personalizada. Cuando la respuesta dependa de tasas, UF, inflacion, normativa, impuestos, precios, estados financieros o datos de mercado vigentes, se debe verificar con fuentes actuales y declarar fecha, fuente y alcance.

## Archivos del dominio

| Archivo | Uso principal |
|---|---|
| `instrucciones_base_eco.md` | Instruccion base del dominio, alcance, rigor, prudencia y formato. |
| `contabilidad_costos_reglas.md` | Estados financieros, costos, margenes, presupuestos, control de gestion y conciliaciones. |
| `finanzas_corporativas_proyectos_reglas.md` | VAN, TIR, WACC, valoracion, financiamiento, portafolios, mercado de capitales y proyectos. |
| `macro_micro_entorno_reglas.md` | Microeconomia, macroeconomia, competencia, inflacion, tasas, empleo, actividad y entorno. |
| `econometria_datos_reglas.md` | Econometria aplicada, series de tiempo, paneles, causalidad, prediccion y datos de negocio. |
| `riesgos_regulacion_chile_reglas.md` | Riesgos, compliance, regulacion chilena, fintech/open finance, ESG/sostenibilidad, tributario, laboral y continuidad. |
| `estrategia_marketing_negocios_reglas.md` | Estrategia, competencia, pricing, ventas, unit economics, go-to-market y crecimiento. |
| `personas_organizacion_reglas.md` | Personas, liderazgo, estructura, cultura, incentivos, cambio y comportamiento organizacional. |
| `checklist_modelos_decision_eco.md` | Checklist para revisar modelos, analisis y decisiones economico-financieras. |

## Carga progresiva

Patron normal:

`README.md`
+
`instrucciones_base_eco.md`
+
un modulo principal segun la tarea.

Los modulos secundarios solo se cargan cuando exista una dependencia concreta. En cada caso se debe declarar la razon de la carga secundaria. No se deben cargar todos los modulos por defecto.

`checklist_modelos_decision_eco.md` es un auxiliar y se utiliza unicamente cuando corresponda a revision, cierre o decision sensible. No es contexto inicial obligatorio.

### Combinaciones condicionales

Estas combinaciones son ejemplos de routing y no cargas universales:

- **Evaluacion de proyecto:** `instrucciones_base_eco.md` + `finanzas_corporativas_proyectos_reglas.md`. Agregar `riesgos_regulacion_chile_reglas.md` solo si existen riesgos relevantes, regulacion o continuidad.
- **Analisis de inflacion:** `instrucciones_base_eco.md` + `macro_micro_entorno_reglas.md`. Agregar otros modulos solo si la pregunta cruza explicitamente con otra responsabilidad.
- **Analisis econometrico:** `instrucciones_base_eco.md` + `econometria_datos_reglas.md`. Complementar con `macro_micro_entorno_reglas.md` unicamente cuando sea necesaria la interpretacion economica del fenomeno.
- **Costeo:** `instrucciones_base_eco.md` + `contabilidad_costos_reglas.md`. Agregar `finanzas_corporativas_proyectos_reglas.md` solo si la decision deriva hacia inversion, financiamiento o evaluacion de proyectos.
- **Modelo de negocio:** `instrucciones_base_eco.md` + `estrategia_marketing_negocios_reglas.md`. Agregar `personas_organizacion_reglas.md` solo si la tarea incluye estructura, capacidades, incentivos, adopcion o cambio organizacional.
- **Diseno organizacional:** `instrucciones_base_eco.md` + `personas_organizacion_reglas.md`. Agregar `estrategia_marketing_negocios_reglas.md` unicamente cuando exista dependencia con modelo de negocio, ejecucion estrategica o mercado.

`riesgos_regulacion_chile_reglas.md` se carga adicionalmente solo cuando exista una razon concreta, como regulacion, cumplimiento, riesgo financiero relevante, continuidad o vigencia normativa. No es una dependencia universal de finanzas.

Cuando la respuesta dependa de informacion vigente, se deben verificar tasas, inflacion, UF, IPC, tipo de cambio, mercados, precios, normativa e indicadores economicos. Se debe declarar fecha, fuente y alcance.

## Principios del dominio

- Separar hechos, supuestos, estimaciones, escenarios, interpretaciones, recomendaciones y limitaciones.
- No inventar cifras, tasas, precios, normativa, benchmarks, citas ni resultados empiricos.
- Diferenciar caja y utilidad contable, nominal y real, tasa y periodo, correlacion y causalidad.
- Validar fuentes actuales cuando el analisis dependa de indicadores, mercado o normativa vigente.
- Incluir sensibilidad, escenarios o rangos cuando los supuestos sean inciertos.
- Evitar recomendaciones personalizadas de inversion, tributacion o derecho sin contexto profesional validado.
