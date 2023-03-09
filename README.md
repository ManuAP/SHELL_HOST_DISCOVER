<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<h1>Host Discover</h1>
	<p>Script en bash para descubrir hosts en una red determinada mediante el uso de ping.</p>
	<h2>Uso</h2>
	<p>El script recibe un segmento de red como argumento. Por ejemplo:</p>
	<code>./host_discover.sh 192.168.1</code>
	<p>El formato de la dirección de red debe ser el siguiente: XXX.XXX.XXX. Sin el último número.</p>
	<p>El script descubrirá todos los hosts activos en la red y mostrará una lista de ellos al finalizar la búsqueda.</p>
	<h2>Ejemplo</h2>
	<p>Para buscar hosts activos en la red 192.168.1.0/24, se debe ejecutar el siguiente comando:</p>
	<code>./host_discover.sh 192.168.1</code>
	<p>El script mostrará una lista de hosts activos en la red:</p>
	<pre>
