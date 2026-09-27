# CONTEXT — Estado actual del repositorio

Fecha de corte: 2026-09-26  
Último commit: `eebc113` (rama `main`, sincronizada con origin)

---

## Proyecto activo: Tesis Magíster TI — UChile

**Alumno:** Jorge Antonio Sepúlveda Sepúlveda  
**Título:** "Metodología reproducible para construir datasets geoespaciales de ignición de incendios rurales a escala comunal"  
**Contribución:** metodología + pipeline reproducible (NO un sistema predictivo)  
**Caso piloto:** Las Cabras, Región de O'Higgins  
**Unidad de análisis:** celda-día (200 m × 200 m + fecha), horizonte 24-72 h, variable objetivo binaria ignición/no-ignición  
**PDF de referencia:** `C:\universidad-local\uchile\mgtr-ti\sem03-2026\cc79g-tesis-grado-i\clase1-20260819\Propuesta_de_tesis_jsepuls_v4.2.5.pdf`

**Fuentes:** CONAF (registros), ERA5 (meteorología), Sentinel-2, VIIRS I-Band 375m, dNBR/EFFIS  
**Estándares:** STAC (OGC 25-004), COG (OGC 21-026), GeoParquet

---

## Mapa de dominios relevantes para la tesis

| Dominio | Uso | Estado |
|---|---|---|
| `skills/geoespacial/` | Pipeline central | 6/8 skills enriquecidas (`33335cf`) |
| `skills/ingenieria-software/` | Demo, CLI, notebooks, dashboard, contenedor | 4 skills nuevas (`1aa6a54`, `24a85b3`) |
| `skills/lenguaje-castellano/` | Redacción de tesis | README completado con routing (`4c73f26`) |
| `skills/precheck-publica-repo/` | Publicación del repo/dataset al cierre | Enriquecido con sección geoespacial (`da53c48`) |
| `skills/academia/` | Revisión de notebooks de pipeline | `analisis_notebook_datos_estadistica` enriquecido (`da53c48`) |
| `skills/operaciones-tecnologia/` | Linux, Bash, Podman | `linux` y `virtualizacion` enriquecidos (`da53c48`) |
| `skills/investigacion-general/` | Inventario de fuentes, diseño metodológico | **Solo README leído — pendiente revisión interna** |
| `skills/investigacion-ia/` | Estado del arte, lectura crítica | **Solo README leído — pendiente revisión interna** |
| `skills/ciencia-ingenieria-datos/` | Pipeline de datos, calidad, gobernanza | **Solo README leído — pendiente revisión interna** |
| `skills/desarrollo-ia/` | Programación asistida por IA | Sin cambios; pendiente evaluación de relevancia |

## Entorno del usuario

- SO: Windows 11 Pro; PowerShell principal + Git Bash disponible
- Runtime de contenedores: **Podman** (no Docker Desktop — requiere licencia comercial)
- WSL2 disponible; para pipelines I/O-intensivos usar filesystem Linux nativo, no `/mnt/c/`
- Git: Jorge Von Braun / buzondepitagoras@gmail.com

## Patrón de trabajo validado (Ejecutor económico)

1. **Sonnet** diagnostica y escribe `docs/plan.md` con sub-planes autocontenidos (archivo, ancla, contenido exacto).
2. **Haiku** lee el archivo objetivo, verifica que el ancla exista, inserta el contenido al final. No elimina ni reescribe.
3. **Sonnet** revisa, hace commit y push.

Costo de referencia: 4 archivos / 4 sub-planes → ~47 K tokens Haiku en ~104 s.
