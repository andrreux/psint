Proceso TIENDADESCUENTO
	definir fidelidad Como Logico;
	Definir valorcompra Como Entero;
	Definir c Como Real;
	Escribir "el cliente es fiel? (verdadero-falso)";
	leer fidelidad;
	Si fidelidad = Verdadero Entonces
		Escribir "el cliente aplica para el descuento";
		Escribir "ingrse el valor de compra";
		leer valorcompra;
		si valorcompra >= 100 Entonces
			c= valorcompra*0.1;
			Escribir "su descuento es del 10% ";
			Escribir c;
		sino 
			Escribir "la compra debe ser mayor a 100 para aplicar";
		FinSi
	SiNo
		Escribir " usted no aplica";
	FinSi
FinProceso
