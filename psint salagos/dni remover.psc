Proceso sin_titulo
	Definir N, pos, i, DNI Como Entero;
	Dimension DNI[100];
	Escribir "Ingrese la cantidad de empleados:";
	Leer N;
	Para i <- 1 Hasta N Hacer
		Escribir "Ingrese el DNI del empleado ", i, ":";
		Leer DNI[i];
	FinPara
	Escribir "Ingrese la posicion del empleado a eliminar (1 - ", N, "):";
	Leer pos;
	Si pos < 1 O pos > N Entonces
		Escribir "Posicion invalida. No se puede eliminar.";
	Sino
		Para i <- pos Hasta N - 1 Hacer
			DNI[i] <- DNI[i + 1];
		FinPara
		N <- N - 1;
		Escribir "Arreglo final de empleados:";
		Para i <- 1 Hasta N Hacer
			Escribir DNI[i];
		FinPara
	FinSi
	
FinAlgoritmo
