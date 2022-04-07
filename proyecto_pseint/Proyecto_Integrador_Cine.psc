
//Este subproceso clacula el valor total a pagar por las entradas seleccionadas
// teniendo en cuenta las diferentes categorias segun edades
subProceso tarifa(precio Por Referencia,entradamayores,entradamenores)
	definir entradas Como Entero;
	Definir preciomayor,preciomenor Como Entero;
	Limpiar Pantalla;
	preciomayor<-entradamayores*200;
	preciomenor<-entradamenores*150;
	precio<-preciomayor+preciomenor;
	Escribir "Con un costo de $ ",precio;
FinSubProceso

//Este subproceso toma el valor total de las entradas y cuantos menores y mayores van 
// a utilizar las entradas 
SubProceso edad(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	Definir entradas,menores Como Entero;
	Escribir "Cuantas entradas desea comprar?";
	Leer entradas; //6
	Escribir "Si hay algun menor de edad digite la cantidad!";
	Leer menores;//2
	
	entradamayores<-entradas-menores;
	entradamenores<-menores;
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso

//Este subproceso muesta la cartelera de peliculas ofrecidas por el cine
// y los constos difeneciados entre mayores y menores, y toma el valor
// de que pelicula vera el grupo
SubProceso cartillapeliculas(peliculas Por Referencia)
	Definir num4 Como Entero;
	//Definir p1,p2,p3 Como Entero;
	Definir p1,p2,p3 Como Caracter;
	Limpiar Pantalla;
	Escribir "Gracias por su confirmacion!";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 ANOS: $200.";
	Escribir "MENORES DE 18 ANOS $150";
	Escribir "";
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
	Escribir "A CONTINUACION, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opcion 1: SONIC 2 LA PELICULA.";
	Escribir "Opcion 2: RAPIDOS Y FURIOSOS 9";
	Escribir "Opcion 3: MORBIUS";
=======
>>>>>>> Stashed changes
	Escribir "A CONTINUACI?N, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opci?n 1: SONIC 2 LA PEL?CULA.";
	Escribir "Opci?n 2: R?PIDOS Y FURIOSOS 9";
	Escribir "Opci?n 3: MORBIUS";
<<<<<<< Updated upstream
=======
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
	Leer num4;
	
	Segun num4 Hacer
		1:
<<<<<<< Updated upstream
			p1<-"Opci?n 1: SONIC 2 LA PEL?CULA";
			peliculas<-p1;
		2:
			p2<-"Opci?n 2: R?PIDOS Y FURIOSOS 9";
			peliculas<-p2;
		3:
			p3<-"Opci?n 3: MORBIUS";
			peliculas<-p3;
		De Otro Modo:
			Escribir "Opci?n Incorrecta.Por favor, digite nuevamente:";
=======
<<<<<<< HEAD
			p1<-"Opcion 1: SONIC 2 LA PELICULA";
			peliculas<-p1;
		2:
			p2<-"Opcion 2: R?PIDOS Y FURIOSOS 9";
			peliculas<-p2;
		3:
			p3<-"Opcion 3: MORBIUS";
			peliculas<-p3;
		De Otro Modo:
			Escribir "Opcion Incorrecta.Por favor, digite nuevamente:";
=======
			p1<-"Opci?n 1: SONIC 2 LA PEL?CULA";
			peliculas<-p1;
		2:
			p2<-"Opci?n 2: R?PIDOS Y FURIOSOS 9";
			peliculas<-p2;
		3:
			p3<-"Opci?n 3: MORBIUS";
			peliculas<-p3;
		De Otro Modo:
			Escribir "Opci?n Incorrecta.Por favor, digite nuevamente:";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
			Escribir Sin Saltar "Opci?n incorrecta. Por favor, digite nuevamente: ";
=======
<<<<<<< HEAD
			Escribir Sin Saltar "Opcion incorrecta. Por favor, digite nuevamente: ";
=======
			Escribir Sin Saltar "Opci?n incorrecta. Por favor, digite nuevamente: ";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
	Escribir "?BIENVENIDO/A AL MEJOR CINE DE MENDOZA!";
=======
<<<<<<< HEAD
	Escribir "BIENVENIDO/A AL MEJOR CINE DE MENDOZA!";
=======
	Escribir "?BIENVENIDO/A AL MEJOR CINE DE MENDOZA!";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
	Escribir "";
	Repetir
		vendido<-falso;
		
<<<<<<< Updated upstream
		Escribir "SELECCIONE QUE OPERACI?N DESEA REALIZAR:";
=======
<<<<<<< HEAD
		Escribir "SELECCIONE QUE OPERACION DESEA REALIZAR:";
=======
		Escribir "SELECCIONE QUE OPERACI?N DESEA REALIZAR:";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
				Escribir "Por favor, seleccione la posici?n de la butaca:";
=======
<<<<<<< HEAD
				Escribir "Por favor, seleccione la posicion de la butaca:";
=======
				Escribir "Por favor, seleccione la posici?n de la butaca:";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
				Escribir "Usted est? por comprar la entrada de: ";
=======
<<<<<<< HEAD
				Escribir "Usted esta por comprar la entrada de: ";
=======
				Escribir "Usted est? por comprar la entrada de: ";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
				Escribir " ";
				Escribir "",peliculas, " .";;
				Escribir "";
				Escribir "Con un costo de $ ",precio;
				Escribir " ";
				Escribir "Empieza a las ",horas;
				Escribir " ";
				
				Para m<-0 Hasta cantidadentradas-1 Hacer
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
					Escribir "En la butacas Numero: ",butnum(m);
				FinPara
				Escribir "";
				Repetir
					Escribir "Desea confirmar la compra?";
					Escribir "Opcion 1: SI.";
					Escribir "Opcion 2: NO.";
=======
>>>>>>> Stashed changes
					Escribir "En la butacas N?: ",butnum(m);
				FinPara
				Escribir "";
				Repetir
					Escribir "?Desea confirmar la compra?";
					Escribir "Opci?n 1: S?.";
					Escribir "Opci?n 2: NO.";
<<<<<<< Updated upstream
=======
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
					Leer opc;
				Hasta Que opc=1 o opc=2
				Segun opc Hacer
					1:
						Limpiar Pantalla;
<<<<<<< Updated upstream
						Escribir "?GRACIAS POR SU COMPRA!";
=======
<<<<<<< HEAD
						Escribir "GRACIAS POR SU COMPRA!";
=======
						Escribir "?GRACIAS POR SU COMPRA!";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
						vendido <- verdadero;
					2: 
						Limpiar Pantalla;
						Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
						vendido <- Verdadero;
					De Otro Modo:
<<<<<<< Updated upstream
						Escribir "OPCI?N INCORRECTA.";
=======
<<<<<<< HEAD
						Escribir "OPCION INCORRECTA.";
=======
						Escribir "OPCI?N INCORRECTA.";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
				FinSegun
			2:
				Limpiar Pantalla;
				
				Escribir "LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
<<<<<<< Updated upstream
				Escribir "Opci?n 1: SONIC 2 LA PEL?CULA";
				Escribir "Opci?n 2: R?PIDOS Y FURIOSOS 9";
				Escribir "Opci?n 3: MORBIUS";
=======
<<<<<<< HEAD
				Escribir "Opcion 1: SONIC 2 LA PELICULA";
				Escribir "Opcion 2: RAPIDOS Y FURIOSOS 9";
				Escribir "Opcion 3: MORBIUS";
=======
				Escribir "Opci?n 1: SONIC 2 LA PEL?CULA";
				Escribir "Opci?n 2: R?PIDOS Y FURIOSOS 9";
				Escribir "Opci?n 3: MORBIUS";
>>>>>>> b16328516fddeb4e08d0e2a454bc85339c5e74d5
>>>>>>> Stashed changes
				Escribir " ";
				Escribir " ";
			3:
				
			De Otro Modo:
				Escribir "Por favor,digite nuevamente:";
		FinSegun
		
	Hasta Que opcion=3 o vendido=verdadero
FinProceso