Proceso AgendaNotasCompleta
	Definir notas Como Real;
	Dimensionar notas(100);
	Definir contador, i, pos Como Entero;
	Definir numero, suma, promedio, mayor, menor Como Real;
	Definir aprobadas Como Entero;
	Definir entrada Como Cadena;
	Definir encontrado Como Logico;
	Escribir '==============================================';
	Escribir '             AGENDA NOTAS V1.09';
	Escribir '==============================================';
	Escribir '';
	contador <- 0;
	suma <- 0;
	aprobadas <- 0;
	Escribir 'Ingrese las notas (escriba -1 para terminar):';
	Leer numero;
	Mientras numero<>-1 Hacer
		notas[contador] <- numero;
		contador <- contador+1;
		Leer numero;
	FinMientras
	Si contador=0 Entonces
		Escribir 'No se ingresaron notas.';
	SiNo
		mayor <- notas[0];
		menor <- notas[0];
		suma <- 0;
		aprobadas <- 0;
		Para i<-0 Hasta contador-1 Hacer
			suma <- suma+notas[i];
			Si notas[i]>mayor Entonces
				mayor <- notas[i];
			FinSi
			Si notas[i]<menor Entonces
				menor <- notas[i];
			FinSi
			Si notas[i]>=3 Entonces
				aprobadas <- aprobadas+1;
			FinSi
		FinPara
		promedio <- suma/contador;
		Escribir 'Cantidad de notas: ', contador;
		Escribir 'Promedio: ', promedio;
		Escribir 'Nota más alta: ', mayor;
		Escribir 'Nota más baja: ', menor;
		Escribir 'Cantidad de aprobadas: ', aprobadas;
		Repetir
			Escribir '¿Deseas eliminar una nota? (si/no):';
			Leer entrada;
			Si entrada='si' Entonces
				Escribir '¿Qué nota deseas eliminar? (dijite la nota)';
				Leer numero;
				encontrado <- Falso;
				Para i<-0 Hasta contador-1 Hacer
					Si notas[i]=numero Entonces
						pos <- i;
						encontrado <- Verdadero;
					FinSi
				FinPara
				Si encontrado Entonces
					Para i<-pos Hasta contador-2 Hacer
						notas[i] <- notas[i+1];
					FinPara
					contador <- contador-1;
					Escribir 'Nota eliminada. Lista actualizada:';
					Si contador>0 Entonces
						Para i<-0 Hasta contador-1 Hacer
							Escribir notas[i];
						FinPara
						mayor <- notas[0];
						menor <- notas[0];
						suma <- 0;
						aprobadas <- 0;
						Para i<-0 Hasta contador-1 Hacer
							suma <- suma+notas[i];
							Si notas[i]>mayor Entonces
								mayor <- notas[i];
							FinSi
							Si notas[i]<menor Entonces
								menor <- notas[i];
							FinSi
							Si notas[i]>=3 Entonces
								aprobadas <- aprobadas+1;
							FinSi
						FinPara
						promedio <- suma/contador;
						Escribir 'Cantidad de notas: ', contador;
						Escribir 'Promedio: ', promedio;
						Escribir 'Nota más alta: ', mayor;
						Escribir 'Nota más baja: ', menor;
						Escribir 'Cantidad de aprobadas: ', aprobadas;
					SiNo
						Escribir 'No hay notas para mostrar.';
					FinSi
				SiNo
					Escribir 'La nota no fue encontrada.';
				FinSi
			FinSi
		Hasta Que entrada='no'
	FinSi
FinProceso
