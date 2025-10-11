Proceso NUMALEATO
	Definir h, f, z Como Entero;
	Definir l Como Logico;
	Escribir 'desea jugar un juego? ( si = Verdadero no = Falso)';
	Leer l;
	z <- 1;
	Si l=Verdadero Entonces
		Para z<-1 Hasta 3 Con Paso 1 Hacer
			Escribir 'ingrese el numero a encontrar';
			Leer h;
			Repetir
				Escribir ' cual es el numero?';
				Leer f;
				Si f>h Entonces
					Escribir ' el numero es menor';
				SiNo
					Si f<h Entonces
						Escribir ' el numero es mayor';
					SiNo
						Si f=h Entonces
							Escribir ' felicitaciones encontro el numero correcto';
						FinSi
					FinSi
				FinSi
			Hasta Que f=h
		FinPara
	FinSi
FinProceso
