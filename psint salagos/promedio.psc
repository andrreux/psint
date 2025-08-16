Algoritmo promedio
	Definir suma Como Entero;
	Definir contador Como Real;
	Definir numero Como Entero;
	suma = 0;
    contador = 0;
	escribir" ingrese los valores de notas (escribe -1 para terminar)";
	leer numero;
	MIENTRAS numero <> -1 HACER
		suma = suma + numero;
		contador = contador + 1;
		 escribir "Introduce otro número (o -1 para terminar):";
		LEER numero;
	FIN MIENTRAS
	SI contador <> 0 ENTONCES
		escribir"El promedio es: ", suma / contador;
	SINO
		Escribir "No se ingresaron números válidos.";
	FIN SI
FinAlgoritmo
