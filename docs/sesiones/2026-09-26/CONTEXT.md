# CONTEXT — Sesión 2026-09-26

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
Rama activa: `main`. Último commit relevante: `4c73f26`.

## Dominios relevantes para la tesis (mapa completo)

| Dominio | Uso en tesis |
|---|---|
| `skills/geoespacial/` | Pipeline central — 6 de 8 skills enriquecidas esta sesión |
| `skills/investigacion-general/` | Inventario de fuentes, diseño metodológico |
| `skills/investigacion-ia/` | Estado del arte, lectura crítica, redacción académica |
| `skills/ciencia-ingenieria-datos/` | Pipeline de datos, calidad, gobernanza |
| `skills/lenguaje-castellano/` | Redacción de la tesis |
| `skills/desarrollo-ia/` | Programación asistida por IA |
| `skills/ingenieria-software/` | Demo, notebooks, CLI, dashboard, contenedores |
| `skills/precheck-publica-repo/` | Antes de publicar repositorio o dataset |
| `skills/academia/` | Gestión de notebooks académicos |
| `skills/operaciones-tecnologia/` | Entorno Linux, bash, Podman |

## Entorno del usuario

- SO: Windows 11 Pro — shell principal: PowerShell + Git Bash disponible
- Runtime de contenedores: **Podman** (no Docker Desktop; evitar por licenciamiento)
- Git user: Jorge Von Braun
- Email: buzondepitagoras@gmail.com
