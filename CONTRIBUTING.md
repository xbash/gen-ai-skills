# Contributing

Este repositorio usa instrucciones Markdown por dominio. Las contribuciones deben mantener coherencia, modularidad y bajo ruido contextual.

## Como agregar o modificar un dominio

1. Crear o actualizar una carpeta en `skills/<dominio>/`.
2. Mantener un `README.md` con:
   - descripcion del dominio;
   - tabla de archivos;
   - recomendacion de uso;
   - principios del dominio.
3. Mantener un archivo base `00_instrucciones_base_*.md`.
4. Separar reglas especificas en archivos `NN_*_reglas.md`.
5. Incluir checklist cuando el dominio implique revision, decision, codigo, salud, seguridad, metodologia o entrega.
6. Crear `pack-chatgpt/` si el dominio tiene mas de 9 archivos raiz o si conviene una version compacta.

## Estilo

- Escribir en espanol claro, tecnico y accionable.
- Evitar textos enciclopedicos o repetitivos.
- No duplicar contenido extenso entre archivos raiz y packs.
- Usar listas y tablas cuando ayuden a cargar rapido el contexto.
- Mantener nombres de archivo en minusculas, con guiones bajos y numeracion estable.

## Reglas de rigor

- No inventar fuentes, leyes, papers, autores, datos, guias, benchmarks ni resultados.
- Separar hechos, supuestos, interpretaciones, recomendaciones y limites.
- En dominios sensibles, incluir limites claros y criterios de derivacion.
- En dominios tecnicos, incluir validacion, pruebas, seguridad y criterios de rollback cuando aplique.

## Pack ChatGPT

El directorio `pack-chatgpt/` debe contener una version compacta del dominio, normalmente entre 5 y 9 archivos. Debe preservar:

- base del dominio;
- reglas principales agrupadas por afinidad;
- checklist transversal;
- limites de seguridad o prudencia.

No debe reemplazar necesariamente los archivos raiz; funciona como version de carga reducida.
