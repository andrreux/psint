Proceso linealetras
	Definir a, b, c, espacios Como Entero;
	a <- 1;
	Leer b;           
	Mientras a <= b Hacer
		espacios <- b - a;
		c <- 1;
		Mientras espacios > 0 Hacer
			Escribir '   ' Sin Saltar;
			espacios <- espacios - 1;
		FinMientras
		Mientras c <= (2 * a - 1) Hacer
			Escribir 'a' Sin Saltar;
			c <- c + 1;
		FinMientras
		Escribir ""; 
		a <- a + 1;
	FinMientras
FinProceso
// Estefani yulie sanabria marin
//santiago andres lagos rueda