Proceso verificacionacceso
	Definir i, edad Como Entero;
	Definir contrasenav, bloqueado Como Logico;
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'usuario ', i;
		Escribir 'ingrese edad';
		Leer edad;
		Si edad<18 Entonces
			Escribir ' el usuario ", i , "no cumple con el accesso';
		SiNo
			Escribir ' tiene contraseña valida? ( Verdadero-Falso):';
			Leer contrasenav;
			Escribir ' esta bloqueado? ( Verdadero-Falso)';
			Leer bloqueado;
			Si edad>=18 Y contrasenav=Verdadero Y bloqueado=Falso Entonces
				Escribir 'el usuario ', i, 'puede acceder al sistema';
			SiNo
				Escribir 'el usuario ', i, ' no puede acceder al sistema';
			FinSi
		FinSi
	FinPara
FinProceso
