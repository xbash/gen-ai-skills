# Precheck publico de repositorio

Dominio operacional para revisar un repositorio antes de publicarlo o abrirlo
a terceros. Se enfoca en secretos, datos privados, archivos locales,
artefactos generados, licencias, documentacion y afirmaciones no verificadas.

## Archivos

| Archivo | Uso recomendado |
| --- | --- |
| `instrucciones_base_precheck.md` | Flujo base para revisar readiness publica de un repositorio. |

## Recomendacion de uso

Carga `instrucciones_base_precheck.md` cuando la tarea consista en preparar,
revisar o evaluar la publicacion de un repositorio. Agrega las reglas de
`ingenieria-software`, `seguridad-appsec` o `investigacion-ia` solo cuando la
tarea tenga una dependencia concreta de esos dominios.

El paquete ejecutable de referencia se encuentra en
`examples/precheck-publica-repo/`.
