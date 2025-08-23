
	Proceso Calculo_IMC
		// Declaraci�n de variables
		Definir peso, altura, imc Como Real;
		Definir continuar Como Caracter;
		
		continuar <- 'S'; // Inicializamos para entrar al bucle
		
		Mientras continuar = 'S' o continuar = 's' Hacer
			
			// Bienvenida
			Escribir '==============================================';
			Escribir '     CALCULADORA DE INDICE DE MASA CORPORAL (IMC)';
			Escribir '==============================================';
			Escribir '';
			
			// Entrada y validaci�n de peso
			Repetir
				Escribir 'Ingrese su peso en kilogramos (ejemplo: 70.5):';
				Leer peso;
				Si peso <= 0 Entonces
					Escribir 'ERROR: El peso debe ser mayor que cero.';
				FinSi
			Hasta Que peso > 0;
			
			// Entrada y validaci�n de altura
			Repetir
				Escribir 'Ingrese su altura en metros (ejemplo: 1.75):';
				Leer altura;
				Si altura <= 0 Entonces
					Escribir 'ERROR: La altura debe ser mayor que cero.';
				FinSi
			Hasta Que altura > 0;
			
			// C�lculo del IMC
			imc <- peso / (altura^2);
			
			// Mostrar resultado
			Escribir '';
			Escribir '==============================================';
			Escribir 'RESULTADO:';
			Escribir 'Su IMC es: ', imc;
			
			// Clasificaci�n seg�n el IMC
			Si imc < 18.5 Entonces
				Escribir 'Clasificaci�n: Bajo peso.';
			SiNo
				Si imc <= 24.9 Entonces
					Escribir 'Clasificaci�n: Peso normal.';
				SiNo
					Si imc <= 29.9 Entonces
						Escribir 'Clasificaci�n: Sobrepeso.';
					SiNo
						Si imc <= 34.9 Entonces
							Escribir 'Clasificaci�n: Obesidad grado I.';
						SiNo
							Si imc <= 39.9 Entonces
								Escribir 'Clasificaci�n: Obesidad grado II.';
							SiNo
								Escribir 'Clasificaci�n: Obesidad grado III.';
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi;
			
			// Preguntar si desea repetir
			Escribir '';
			Escribir '�Desea calcular el IMC de otra persona? (S para s� / N para no):';
			Leer continuar;
			
			Mientras continuar <> 'S' y continuar <> 's' y continuar <> 'N' y continuar <> 'n' Hacer
				Escribir 'Entrada inv�lida. Ingrese S (s�) o N (no):';
				Leer continuar;
			FinMientras
			
			Escribir '--------------------------------------------------';
			
		FinMientras
		
		// Despedida
		Escribir '';
		Escribir 'Gracias por usar la calculadora de IMC. �Cu�dese!';
FinProceso

