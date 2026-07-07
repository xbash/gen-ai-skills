# Reglas específicas — Redes, conectividad y firewall

## Alcance

Aplicar cuando la tarea involucre validación de puertos, conectividad, DNS, proxy, firewall, rutas, escucha sintética, balanceadores, TLS, NTP, HTTP/S, FTP/SFTP, VPN, NAT, segmentación de red o diagnóstico de latencia.

## Buenas prácticas

- Distinguir origen, destino, puerto, protocolo, sentido del tráfico, ambiente y ventana de prueba.
- Validar si la prueba requiere TCP, UDP, ICMP, HTTP, TLS, FTP, SFTP, DNS, NTP u otro protocolo.
- No confundir puerto abierto con servicio funcional; diferenciar conectividad, handshake, autenticación y respuesta de aplicación.
- Registrar host origen, host destino, IP resuelta, puerto, protocolo, fecha/hora, resultado, latencia y error.
- Evitar pruebas intrusivas o escaneo amplio sin autorización.
- Para listeners sintéticos, limitar puertos/hosts permitidos y registrar conexiones entrantes.
- Considerar firewalls locales, firewalls perimetrales, ACLs, proxies, NAT, DNS, rutas, balanceadores y certificados.
- No dejar servicios sintéticos escuchando sin control, logging y limpieza.

## Diagnóstico

- Validar resolución DNS y conectividad por IP para aislar problemas.
- Probar desde el origen real y, cuando aplique, desde destino o salto intermedio.
- Confirmar puerto escuchando con herramientas del sistema antes de culpar la red.
- En Linux, considerar `ss`, `ip route`, `resolvectl`, `dig`, `curl`, `openssl s_client`, `firewall-cmd`, `iptables` o `nftables`.
- En Windows, considerar `Test-NetConnection`, `Resolve-DnsName`, `netstat`, `Get-NetTCPConnection`, Firewall de Windows y logs.
- Para TLS, revisar SNI, cadena de certificados, vigencia, hostname, protocolo y cipher si aplica.

## Cambios de firewall

- Declarar origen permitido, destino, puerto, protocolo, justificación, ambiente, vigencia y reversa.
- Preferir aperturas acotadas por origen/destino frente a reglas amplias.
- Validar impacto, conflicto con reglas existentes y evidencia de necesidad.

## Riesgos habituales

- Interpretar timeout como causa única.
- Probar desde un host distinto al real.
- Olvidar UDP o protocolos con canales dinámicos.
- Abrir puertos sin control de origen.
- Confundir proxy HTTP con conectividad TCP directa.
- Ignorar DNS split-horizon, balanceadores o inspección TLS.
