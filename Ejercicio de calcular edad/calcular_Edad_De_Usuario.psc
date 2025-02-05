Algoritmo calcular_Edad_De_Usuario
	Definir anioDeNacimiento Como Entero
	Definir mesDeNacimiento Como Entero
	Definir edadDelUsuario Como Entero
	Definir anioAproxUsuario Como Entero
	Definir anioConvertidoMes Como Entero
	Escribir 'Bienvenido a un programa el cual permite calcular la edad del usurio'
	Escribir 'Ingrese año de nacimiento'
	Leer anioDeNacimiento
	Escribir 'Ingrese mes de nacimiento, (Ingreselo como numero de mes 1-12)'
	Leer mesDeNacimiento
	anioAproxUsuario <- 2025-anioDeNacimiento
	anioConvertidoMes <- (anioAproxUsuario*12)
	edadDelUsuario <- trunc((anioConvertidoMes-mesDeNacimiento)/12)
	Escribir 'Usted tiene ', edadDelUsuario, ' años'
FinAlgoritmo
