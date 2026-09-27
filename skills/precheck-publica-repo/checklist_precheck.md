# Checklist de pre-publicación de repositorio

Completar de arriba a abajo antes de cualquier `git push`, publicación en GitHub
o envío del repositorio a terceros. Marcar cada ítem o documentar por qué no aplica.

---

## 1. Estado Git y archivos raíz

- [ ] `git status` revisado: sin archivos no deseados en staging ni sin trackear.
- [ ] `.gitignore` cubre entornos (`venv/`, `.venv/`, `__pycache__/`, `*.pyc`), caches, logs, temporales, checkpoints, backups y salidas sensibles.
- [ ] `README.md` existe, describe el uso real y no promete validaciones no ejecutadas.
- [ ] `LICENSE` existe y contiene la licencia completa si se declara una licencia formal.
- [ ] `SECURITY.md`, si existe, no expone canales privados no deseados.

---

## 2. Secretos y credenciales

Ejecutar antes de revisar manualmente:

```powershell
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(api[_-]?key|token|secret|password|passwd|pwd|bearer|authorization|cookie|client_secret|private key|BEGIN RSA|BEGIN OPENSSH|BEGIN PRIVATE)"
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(\.env|credentials|credenciales|secreto|secrets|id_rsa|\.pem|\.p12|\.pfx|\.sqlite|\.db|backup|\.bak)"
rg --files --hidden --glob '!\.git/**' | rg "(\.env$|\.pem$|\.key$|\.p12$|\.pfx$|\.sqlite$|\.db$|\.bak$|\.tmp$|\.log$|__pycache__|\.pyc$)"
```

- [ ] Sin tokens, API keys, passwords, cookies ni llaves privadas encontrados.
- [ ] Sin certificados (`.pem`, `.p12`, `.pfx`) commiteados.
- [ ] Sin bases de datos locales (`.sqlite`, `.db`) con datos reales.
- [ ] Variables de entorno en `.env` excluidas por `.gitignore`; solo existe `.env.example` sin valores reales.

---

## 3. Datos personales y sensibles

- [ ] Sin nombres, correos, teléfonos, RUT/DNI ni direcciones en archivos commiteados.
- [ ] Sin datos académicos o personales de terceros (encuestas, entrevistas, registros de campo con identificadores).
- [ ] Sin rutas privadas de usuario (`C:\Users\nombre`, `/home/usuario`, rutas de red internas).
- [ ] Sin datos operacionales no destinados a publicación: logs históricos, dumps, backups, bases de datos completas.

---

## 4. Artefactos generados y archivos locales

- [ ] Sin archivos `__pycache__/`, `.pyc` commiteados.
- [ ] Sin resultados grandes, checkpoints de modelo o descargas intermedias en el historial.
- [ ] Sin archivos de configuración IDE (`.idea/`, `.vscode/settings.json` con rutas locales) comprometedores.
- [ ] Sin notebooks con outputs que contengan datos privados (usar `nbstripout` antes del commit final).

---

## 5. Licencias, atribuciones y afirmaciones

- [ ] Cada fuente de datos externa tiene su licencia declarada en `README.md` o `ATTRIBUTIONS.md`.
- [ ] No se redistribuyen datos de fuentes con licencia restrictiva sin verificar términos.
- [ ] Las afirmaciones de validación, benchmarks, costos, tiempos y resultados en `README.md` son verificadas o están marcadas como aproximaciones.
- [ ] No se promete reproducibilidad sin instrucciones suficientes para ejecutar el pipeline desde cero.

---

## 6. Datasets geoespaciales (si aplica)

- [ ] Archivos raster (`.tif`, `.tiff`, `.nc`), tabulares grandes (`.parquet`, `.geojson` > 100 MB) excluidos del repo Git.
- [ ] Los datos están alojados en repositorio externo (Zenodo, Figshare, OSF) o accesibles vía STAC/COG, con URL documentada en `README.md`.
- [ ] Directorios `data/`, `raw/`, `output/` sin datos crudos commiteados accidentalmente.
- [ ] Licencias de fuentes geoespaciales declaradas (ERA5 → Copernicus License v1.2; Sentinel-2 → atribución ESA; VIIRS → NASA dominio público; CONAF → verificar términos vigentes).
- [ ] Registros de ignición o puntos de campo evaluados: ¿exponen predios privados? Si sí → aplicar spatial jitter o publicar solo a nivel de celda/grilla.
- [ ] Sin nombres de propietarios, RUT ni direcciones asociadas a registros de campo.

---

## 7. Publicación académica (si aplica)

- [ ] `datasheet.md` o sección equivalente documenta: origen de cada variable, método de recolección, limitaciones, sesgos, fecha de corte y versión del dataset.
- [ ] `README.md` incluye cómo citar el repositorio o dataset (BibTeX o APA con DOI si está en Zenodo/Figshare).
- [ ] Pipeline reproducible: un tercero puede ejecutarlo desde cero siguiendo solo el `README.md`, sin archivos locales no documentados.
- [ ] Notebooks limpios de outputs antes del commit final (`nbstripout` o equivalente ejecutado).
- [ ] DOI obtenido y registrado si el dataset se publica en Zenodo/Figshare.

---

## 8. Resumen de hallazgos

Completar antes de decidir la acción final:

| Severidad | Cantidad | Descripción breve |
|---|---|---|
| Crítico | | |
| Alto | | |
| Medio | | |
| Bajo | | |

**Decisión:**

- [ ] Listo para publicar — sin hallazgos críticos ni altos sin resolver.
- [ ] Publicar con riesgos residuales documentados (listar).
- [ ] Bloquear publicación — requiere correcciones antes de proceder.

**Búsquedas ejecutadas:** (registrar comandos o herramientas usadas)

**Cambios realizados:** (listar archivos modificados y motivo)

**Pendientes antes de GitHub:** (listar cualquier tarea restante)
