# CONTEXT — Estado actual del repositorio

Fecha de corte: 2026-09-27  
Último commit: `e54314c` (rama `main`, sincronizada con origin)

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
| `skills/precheck-publica-repo/` | Publicación del repo/dataset al cierre | Enriquecido + checklist nuevo (`fdccd92`) |
| `skills/academia/` | Revisión de notebooks de pipeline | `analisis_notebook_datos_estadistica` enriquecido (`da53c48`) |
| `skills/operaciones-tecnologia/` | Linux, Bash, Podman | `linux` y `virtualizacion` enriquecidos (`da53c48`) |
| `skills/seguridad-appsec/` | Secrets, contenedores, supply chain | 4 skills enriquecidas — Podman, python-dotenv, pip-audit (`fdccd92`) |
| `skills/seguridad-opsec/` | OWASP LLM, privacidad, escaneo | 3 skills enriquecidas — Ley 19.628/21.719, Trivy/Grype (`fdccd92`) |
| `skills/vision-por-computadora/` | Repaso diplomado IA | 4 skills enriquecidas — timm, YOLOv8, SMP/SAM2, VLM table (`fdccd92`) |
| `skills/investigacion-general/` | Diseño metodológico | Enriquecido — leakage espaciotemporal, spatial CV (`3eb603b`) |
| `skills/investigacion-ia/` | Estado del arte, reproducibilidad | Enriquecido — STAC/COG/DVC, baseline ignición (`3eb603b`) |
| `skills/ciencia-ingenieria-datos/` | Pipeline, gobernanza, privacidad | Enriquecido — pipeline geoespacial, Ley 19.628 (`3eb603b`) |
| `skills/desarrollo-ia/` | Modelo baseline | Enriquecido — spatial CV, AUPRC para eventos raros (`e54314c`) |

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
