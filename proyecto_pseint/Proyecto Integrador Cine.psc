subProceso tarifa(precio Por Referencia,entradamayores,entradamenores)
	definir entradas Como Entero;
	Definir preciomayor,preciomenor Como Entero;
	Limpiar Pantalla;
	preciomayor<-entradamayores*200;
	preciomenor<-entradamenores*150;
	precio<-preciomayor+preciomenor;
	Escribir "Con un costo de $ ",precio;
FinSubProceso

SubProceso edad(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	Definir entradas,menores Como Entero;
	Escribir "�Cuantas entradas desea comprar?";
	Leer entradas; //6
	Escribir "�Si hay algun menor de edad digite la cantidad!";
	Leer menores;//2
	
	entradamayores<-entradas-menores;
	entradamenores<-menores;
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso


SubProceso cartillapeliculas(peliculas Por Referencia)
	Definir num4 Como Entero;
	//Definir p1,p2,p3 Como Entero;
	Definir p1,p2,p3 Como Caracter;
	Limpiar Pantalla;
	Escribir "�Gracias por su confirmaci�n!";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 A�OS: $200.";
	Escribir "MENORES DE 18 A�OS $150";
	Escribir "";
	Escribir "A CONTINUACI�N, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opci�n 1: SONIC 2 LA PEL�CULA.";
	Escribir "Opci�n 2: R�PIDOS Y FURIOSOS 9";
	Escribir "Opci�n 3: MORBIUS";
	Leer num4;
	
	Segun num4 Hacer
		1:
			p1<-"Opci�n 1: SONIC 2 LA PEL�CULA";
			peliculas<-p1;
		2:
			p2<-"Opci�n 2: R�PIDOS Y FURIOSOS 9";
			peliculas<-p2;
		3:
			p3<-"Opci�n 3: MORBIUS";
			peliculas<-p3;
		De Otro Modo:
			Escribir "Opci�n Incorrecta.Por favor, digite nuevamente:";
	FinSegun
	
	//Escribir "peliculas: ",peliculas;
FinSubProceso

SubProceso horario(horas Por Referencia)
	Definir jornada Como Entero;
	Definir j1,j2,j3,j4 Como Caracter;
	Limpiar Pantalla;
	Escribir "Por favor, seleccione el horario en el que desea asistir:";
	Escribir "    1.- 3:00 pm.";
	Escribir "    2.- 5:00 pm.";
	Escribir "    3.- 7:00 pm.";
	Escribir "    4.- 9:00 pm.";
	Repetir
		Leer jornada;
		Si jornada<1 O jornada>4 Entonces
			Escribir Sin Saltar "Opci�n incorrecta. Por favor, digite nuevamente: ";
		FinSi
	Hasta Que jornada>=1 Y jornada<=4;
	Segun jornada Hacer
		1:
			j1<-"3:00 pm.";
			horas<-j1;
		2:
			j2<-"5:00 pm.";
			horas<-j2;
		3:
			j3<-"7:00 pm.";
			horas<-j3;
		4:
			j4<-"9:00 pm.";
			horas<-j4;
		De Otro Modo:
			Escribir "Por favor, digite nuevamente";
	FinSegun
	//Escribir "hora seleccionada: ",horas;
FinSubProceso


Proceso CINE
	Definir opcion Como Entero;
	Definir vendido Como Logico;
	Escribir "�BIENVENIDO/A AL MEJOR CINE DE MENDOZA!";
	Escribir "";
	Repetir
		vendido<-falso;
		
		Escribir "SELECCIONE QUE OPERACI�N DESEA REALIZAR:";
		Escribir "";
		Escribir "1. COMPRAR UNA ENTRADA. ";
		Escribir "2. VER CARTELERA. ";
		Escribir "3. SALIR. ";
		Leer opcion;
		Escribir '';
		
		Segun opcion Hacer
			1:
				Definir peliculas Como Caracter;
				Definir precio,i,j,m,butnum Como Entero;
				Definir horas Como Caracter;
				Definir butaca Como Entero;
				Definir venta como entero;
				definir opc Como Entero;
				Definir cantidadentradas,entradamayores,entradamenores Como Entero;
				edad(entradamayores,entradamenores,cantidadentradas);
				tarifa(precio,entradamayores,entradamenores);
				cartillapeliculas(peliculas);
				horario(horas);
				Dimension butaca[5,10];
				Dimension butnum(100);
				Limpiar Pantalla;
				Escribir "";
				Escribir "Por favor, seleccione la posici�n de la butaca:";
				Escribir "";
				Para i<-0 Hasta 4 Con Paso 1 Hacer
					Para j<-0 Hasta 9 Con Paso 1 Hacer
						Escribir sin saltar i;
						Escribir Sin Saltar j," ";
					FinPara
					Escribir "";
				FinPara
				Escribir "";
				
				Para m<-0 Hasta cantidadentradas-1 Hacer
					Leer butnum(m);
				FinPara
				Limpiar Pantalla;
				Escribir "Usted est� por comprar la entrada de: ";
				Escribir " ";
				Escribir "",peliculas, " .";;
				Escribir "";
				Escribir "Con un costo de $ ",precio;
				Escribir " ";
				Escribir "Empieza a las ",horas;
				Escribir " ";
				
				Para m<-0 Hasta cantidadentradas-1 Hacer
					Escribir "En la butacas N�: ",butnum(m);
				FinPara
				Escribir "";
				Repetir
					Escribir "�Desea confirmar la compra?";
					Escribir "Opci�n 1: S�.";
					Escribir "Opci�n 2: NO.";
					Leer opc;
				Hasta Que opc=1 o opc=2
				Segun opc Hacer
					1:
						Limpiar Pantalla;
						Escribir "�GRACIAS POR SU COMPRA!";
						vendido <- verdadero;
					2: 
						Limpiar Pantalla;
						Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
						vendido <- Verdadero;
					De Otro Modo:
						Escribir "OPCI�N INCORRECTA.";
				FinSegun
			2:
				Limpiar Pantalla;
				
				Escribir "LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
				Escribir "Opci�n 1: SONIC 2 LA PEL�CULA";
				Escribir "Opci�n 2: R�PIDOS Y FURIOSOS 9";
				Escribir "Opci�n 3: MORBIUS";
				Escribir " ";
				Escribir " ";
			3:
				
			De Otro Modo:
				Escribir "Por favor,digite nuevamente:";
		FinSegun
		
	Hasta Que opcion=3 o vendido=verdadero
FinProceso