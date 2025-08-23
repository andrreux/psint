
	Proceso Calculo_IMC
		// Declaración de variables
		Definir peso, altura, imc Como Real;
		Definir continuar Como Caracter;
		
		continuar <- 'S'; // Inicializamos para entrar al bucle
		
		Mientras continuar = 'S' o continuar = 's' Hacer
			
			// Bienvenida
			Escribir '==============================================';
			Escribir '     CALCULADORA DE INDICE DE MASA CORPORAL (IMC)';
			Escribir '==============================================';
			Escribir '';
			
			// Entrada y validación de peso
			Repetir
				Escribir 'Ingrese su peso en kilogramos (ejemplo: 70.5):';
				Leer peso;
				Si peso <= 0 Entonces
					Escribir 'ERROR: El peso debe ser mayor que cero.';
				FinSi
			Hasta Que peso > 0;
			
			// Entrada y validación de altura
			Repetir
				Escribir 'Ingrese su altura en metros (ejemplo: 1.75):';
				Leer altura;
				Si altura <= 0 Entonces
					Escribir 'ERROR: La altura debe ser mayor que cero.';
				FinSi
			Hasta Que altura > 0;
			
			// Cálculo del IMC
			imc <- peso / (altura^2);
			
			// Mostrar resultado
			Escribir '';
			Escribir '==============================================';
			Escribir 'RESULTADO:';
			Escribir 'Su IMC es: ', imc;
			
			// Clasificación según el IMC
			Si imc < 18.5 Entonces
				Escribir 'Clasificación: Bajo peso.';
			SiNo
				Si imc <= 24.9 Entonces
					Escribir 'Clasificación: Peso normal.';
				SiNo
					Si imc <= 29.9 Entonces
						Escribir 'Clasificación: Sobrepeso.';
					SiNo
						Si imc <= 34.9 Entonces
							Escribir 'Clasificación: Obesidad grado I.';
						SiNo
							Si imc <= 39.9 Entonces
								Escribir 'Clasificación: Obesidad grado II.';
							SiNo
								Escribir 'Clasificación: Obesidad grado III.';
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi;
			
			// Preguntar si desea repetir
			Escribir '';
			Escribir '¿Desea calcular el IMC de otra persona? (S para sí / N para no):';
			Leer continuar;
			
			Mientras continuar <> 'S' y continuar <> 's' y continuar <> 'N' y continuar <> 'n' Hacer
				Escribir 'Entrada inválida. Ingrese S (sí) o N (no):';
				Leer continuar;
			FinMientras
			
			Escribir '--------------------------------------------------';
			
		FinMientras
		
		// Despedida
		Escribir '';
		Escribir 'Gracias por usar la calculadora de IMC. ¡Cuídese!';
FinProceso

