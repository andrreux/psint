Proceso ALMACENSEGURO
	Definir camaras,puertas,alarma,seguro Como logico;
	Escribir "las camaras estan funcionando? (verdadero=1- falso=0))";
	leer camaras;
	Escribir "las puertas electronicas estan activas? (verdadero=1- falso=0))";
	leer puertas;
	Escribir "las alarmas estan activadas? (verdadero=1- falso=0)";
	leer alarma;
	
	seguro= (camaras=verdadero) y (puertas=verdadero) y (alarma=verdadero);
	si seguro=Verdadero  Entonces
		Escribir "el local es seguro, por ahora...";
	sino 
		Escribir "el local no es seguro revise de nuevo";
	FinSi
	
FinProceso
