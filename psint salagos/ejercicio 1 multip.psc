Proceso multip
	Definir i, s, c Como Entero;
	Definir h Como Logico;
	Repetir
		Escribir 'desea generar una respuesta? (si= verdadero no= falso)';
		Leer h;
		Si h=Verdadero Entonces
			Escribir 'ingrese el valor';
			Leer i;
			Escribir 'ingrese el valor por el cual va a multiplicar';
			Leer s;
			Para i<-1 Hasta 10 Con Paso 1 Hacer
				c <- i*s;
				Escribir c;
			FinPara
		FinSi
	Hasta Que h=fALSO
FinProceso
