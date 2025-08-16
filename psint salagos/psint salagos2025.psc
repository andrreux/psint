Algoritmo eliminarNota
	Definir notas Como Real;
    Dimension notas[100];
    Definir contador, i, pos Como Entero;
    Definir numero, suma Como Real;
    Definir entrada Como Cadena;
    Definir encontrado Como Logico;
    

    contador <- 5;
    notas[0] <- 10;
    notas[1] <- 8;
    notas[2] <- 9;
    notas[3] <- 6;
    notas[4] <- 7;
    
 
    Escribir "Notas actuales:";
    Para i <- 0 Hasta contador-1 Hacer
        Escribir notas[i];
    FinPara;
    

    Escribir "¿Deseas eliminar una nota? (si/no):";
    Leer entrada;
    
    Si entrada = "si" Entonces
        Escribir "¿Qué nota deseas eliminar?";
        Leer numero;
        encontrado <- Falso;
        
        
        Para i <- 0 Hasta contador-1 Hacer
            Si notas[i] = numero Entonces
                pos <- i;
                encontrado <- Verdadero;
              
            FinSi;
        FinPara;
        
        Si encontrado Entonces
            
            Para i <- pos Hasta contador-2 Hacer
                notas[i] <- notas[i + 1];
            FinPara;
            contador <- contador - 1;
            
            Escribir "Nota eliminada. Lista actualizada:";
            Si contador > 0 Entonces
                Para i <- 0 Hasta contador-1 Hacer
                    Escribir notas[i];
                FinPara;
                
                
                suma <- 0;
                Para i <- 0 Hasta contador-1 Hacer
                    suma <- suma + notas[i];
                FinPara;
                Escribir "Nuevo promedio: ", suma / contador;
            Sino
                Escribir "No hay notas para mostrar.";
            FinSi;
        Sino
            Escribir "La nota no fue encontrada.";
        FinSi;
    Sino
        Escribir "No se realizará ninguna eliminación.";
	FinSi
FinAlgoritmo

