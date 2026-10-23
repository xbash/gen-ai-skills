---
name: precheck-publica-repo
description: "Revisión previa a publicar un repositorio en GitHub u otro remoto público. Usar cuando el usuario quiera subir, publicar, abrir, compartir o preparar un proyecto para GitHub y necesite detectar secretos, datos privados, archivos locales, artefactos generados, licencias incompletas, documentación riesgosa o evidencia insuficiente antes de publicar."
---

# Precheck público de repositorio

Usar esta skill antes de publicar un repositorio o abrirlo a terceros. El objetivo es reducir el riesgo de exponer secretos, datos privados, artefactos locales o afirmaciones no verificadas.

## Principios

- No asumir que el repositorio está listo para GitHub sin revisar archivos reales.
- No borrar ni revertir archivos sin autorización explícita.
- No publicar, commitear, pushear ni crear PR salvo solicitud explícita.
- Distinguir hechos verificados, riesgos, pendientes y recomendaciones.
- Tratar datos reales de usuarios, rutas personales, tokens, llaves, cookies, backups y salidas históricas como potencialmente sensibles.

## Flujo recomendado

1. Identificar raíz del repositorio, estado Git, archivos ignorados y remoto de destino.
2. Revisar `AGENTS.md`, `README.md`, `LICENSE`, `.gitignore`, docs y archivos de configuración.
3. Determinar qué se publicaría realmente: `git ls-files` para lo versionado y `git status --short` para lo pendiente.
4. Buscar secretos y datos privados con patrones textuales, en el árbol y en el historial.
5. Buscar artefactos locales o generados que no deban publicarse.
6. Revisar las carpetas de configuración de agentes (ver más abajo).
7. Revisar históricos de datos y muestras incluidas en `archivo/`, `data/`, `logs/`, `output/`, `tmp/`, `descargas/` o similares.
8. Revisar licencias, atribuciones y afirmaciones de validación/publicación.
9. Entregar hallazgos por severidad con rutas concretas y acción recomendada.
10. Si se realizan cambios, validar con comandos proporcionales y documentar lo que no fue posible validar.

## Búsquedas útiles

Preferir `rg`. Si no está instalado, declararlo y usar `git grep` (para lo versionado) o `Select-String` en PowerShell.

```powershell
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(api[_-]?key|token|secret|password|passwd|pwd|bearer|authorization|cookie|client_secret|private key|BEGIN RSA|BEGIN OPENSSH|BEGIN PRIVATE)"
rg -n --hidden --glob '!\.git/**' --glob '!__pycache__/**' "(\.env|credentials|credenciales|secreto|secrets|id_rsa|\.pem|\.p12|\.pfx|\.sqlite|\.db|backup|\.bak)"
rg --files --hidden --glob '!\.git/**' | rg "(\.env$|\.pem$|\.key$|\.p12$|\.pfx$|\.sqlite$|\.db$|\.bak$|\.tmp$|\.log$|__pycache__|\.pyc$)"
```

## Revisar el historial

Un secreto borrado del árbol sigue publicado si está en commits anteriores. Con comandos de solo lectura:

```powershell
git log --all --oneline -- "*.env" "*.pem" "*.key" "*.sqlite" "*.db"
git log --all -p -S"BEGIN PRIVATE" --oneline
git log --all --oneline -G"(api[_-]?key|secret|password|token)\s*[=:]"
```

Si hay coincidencias, informar commit y ruta sin reproducir el valor. Recomendar rotar la credencial; reescribir el historial requiere autorización explícita.

## Carpetas de configuración de agentes

Revisar las carpetas ocultas de configuración de agentes de IA (por ejemplo `.agents/` y las que cree cada herramienta; detectarlas con `git ls-files` buscando directorios que empiezan con punto) cuando estén versionadas o vayan a publicarse. Pueden contener `settings.local.json`, permisos, rutas personales, memorias o historiales de sesión. Distinguir las skills y reglas compartibles de los archivos locales que no deben publicarse.

## Revisar datos sensibles

Buscar y clasificar:

- secretos: tokens, API keys, passwords, cookies, llaves privadas, certificados;
- datos personales: nombres, correos, teléfonos, RUT/DNI, direcciones, datos académicos/personales;
- rutas privadas: carpetas personales, rutas de usuario, rutas de red, nombres internos;
- datos operacionales: históricos completos, logs, checkpoints, dumps, bases SQLite, backups;
- artefactos generados: `__pycache__`, `.pyc`, logs, descargas, resultados grandes, checkpoints temporales;
- documentos con afirmaciones no verificadas: benchmarks, despliegue, validaciones, costos, tiempos o resultados.

## Revisar publicación GitHub

Verificar:

- `.gitignore` cubre entornos, cachés, logs, temporales, checkpoints, backups y salidas sensibles.
- `README.md` describe uso real y no promete validaciones no ejecutadas.
- `LICENSE` existe y contiene la licencia completa si se declara una licencia formal.
- `SECURITY.md` no expone canales privados no deseados.
- No hay archivos grandes o históricos que deban publicarse parcialmente o como muestra anónima.
- No hay datos derivados de servicios externos que infrinjan términos o privacidad.

## Criterios de salida

Responder con:

- Hallazgos, ordenados por severidad, con ruta y motivo.
- Acciones recomendadas: bloquear publicación, corregir antes de publicar, o aceptar riesgo.
- Cambios realizados, si se hicieron.
- Validaciones ejecutadas y limitaciones (por ejemplo, si no se revisó el historial o faltó `rg`).
- Pendientes antes de GitHub.

Si no hay hallazgos críticos, decirlo claramente, pero mencionar riesgos residuales y búsquedas ejecutadas.

## Severidad sugerida

- Crítico: secreto real (en el árbol o en el historial), llave privada, credencial, token, base de datos privada o datos personales sensibles.
- Alto: histórico/log con datos no destinados a publicación, licencia incompleta, dump, backup, archivo de configuración local riesgoso.
- Medio: rutas personales, checkpoints, resultados grandes, docs con afirmaciones no verificadas.
- Bajo: limpieza editorial, ejemplos obsoletos, archivos auxiliares no sensibles.
