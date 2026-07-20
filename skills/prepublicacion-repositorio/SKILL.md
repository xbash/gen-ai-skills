---
name: prepublicacion-repositorio
description: Revision previa a publicar un repositorio en GitHub u otro remoto publico. Usar cuando el usuario quiera subir, publicar, abrir, compartir o preparar un proyecto para GitHub y necesite detectar secretos, datos privados, archivos locales, artefactos generados, licencias incompletas, documentacion riesgosa o evidencia insuficiente antes de publicar.
---

# Prepublicacion Repositorio

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
