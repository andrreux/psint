Proceso SumaDigitos
	Definir a, b, c, suma, num Como Entero;
	
	Escribir "Por favor digite un número inicial";
	Leer a;
	Escribir "Por favor digite el número final";
	Leer b;
	
	Mientras a <= b Hacer
		num <- a;
		suma <- 0;
		Mientras num > 0 Hacer
			c <- num % 10;    
			suma <- suma + c; 
			num <- num / 10;  
		FinMientras
		Escribir "Suma de dígitos de ", a, " es ", suma;
		a <- a + 1;
	FinMientras
FinProceso
// Estefani yulie sanabria marin
//santiago andres lagos rueda