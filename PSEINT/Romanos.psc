Algoritmo Romanos
	// leer el n�mero
	Escribir 'Ingrese un n�mero entre 1 y 1000'
	Leer Numero
	// controlar que sea v�lido para convertir
	SePuedeConvertir <- Verdadero
	Si Numero=0 Entonces
		Escribir 'No existe ning�n s�mbolo para representar el 0'
		SePuedeConvertir <- Falso
	FinSi
	Si Numero<>trunc(Numero) Entonces
		Escribir 'El n�mero debe ser entero'
		SePuedeConvertir <- Falso
	FinSi
	Si Numero>1000 Entonces
		Escribir 'Muy alto'
		SePuedeConvertir <- Falso
	FinSi
	Si Numero<0 Entonces
		Escribir 'Debe ser positivo'
		SePuedeConvertir <- Falso
	FinSi
	// realizar la conversi�n
	Si SePuedeConvertir Entonces
		Si Numero=1000 Entonces
			Escribir 'M'
		SiNo
			Dimensionar nu(10), nd(10), nc(10)
			nu[1] <- '' // notaci�n para unidades, decenas y centenas
			nu[2] <- 'I'
			nu[3] <- 'II'
			nu[4] <- 'III'
			nu[5] <- 'IV'
			nu[6] <- 'V'
			nu[7] <- 'VI'
			nu[8] <- 'VII'
			nu[9] <- 'VIII'
			nu[10] <- 'IX'
			nd[1] <- ''
			nd[2] <- 'X'
			nd[3] <- 'XX'
			nd[4] <- 'XXX'
			nd[5] <- 'XL'
			nd[6] <- 'L'
			nd[7] <- 'LX'
			nd[8] <- 'LXX'
			nd[9] <- 'LXXX'
			nd[10] <- 'XC'
			nc[1] <- ''
			nc[2] <- 'C'
			nc[3] <- 'CC'
			nc[4] <- 'CCC'
			nc[5] <- 'CD'
			nc[6] <- 'D'
			nc[7] <- 'DC'
			nc[8] <- 'DCC'
			nc[9] <- 'DCCC'
			nc[10] <- 'CM'
			centenas <- trunc(Numero/100) MOD 10
			decenas <- trunc(Numero/10) MOD 10
			unidades <- Numero MOD 10
			Escribir nc[centenas+1], nd[decenas+1], nu[unidades+1]
		FinSi
	FinSi
	// Revisado por: Xander Reyes
FinAlgoritmo
