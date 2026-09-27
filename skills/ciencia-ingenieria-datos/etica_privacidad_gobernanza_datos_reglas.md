# Reglas especificas - Etica, privacidad y gobernanza de datos

## Alcance
Datos personales, datos sensibles, privacidad, seguridad, gobernanza, catalogos, linaje, stewardship, calidad institucional, acceso, retencion, cumplimiento, sesgos, fairness y uso responsable.

## Usar cuando

Hay datos personales o sensibles, decisiones automatizadas, requisitos de acceso, retención, cumplimiento, sesgo o uso responsable. No usar como sustituto de asesoría legal o de seguridad especializada.

## Reglas
- Identifica tipo de dato, finalidad, base de uso, responsable, owner, custodio, consumidores, acceso, retencion y riesgos.
- Aplica minimizacion: recolectar, procesar y exponer solo lo necesario para el objetivo declarado.
- Distingue anonimization, seudonimizacion, agregacion, mascaramiento, tokenizacion, cifrado y control de acceso.
- Evalua sesgos de recoleccion, representacion, medicion, etiquetado, procesamiento, modelamiento y uso.
- Documenta linaje: origen, transformaciones, responsables, versiones, fechas, reglas de negocio y calidad.
- Define catalogo y metadatos: descripcion, owner, SLA, frescura, sensibilidad, licencia, restricciones y ejemplos de uso.
- Considera seguridad: minimo privilegio, segregacion de ambientes, secretos, auditoria, logs, cifrado, respaldos y revocacion de accesos.
- En decisiones automatizadas, revisa explicabilidad, impacto, supervision humana, mecanismos de apelacion y monitoreo de dano.
- No propongas usos discriminatorios, intrusivos, opacos o contrarios a derechos.
- Declara incertidumbre legal cuando una recomendacion dependa de normativa vigente y sugiere validacion especializada.

## Validacion minima
Finalidad legitima, datos minimizados, accesos controlados, linaje documentado, riesgos evaluados y responsable definido.

## Datos geoespaciales y privacidad en investigación chilena

### Marco legal aplicable (Chile)

- **Ley 19.628** (vigente): protección de datos de carácter personal; aplica a registros de campo con propietarios, nombres o RUT asociados a coordenadas de ignición.
- **Ley 21.719** (en tramitación): modernización de la ley de datos personales; anticipa principios de minimización, finalidad y proporcionalidad más estrictos.
- Datos de ignición con coordenadas precisas combinados con registros catastrales pueden identificar predios y propietarios: aplicar los principios de minimización y finalidad antes de publicar.

### Tratamiento de coordenadas sensibles

- Evaluar si las coordenadas brutas de inicio de incendio son necesarias para el objetivo declarado (metodología reproducible a escala comunal) o si la grilla de 200 m es suficiente.
- Si se publican coordenadas brutas: aplicar **spatial jitter** (desplazamiento aleatorio ≤ resolución de celda) o agregar solo a nivel de grilla antes de publicar.
- Nunca incluir nombres de propietarios, RUT, direcciones ni datos de campo con identificadores en el repositorio o dataset público.

### Clasificación de sensibilidad para datasets de investigación

| Nivel | Contenido | Tratamiento |
|---|---|---|
| Público | Grilla agregada, índices, métricas por celda sin identificadores | Publicable en Zenodo/Figshare |
| Uso restringido | Coordenadas brutas de ignición sin datos personales | Disponible bajo solicitud con protocolo de uso |
| Privado | Registros con propietarios, RUT o datos de campo identificables | No publicar; anonimizar antes de cualquier uso |
