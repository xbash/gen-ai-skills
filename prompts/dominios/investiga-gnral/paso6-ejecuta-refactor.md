Aplica estrictamente:

prompts/ejecuta_refactor_skills_luna.md

Proyecto:
C:/rutinas-local/gen-ai-skills-root/gen-ai-skills

Dominio:
investigacion-general

Ruta:
skills/investigacion-general/

Fecha:
20260910

Plan:
docs/plan_refactor_investigacion-general_luna_20260910.md

Acciones autorizadas:
IG-P1-07

## Estado previo obligatorio

Antes de ejecutar, verifica en:

docs/execution_report_investigacion-general_20260910.md

que exista:

VALIDACION_INTERMEDIA_CORREGIDA_IG-P1-07

con:

INVENTARIO = PASS
CONTRATOS = PASS
TRAZABILIDAD = PASS
INVARIANTES_ORIGINALES = PASS
CONTRATO_CARGA_PLANIFICADO = PASS
ROUTING = PASS
REDUNDANCIA_NORMATIVA = PASS
PERDIDA_NORMATIVA = NO
AMBIGÜEDAD_SIGNIFICATIVA = NO
IG-P1-07 = AUTHORIZED

Si cualquiera no se cumple:

BLOCKED
y detener.

## Alcance

Ejecuta EXCLUSIVAMENTE:

IG-P1-07

Target:

skills/investigacion-general/instrucciones_base_investiga.md

NO modifiques:

skills/investigacion-general/checklist_investigacion.md

NO modifiques los cinco módulos ya creados.

NO modifiques README salvo que el plan lo autorice explícitamente.
Para esta ejecución, README es referencia de routing, no target de edición.

## Objetivo

Convertir:

instrucciones_base_investiga.md

desde una base monolítica que contiene detalle especializado,

a:

un contrato transversal compacto

que preserve los invariantes generales y delegue el detalle metodológico
a los cinco módulos especializados ya validados.

## Archivos a cargar

Carga únicamente los files_to_load definidos para IG-P1-07:

docs/auditoria_investigacion-general_terra_20260910.md

skills/investigacion-general/instrucciones_base_investiga.md

skills/investigacion-general/checklist_investigacion.md

skills/investigacion-general/README.md

skills/investigacion-general/diseno_metodologico_datos_reglas.md

skills/investigacion-general/revision_evidencia_fuentes_reglas.md

skills/investigacion-general/analisis_inferencia_resultados_reglas.md

skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md

skills/investigacion-general/etica_integridad_impacto_reglas.md

## Debe preservar en la base

Mantén explícitamente:

### Rol y alcance

- investigación transversal;
- independencia disciplinaria;
- aplicabilidad a enfoques cuantitativos;
- cualitativos;
- mixtos;
- documentales;
- experimentales;
- observacionales;
- evaluativos;
- aplicados.

### Principio de evidencia

- no inventar evidencia;
- no inventar resultados;
- no inventar fuentes;
- declarar incertidumbre;
- distinguir hechos, supuestos, hipótesis e interpretación;
- solicitar información faltante cuando sea necesaria.

### Límites epistemológicos

Mantener la separación entre:

- evidencia;
- resultado;
- interpretación;
- inferencia;
- explicación;
- asociación;
- causalidad;
- recomendación;
- limitación.

No universalizar hipótesis, métricas, significancia o causalidad.

### Proporcionalidad

Las conclusiones deben ser proporcionales a:

- evidencia;
- diseño;
- calidad de datos;
- alcance;
- limitaciones.

### Método general de respuesta

Mantener:

- identificación del problema;
- supuestos;
- información faltante;
- selección de método;
- análisis;
- resultados;
- limitaciones;
- recomendaciones cuando correspondan.

### Formato proporcional

Preservar la regla de adaptar profundidad y estructura al encargo.

## Contrato de carga que debe incorporar

La nueva base debe declarar explícitamente:

1. README se utiliza para routing.

2. La base se carga siempre dentro del dominio.

3. Se selecciona un módulo principal según la tarea.

4. Los módulos secundarios se cargan únicamente por dependencia concreta.

5. El checklist se carga solo para cierre o revisión.

6. No deben cargarse todos los módulos por defecto.

## Módulos especializados

Delegar el detalle a:

### Diseño y datos

skills/investigacion-general/diseno_metodologico_datos_reglas.md

Para:

- formulación;
- diseño;
- datos;
- muestreo;
- medición;
- validez.

### Evidencia y fuentes

skills/investigacion-general/revision_evidencia_fuentes_reglas.md

Para:

- búsqueda;
- selección;
- calidad;
- verificación;
- atribución;
- trazabilidad documental.

### Análisis e inferencia

skills/investigacion-general/analisis_inferencia_resultados_reglas.md

Para:

- métricas;
- comparación;
- análisis;
- incertidumbre;
- interpretación;
- inferencia;
- límites.

### Reproducibilidad

skills/investigacion-general/reproducibilidad_trazabilidad_reglas.md

Para:

- artefactos;
- versiones;
- transformaciones;
- configuraciones;
- trazabilidad;
- reproducción;
- control de cambios.

### Ética e integridad

skills/investigacion-general/etica_integridad_impacto_reglas.md

Para:

- ética;
- privacidad;
- consentimiento;
- integridad científica;
- atribución;
- conflictos de interés;
- impacto.

## Qué eliminar de la base

Elimina únicamente detalle especializado que:

1. ya esté cubierto normativamente por uno de los cinco módulos;
2. tenga trazabilidad confirmada;
3. no sea necesario como invariante transversal.

Evita duplicar en la base:

- procedimientos detallados de diseño;
- procedimientos de revisión documental;
- métricas y análisis detallados;
- procedimientos de reproducibilidad;
- controles éticos especializados.

Puede mantenerse una referencia breve si es necesaria para routing.

## Qué NO eliminar

No elimines una regla solo porque aparezca semánticamente en otro archivo.

Antes de eliminarla, confirma que:

- conserva significado;
- conserva condiciones;
- conserva alcance;
- conserva excepciones;
- conserva proporcionalidad.

Si existe duda:

mantener en la base y reportar la incidencia.

No resolver ambigüedad mediante eliminación.

## Estructura requerida

La base resultante debe contener como mínimo:

# Rol y alcance

# Principio de evidencia

# Contrato de carga

# Reglas transversales

# Método de respuesta

# Formato proporcional

Puedes usar subsecciones cuando ayuden,
pero no crear un tutorial extenso.

## Densidad

El objetivo es compactar, no empobrecer.

Elimina:

- desarrollo detallado ya delegado;
- repeticiones;
- ejemplos innecesarios;
- definiciones enciclopédicas.

Preserva:

- reglas normativas;
- límites;
- condiciones;
- decisiones;
- seguridad metodológica.

NO optimices por longitud fija.

NO inventes reducción de tokens.

## Restricciones

No:

- crear nuevas skills;
- crear subdirectorios;
- crear SKILL.md;
- modificar checklist;
- modificar módulos;
- modificar arquitectura;
- añadir contenido disciplinar;
- añadir reglas específicas de IA;
- añadir herramientas;
- añadir técnicas estadísticas exhaustivas;
- añadir legislación específica.

## Validación local de IG-P1-07

Antes de marcar PASS verifica:

1. la base contiene las seis secciones requeridas;

2. el alcance transversal sigue explícito;

3. existe el contrato de carga;

4. README y base son coherentes;

5. los cinco módulos están referenciados correctamente;

6. no se exige cargar todos los módulos;

7. el checklist sigue siendo condicional;

8. no se perdió ninguna de las 12 responsabilidades originales;

9. no se modificaron otros archivos del dominio;

10. no existe referencia rota.

## Reporte

Actualiza:

docs/execution_report_investigacion-general_20260910.md

Añade:

## IG-P1-07

ACTION_ID: IG-P1-07

STATUS:
PASS | FAIL | BLOCKED

FILES_LOADED:

FILES_MODIFIED:

BASE_COMPACTADA:
SI | NO

CONTRATO_CARGA:
PASS | FAIL

TRAZABILIDAD_POST_REWRITE:
PASS | FAIL

README_BASE_COHERENCIA:
PASS | FAIL

REFERENCIAS:
PASS | FAIL

PERDIDA_NORMATIVA:
SI | NO

OTROS_ARCHIVOS_MODIFICADOS:
SI | NO

ACCEPTANCE_CRITERIA:

INCIDENTS:

Si PERDIDA_NORMATIVA = SI:

STATUS = FAIL

No intentes una segunda reescritura automática.

## Respuesta en chat

Responde únicamente:

DOMINIO: investigacion-general

ACCION:
IG-P1-07

RESULTADO:
PASS | FAIL | BLOCKED

BASE_COMPACTADA:

CONTRATO_CARGA:
TRAZABILIDAD_POST_REWRITE:
README_BASE_COHERENCIA:
REFERENCIAS:

PERDIDA_NORMATIVA:
OTROS_ARCHIVOS_MODIFICADOS:

INCIDENCIAS:

SIGUIENTE_ACCION:
VALIDACION_FINAL