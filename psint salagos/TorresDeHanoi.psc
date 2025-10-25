Proceso TorresDeHanoi
    Definir n Como Entero;
    Escribir "===================================";
    Escribir "        TORRES DE HANOI";
    Escribir "===================================";
    Escribir "";
    Escribir "Ingrese la cantidad de discos:";
    Leer n;
    
    Escribir "";
    Escribir "Movimientos para resolver con ", n, " discos:";
    MoverTorres(n, 'A', 'C', 'B');
    
    Escribir "";
    Escribir "¡Problema resuelto!";
FinProceso


SubProceso MoverTorres(n, origen, destino, auxiliar)
    Definir n_local Como Entero;
    n_local <- n;
	
    Si n_local = 1 Entonces
        Escribir "Mover disco de ", origen, " a ", destino;
    SiNo
        // Mover n-1 discos al poste auxiliar
        MoverTorres(n_local - 1, origen, auxiliar, destino);
        // Mover el disco más grande al destino
        Escribir "Mover disco de ", origen, " a ", destino;
        // Mover los n-1 discos del auxiliar al destino
        MoverTorres(n_local - 1, auxiliar, destino, origen);
    FinSi
FinSubProceso