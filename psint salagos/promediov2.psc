Proceso promedio_tres_numeros
    Definir i, numero, suma, promedio Como Real;
	
    suma <- 0;
	
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Ingrese el número ", i, ":";
        Leer numero;
        suma <- suma + numero;
    FinPara
	
    promedio <- suma / 3;
	
    Escribir "El promedio es: ", promedio;
FinProceso
