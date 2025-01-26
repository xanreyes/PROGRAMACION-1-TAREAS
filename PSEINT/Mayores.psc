// Busca los dos mayores de una lista de N datos
Algoritmo Mayores
	// primero se declara un arreglo de 200 elementos
	Dimensionar datos(200)
	// luego se pide al usuario ingresar la cantidad de datos, 
	// que no debera ser mayor a 200
	Escribir 'Ingrese la cantidad de datos (de 2 a 200):'
	Leer n
	// se leen uno por uno los 200 datos y se los guarda en el arreglo
	Para i<-1 Hasta n Hacer
		Escribir 'Ingrese el dato ', i, ':'
		Leer datos[i]
	FinPara
	// se comparan los dos primeros y se toman como may1 (el mayor de los
	// dos) y may2 (el segundo mayor).
	Si datos[1]>datos[2] Entonces
		may1 <- datos[1]
		may2 <- datos[2]
	SiNo
		may1 <- datos[2]
		may2 <- datos[1]
	FinSi
	// se recorren los demas elementos buscan si hay alguno mayor que may1 o may2
	Para i<-3 Hasta n Hacer
		Si datos[i]>may1 Entonces
			may2 <- may1 // si hay un valor mayor que may1
			may1 <- datos[i] // como may1 era el m�s grande, pasa a estar en segundo lugar
		SiNo // y el nuevo dato toma el primer puesto (mayor de todos)
			Si datos[i]>may2 Entonces // si no era mas grande que may1, todavia puede ser mas grande que may2
				may2 <- datos[i] // si supera al segundo mayor que teniamos
			FinSi // se lo guarda como segundo mayor
		FinSi
	FinPara
	// se muestran los resultados
	Escribir 'El mayor es: ', may1
	Escribir 'El segundo mayor es: ', may2
	// Revisado por:Xander Reyes
FinAlgoritmo
