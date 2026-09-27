# Precheck publico de repositorio

Usar esta skill antes de publicar un repositorio o abrirlo a terceros. El objetivo es reducir el riesgo de exponer secretos, datos privados, artefactos locales o afirmaciones no verificadas.

## Principios

- No asumir que el repositorio esta listo para GitHub sin revisar archivos reales.
- No borrar ni revertir archivos sin autorizacion explicita.
- No publicar, commitear, pushear ni crear PR salvo solicitud explicita.
- Distinguir hechos verificados, riesgos, pendientes y recomendaciones.
- Tratar datos reales de usuarios, rutas personales, tokens, llaves, cookies, backups y salidas historicas como potencialmente sensibles.

## Flujo recomendado

1. Identificar raiz del repositorio, estado Git y archivos ignorados.
2. Revisar `AGENTS.md`, `README.md`, `LICENSE`, `.gitignore`, docs y archivos de configuracion.
3. Buscar secretos y datos privados con patrones textuales.
4. Buscar artefactos locales o generados que no deban publicarse.
5. Revisar historicos de datos y muestras incluidas en `archivo/`, `data/`, `logs/`, `output/`, `tmp/`, `descargas/` o similares.
6. Revisar licencias, atribuciones y afirmaciones de validacion/publicacion.
7. Entregar hallazgos por severidad con rutas concretas y accion recomendada.
8. Si se realizan cambios, validar con comandos proporcionales y documentar lo que no fue posible validar.

## Busquedas utiles

Preferir `rg`.

```powershell
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(api[_-]?key|token|secret|password|passwd|pwd|bearer|authorization|cookie|client_secret|private key|BEGIN RSA|BEGIN OPENSSH|BEGIN PRIVATE)"
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(\.env|credentials|credenciales|secreto|secrets|id_rsa|\.pem|\.p12|\.pfx|\.sqlite|\.db|backup|\.bak)"
rg --files --hidden --glob '!\.git/**' | rg "(\.env$|\.pem$|\.key$|\.p12$|\.pfx$|\.sqlite$|\.db$|\.bak$|\.tmp$|\.log$|__pycache__|\.pyc$)"
```

## Revisar datos sensibles

Buscar y clasificar:

- secretos: tokens, API keys, passwords, cookies, llaves privadas, certificados;
- datos personales: nombres, correos, telefonos, RUT/DNI, direcciones, datos academicos/personales;
- rutas privadas: carpetas personales, rutas de usuario, rutas de red, nombres internos;
- datos operacionales: historicos completos, logs, checkpoints, dumps, bases SQLite, backups;
- artefactos generados: `__pycache__`, `.pyc`, logs, descargas, resultados grandes, checkpoints temporales;
- documentos con afirmaciones no verificadas: benchmarks, despliegue, validaciones, costos, tiempos o resultados.

## Revisar publicacion GitHub

Verificar:

- `.gitignore` cubre entornos, caches, logs, temporales, checkpoints, backups y salidas sensibles.
- `README.md` describe uso real y no promete validaciones no ejecutadas.
- `LICENSE` existe y contiene la licencia completa si se declara una licencia formal.
- `SECURITY.md` no expone canales privados no deseados.
- No hay archivos grandes o historicos que deban publicarse parcialmente o como muestra anonima.
- No hay datos derivados de servicios externos que infrinjan terminos o privacidad.

## Criterios de salida

Responder con:

- Hallazgos, ordenados por severidad, con ruta y motivo.
- Acciones recomendadas: bloquear publicacion, corregir antes de publicar, o aceptar riesgo.
- Cambios realizados, si se hicieron.
- Validaciones ejecutadas y limitaciones.
- Pendientes antes de GitHub.

Si no hay hallazgos criticos, decirlo claramente, pero mencionar riesgos residuales y busquedas ejecutadas.

## Severidad sugerida

- Critico: secreto real, llave privada, credencial, token, base de datos privada o datos personales sensibles.
- Alto: historico/log con datos no destinados a publicacion, licencia incompleta, dump, backup, archivo de configuracion local riesgoso.
- Medio: rutas personales, checkpoints, resultados grandes, docs con afirmaciones no verificadas.
- Bajo: limpieza editorial, ejemplos obsoletos, archivos auxiliares no sensibles.

## Datasets geoespaciales y publicación académica

Aplicar cuando el repositorio incluya datos raster, vectoriales o tabulares de origen geoespacial, o cuando la publicación sea un producto académico (tesis, artículo, dataset de investigación).

### Archivos grandes y datos externos

- Los archivos raster (GeoTIFF, COG, NetCDF) y tabulares grandes (GeoParquet, CSV con coordenadas) no deben estar en el repositorio Git. Verificar que `.gitignore` excluya extensiones como `.tif`, `.tiff`, `.nc`, `.parquet`, `.geojson` si superan el límite de GitHub (100 MB).
- Los datos deben estar alojados en un repositorio de datos externo (Zenodo, Figshare, OSF) o accesibles vía STAC/COG. El README debe documentar cómo obtenerlos.
- Verificar que no existan archivos `data/`, `raw/`, `output/` con datos crudos commiteados accidentalmente.

### Licencias de fuentes geoespaciales

Verificar que el README o un archivo `ATTRIBUTIONS.md` declare la licencia de cada fuente de datos utilizada:

| Fuente habitual | Licencia / restricción |
|---|---|
| ERA5 (Copernicus Climate Change Service) | Copernicus License v1.2 — requiere atribución; redistribución permitida con condiciones |
| Sentinel-2 (ESA/Copernicus) | Acceso libre; requiere atribución "Contains modified Copernicus Sentinel data [año]" |
| VIIRS (NASA FIRMS) | Dominio público (NASA); requiere atribución |
| CONAF (Chile) | Verificar términos vigentes; datos derivados pueden requerir autorización |
| OpenStreetMap | ODbL — requiere atribución y share-alike si se redistribuyen datos derivados |

No publicar datos de fuentes con restricciones sin verificar si el producto derivado cumple los términos.

### Datos sensibles geoespaciales

- Registros de ignición con coordenadas precisas pueden identificar predios privados. Evaluar si corresponde agregar desplazamiento espacial (spatial jitter) o publicar solo a nivel de celda/grilla.
- Nombres de propietarios, direcciones o RUT asociados a registros de campo nunca deben estar en el repositorio.

### Publicación académica del dataset

Antes de publicar el repositorio final de tesis, verificar:

- Existe un `datasheet.md` o sección equivalente que documente: origen de cada variable, método de recolección, limitaciones conocidas, sesgos, fecha de corte y versión.
- El README incluye cómo citar el dataset (formato BibTeX o APA con DOI si está en Zenodo/Figshare).
- El pipeline es reproducible desde cero siguiendo solo las instrucciones del README (sin archivos locales no documentados).
- Los notebooks están sin outputs si se publican como código fuente (usar `nbstripout` o equivalente antes del commit final).

### Severidad adicional para datasets geoespaciales

- **Crítico:** datos personales o prediales identificables commiteados en el repo.
- **Alto:** datos raster grandes (>50 MB) en el historial Git; fuentes con licencia restrictiva redistribuidas sin verificación.
- **Medio:** falta de datasheet o atribución de fuentes; notebooks con outputs de datos privados.
- **Bajo:** extensiones geoespaciales no cubiertas por `.gitignore`; README sin instrucciones de descarga de datos.
