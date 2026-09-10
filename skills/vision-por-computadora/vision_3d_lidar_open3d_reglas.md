# Reglas específicas — Visión 3D, LiDAR, nubes de puntos y Open3D

## Alcance

Aplicar cuando la tarea involucre visión 3D, estéreo, triangulación, luz estructurada, time of flight, LiDAR, mapas de profundidad, point clouds, Open3D, metrología, registro, meshing, bin picking o análisis de superficies.

## Captura y datos 3D

- Definir sensor: estéreo, structured light, ToF, LiDAR, RGB-D, escáner 3D u otro.
- Documentar sistema de coordenadas, unidades, calibración, resolución, ruido, rango, densidad y precisión esperada.
- Validar nubes de puntos: puntos inválidos, outliers, densidad, normales, escala, orientación, duplicados y partes faltantes.
- Conservar trazabilidad entre imagen, profundidad, nube de puntos, malla, cámara y calibración.

## Procesamiento 3D

- Considerar downsampling, eliminación de outliers, estimación de normales, segmentación de planos, clustering y extracción de features.
- Para registro, usar ICP, RANSAC 3D u otros métodos documentando correspondencias, inicialización y criterio de convergencia.
- Para meshing, documentar método, suavizado, huecos, resolución y pérdida de detalle.
- Para medición, validar escala, calibración, tolerancias y error esperado.

## Reconocimiento y robótica

- Para reconocimiento 3D, definir si se busca detección, segmentación, pose, matching o medición.
- Para bin picking, considerar oclusiones, colisiones, pose 6D, grasping, calibración mano-ojo y seguridad.
- Para metrología industrial, declarar tolerancias, repetibilidad, incertidumbre y condiciones de captura.

## Evaluación

- Usar métricas de distancia, error de registro, error de profundidad, cobertura, precisión de pose o métricas de segmentación 3D según la tarea.
- Analizar errores por material reflectante, transparencia, geometría del objeto, ruido, sombras, oclusiones y rango del sensor.

## Implementación

- Validar formatos PLY/PCD/OBJ/STL, tamaño de archivos, memoria y visualización.
- Incluir prueba mínima con nube pequeña o muestra sintética.
