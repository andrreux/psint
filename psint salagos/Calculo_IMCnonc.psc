Proceso Calculo_IMC
    Definir peso, altura, imc Como Real;
    Definir continuar Como Caracter;
	Dimension limites[6];
    Definir limites[6] Como Real;
	Dimension categorias[6];
    Definir categorias[6] Como Cadena;
    Definir i Como Entero;
	
    continuar <- 'S';
	
    limites[1] <- 18.5;
    limites[2] <- 24.9;
    limites[3] <- 29.9;
    limites[4] <- 34.9;
    limites[5] <- 39.9;
    limites[6] <- 9999;  
	
   
    categorias[1] <- "Bajo peso.";
    categorias[2] <- "Peso normal.";
    categorias[3] <- "Sobrepeso.";
    categorias[4] <- "Obesidad grado I.";
    categorias[5] <- "Obesidad grado II.";
    categorias[6] <- "Obesidad grado III.";
	
    Mientras continuar = 'S' o continuar = 's' Hacer
		
        Escribir '==============================================';
        Escribir '     CALCULADORA DE INDICE DE MASA CORPORAL (IMC)';
        Escribir '==============================================';
        Escribir '';
		
        Repetir
            Escribir 'Ingrese su peso en kilogramos (ejemplo: 70.5):';
            Leer peso;
            Si peso <= 0 Entonces
                Escribir 'ERROR: El peso debe ser mayor que cero.';
            FinSi
        Hasta Que peso > 0;
		
        Repetir
            Escribir 'Ingrese su altura en metros (ejemplo: 1.75):';
            Leer altura;
            Si altura <= 0 Entonces
                Escribir 'ERROR: La altura debe ser mayor que cero.';
            FinSi
        Hasta Que altura > 0;
		
        imc <- peso / (altura^2);
		
        
        i <- 1;
        Mientras imc > limites[i] y i < 6 Hacer
            i <- i + 1;
        FinMientras
		
        Escribir '';
        Escribir '==============================================';
        Escribir 'RESULTADO:';
        Escribir 'Su IMC es: ', imc;
        Escribir 'Clasificación: ', categorias[i];
		
        Escribir '';
        Escribir '¿Desea calcular el IMC de otra persona? (S para sí / N para no):';
        Leer continuar;
		
        Mientras continuar <> 'S' y continuar <> 's' y continuar <> 'N' y continuar <> 'n' Hacer
            Escribir 'Entrada inválida. Ingrese S (sí) o N (no):';
            Leer continuar;
        FinMientras
		
        Escribir '--------------------------------------------------';
		
    FinMientras
	
    Escribir '';
    Escribir 'Gracias por usar la calculadora de IMC. ¡Cuídese!';
FinProceso