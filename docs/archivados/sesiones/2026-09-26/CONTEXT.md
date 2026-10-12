# CONTEXT — Sesión 2026-09-26 (completa)

## Proyecto principal activo

**Tesis Magíster en Tecnologías de la Información — Universidad de Chile**  
Alumno: Jorge Antonio Sepúlveda Sepúlveda  
Archivo de referencia: `C:\universidad-local\uchile\mgtr-ti\sem03-2026\cc79g-tesis-grado-i\clase1-20260819\Propuesta_de_tesis_jsepuls_v4.2.5.pdf`

**Título:** "Metodología reproducible para construir datasets geoespaciales de ignición de incendios rurales a escala comunal"

**Contribución central:** Metodología + pipeline reproducible (NO un sistema predictivo).  
**Caso piloto:** Comuna de Las Cabras, Región de O'Higgins.  
**Unidad de análisis:** celda-día (celda 200 m × 200 m + fecha).  
**Horizonte temporal:** predicción a corto plazo, 24-72 h.  
**Variable objetivo:** binaria ignición/no-ignición por celda-día, con fuente, confianza e incertidumbre.

**Fuentes mínimas:** registros CONAF, ERA5 (meteorología), límites territoriales/grilla.  
**Fuentes complementarias:** Sentinel-2, VIIRS I-Band 375m, área quemada (dNBR/EFFIS).  
**Estándares de interoperabilidad:** STAC (OGC 25-004), COG (OGC 21-026), GeoParquet.

**Fases metodológicas (6):**
1. Diagnóstico e inventario de fuentes
2. Modelo espaciotemporal común
3. Protocolo de etiquetado de ignición
4. Pipeline reproducible
5. Dataset piloto Las Cabras
6. Validación (calidad, reproducibilidad, utilidad, interoperabilidad, adaptabilidad)

## Repositorio gen-ai-skills

Repositorio de biblioteca de instrucciones para IA, agnóstico al proveedor.  
Ruta: `C:\rutinas-local\gen-ai-skills-root\gen-ai-skills`  
Rama activa: `main`. Último commit: `da53c48`.

## Dominios relevantes para la tesis (mapa completo)

| Dominio | Uso en tesis | Estado |
|---|---|---|
| `skills/geoespacial/` | Pipeline central | 6 de 8 skills enriquecidas |
| `skills/ingenieria-software/` | Demo, notebooks, CLI, dashboard, contenedores | 4 skills nuevas + existentes |
| `skills/lenguaje-castellano/` | Redacción de la tesis | README completado con routing |
| `skills/precheck-publica-repo/` | Antes de publicar repositorio o dataset | Enriquecido con sección geoespacial |
| `skills/academia/` | Revisión de notebooks de pipeline | analisis_notebook_datos_estadistica enriquecido |
| `skills/operaciones-tecnologia/` | Entorno Linux, Bash, Podman | linux y virtualizacion enriquecidos |
| `skills/investigacion-general/` | Inventario de fuentes, diseño metodológico | Solo README leído — pendiente revisión interna |
| `skills/investigacion-ia/` | Estado del arte, lectura crítica | Solo README leído — pendiente revisión interna |
| `skills/ciencia-ingenieria-datos/` | Pipeline de datos, calidad, gobernanza | Solo README leído — pendiente revisión interna |
| `skills/desarrollo-ia/` | Programación asistida por IA | Sin cambios; pendiente evaluación |

## Entorno del usuario

- SO: Windows 11 Pro — shell principal: PowerShell + Git Bash disponible
- Runtime de contenedores: **Podman** (no Docker Desktop; evitar por licenciamiento)
- WSL2 disponible; para pipelines I/O-intensivos usar filesystem Linux nativo, no `/mnt/c/`
- Git user: Jorge Von Braun / buzondepitagoras@gmail.com

## Patrón de trabajo validado

Para tareas de escritura mecánica en el repositorio:
1. **Sonnet** diagnostica, diseña el plan y escribe `docs/plan.md` con sub-planes autocontenidos (archivo, ancla, contenido exacto).
2. **Haiku** lee el archivo, verifica el ancla y aplica el contenido sin reescribir nada.
3. **Sonnet** revisa, hace commit y push.

Costo de referencia: 4 archivos / 4 sub-planes → ~47K tokens Haiku en ~104 s.
