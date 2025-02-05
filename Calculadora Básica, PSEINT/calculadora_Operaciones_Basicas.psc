Algoritmo calculadora_Operaciones_Basicas
	Definir valorDeNum1, valorDeNum2 Como Real
	Definir numeroDeOpcion Como Entero
	Definir resultadoDeOperacion Como Real
	Escribir 'Calculadora basica de cuatro operaciones'
	Escribir 'Suma, Resta, Multiplicacion y Division'
	Escribir 'Ingrese el primer valor a operar'
	Leer valorDeNum1
	Escribir 'Ingrese el segundo valor a operar'
	Leer valorDeNum2
	Escribir 'Seleccione el numero de insiso para realizar la operacion deseada: '
	Escribir '1) Suma'
	Escribir '2) Resta'
	Escribir '3) Multiplicacion'
	Escribir '4) Division'
	Leer numeroDeOpcion
	Si numeroDeOpcion=4 Y valorDeNum2=0 Entonces
		Escribir 'Ingrese un numero diferente de 0'
	SiNo
		Según numeroDeOpcion Hacer
			1:
				resultadoDeOperacion <- valorDeNum1+valorDeNum2
			2:
				resultadoDeOperacion <- valorDeNum1-valorDeNum2
			3:
				resultadoDeOperacion <- valorDeNum1*valorDeNum2
			4:
				resultadoDeOperacion <- valorDeNum1/valorDeNum2
			De Otro Modo:
				Escribir 'Ingrese una opcion válida'
		FinSegún
		Según numeroDeOpcion Hacer
			1:
				Escribir 'El resultado de la suma es: ', resultadoDeOperacion
			2:
				Escribir 'El resultado de la resta es: ', resultadoDeOperacion
			3:
				Escribir 'El resultado de la multiplicación es: ', resultadoDeOperacion
			4:
				Escribir 'El resultado de la división es: ', resultadoDeOperacion
		FinSegún
	FinSi
FinAlgoritmo
