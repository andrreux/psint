Proceso aprovoexamenv1
	definir nota Como Real;
	Definir asistencia Como Logico;
	Escribir "ingrese su nota";
	leer nota;
	Escribir "su asistencia es superior al 80%? (verdadero-falso)";
	Leer asistencia;
	si nota >= 70 y asistencia=Verdadero Entonces
		Escribir "su calificacion es suficiente para pasar (verdadero)";
	sino 
		escribir" usted no cumple los requisitos para pasar (falso)";
	FinSi
	
FinProceso

