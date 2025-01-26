// funcion que no recibe ni devuelve nada
Funci�n Saludar
	Escribir 'Hola mundo!'
FinFunci�n

// funcion que recibe un argumento por valor, y devuelve su doble
Funci�n res <- CalcularDoble(num)
	res <- num*2
FinFunci�n

// funcion que recibe un argumento por referencia, y lo modifica
Funci�n Triplicar(num por referencia)
	num <- num*3
FinFunci�n

// proceso principal, que invoca a las funciones antes declaradas
Algoritmo PruebaFunciones // retorna el doble
	Escribir 'Llamada a la funcion Saludar:'
	Saludar()
	Escribir 'Ingrese un valor num�rico para x:' // modifica la variable duplicando su valor
	Leer x
	Escribir 'Llamada a la funci�n CalcularDoble (pasaje por valor)'
	Escribir 'El doble de ', x, ' es ', CalcularDoble(x)
	Escribir 'El valor original de x es ', x // como no recibe argumentos pueden omitirse los par�ntesis vacios
	Escribir 'Llamada a la funci�n Triplicar (pasaje por referencia)'
	Triplicar(x)
	Escribir 'El nuevo valor de x es ', x
	// Revisado por: Xander Reyes
FinAlgoritmo
