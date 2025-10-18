Proceso Tab
	Definir n, f, c Como Entero;
	Escribir ' Ingrese un número';
	Leer n;
	Repetir
		Para f<-1 Hasta n Con Paso 1 Hacer
			Para c<-1 Hasta f Con Paso 1 Hacer
				Si f=1 Entonces
					Escribir 'Número', '    'Sin Saltar;
					Escribir 'Cuadrado', '   'Sin Saltar;
					Escribir 'Cubo', '   'Sin Saltar;
				SiNo
					Escribir n, '         'Sin Saltar;
					Escribir (n*n), '          'Sin Saltar;
					Escribir (n*n*n), '          'Sin Saltar;
				FinSi
				Escribir ' ';
			FinPara
		FinPara
	Hasta Que f=10
FinProceso
// Estefani yulie sanabria marin
//santiago andres lagos rueda