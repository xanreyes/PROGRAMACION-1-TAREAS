Algoritmo EjemploFechaHora
	fa <- FechaActual()
	anio <- trunc(fa/10000)
	mes <- trunc(fa/100) MOD 100 // retorna un solo nro entero en formato AAAAMMDD
	dia <- fa MOD 100
	Mientras Verdadero Hacer
		Limpiar Pantalla
		Escribir 'Fecha actual: ', dia, '/', mes, '/', anio
		ha <- HoraActual()
		hora <- trunc(ha/10000)
		min <- trunc(ha/100) MOD 100 // retorna un solo nro entero en formato HHMMSS
		seg <- ha MOD 100
		Escribir 'Hora Actual: ', hora, ':', min, ':', seg
		Esperar 1 Segundos
	FinMientras
	// Revisado por: Xander Reyes
FinAlgoritmo
