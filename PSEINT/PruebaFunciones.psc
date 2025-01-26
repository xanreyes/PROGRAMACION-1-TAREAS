// funcion que no recibe ni devuelve nada
Función Saludar
	Escribir 'Hola mundo!'
FinFunción

// funcion que recibe un argumento por valor, y devuelve su doble
Función res <- CalcularDoble(num)
	res <- num*2
FinFunción

// funcion que recibe un argumento por referencia, y lo modifica
Función Triplicar(num por referencia)
	num <- num*3
FinFunción

// proceso principal, que invoca a las funciones antes declaradas
Algoritmo PruebaFunciones // retorna el doble
	Escribir 'Llamada a la funcion Saludar:'
	Saludar()
	Escribir 'Ingrese un valor numérico para x:' // modifica la variable duplicando su valor
	Leer x
	Escribir 'Llamada a la función CalcularDoble (pasaje por valor)'
	Escribir 'El doble de ', x, ' es ', CalcularDoble(x)
	Escribir 'El valor original de x es ', x // como no recibe argumentos pueden omitirse los paréntesis vacios
	Escribir 'Llamada a la función Triplicar (pasaje por referencia)'
	Triplicar(x)
	Escribir 'El nuevo valor de x es ', x
	// Revisado por: Xander Reyes
FinAlgoritmo
