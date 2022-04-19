
//Este subproceso clacula el valor total a pagar por las entradas seleccionadas
// teniendo en cuenta las diferentes categorias segun las edades
subProceso tarifa(precio Por Referencia,entradamayores,entradamenores)
	definir entradas Como Entero;
	Definir preciomayor,preciomenor Como Entero;
	Limpiar Pantalla;
	//Calcula el total del precio de los mayores del grupo
	preciomayor<-entradamayores*200;
	//Calcula el totlal del precio de los menores del grupo
	preciomenor<-entradamenores*150;
	//Calcula el precio total
	precio<-preciomayor+preciomenor;
	//Muestra en consola el precio total a pagar por las entradas seleccionadas
	Escribir "Con un costo de $ ",precio;
FinSubProceso

//Este subproceso toma el valor total de las entradas y cuantos menores y mayores van 
// a utilizar las entradas 
SubProceso edad(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	Definir entradas,menores Como Entero;
	Escribir "Cuantas entradas desea comprar?";
	Leer entradas; //Lee el valor total del numero de entradas
	Escribir "Si hay algun menor de edad digite la cantidad!";
	Leer menores;//Lee el valor del numero de menores en el total de entradas
	//Calcula la cantidad de entradas para los mayores del grupo
	entradamayores<-entradas-menores;
	//Asigna el valor de la cantidad de entradas para los menores del grupo
	entradamenores<-menores;
	//Calcula el total de las entradas
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso

//Este subproceso muesta la cartelera de peliculas ofrecidas por el cine
// y los constos difeneciados entre mayores y menores, y toma el valor
// de que pelicula vera el grupo
SubProceso cartillapeliculas(peliculas Por Referencia)
	Definir num4 Como Entero;
	Limpiar Pantalla;
	Escribir "Gracias por su confirmacion!";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 ANOS: $200.";
	Escribir "MENORES DE 18 ANOS $150";
	Escribir "";
	
	
	Escribir "A CONTINUACION, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opcion 1: SONIC 2 LA PELICULA.";
	Escribir "Opcion 2: RAPIDOS Y FURIOSOS 9";
	Escribir "Opcion 3: MORBIUS";
	
	Repetir
		//Num4 es un selector
		Leer num4;
		Si num4<1 O num4>3 Entonces
			Escribir Sin Saltar "Opcion incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// segun el valor de "num4" se almacena el valor de la pelicula seleccionada en la variable "peliculas"
			Segun num4 Hacer
				1:
					peliculas<-"Opcion 1: SONIC 2 LA PELICULA";
				2:
					peliculas<-"Opcion 2: RAPIDOS Y FURIOSOS 9";
				3:
					peliculas<-"Opcion 3: MORBIUS";
			FinSegun
		FinSi
	Hasta Que num4>=1 Y num4<=3;
	
FinSubProceso


SubProceso horario(horas Por Referencia)
	// Este sub proceso se encarga de permitirle al usuario que elija la hora de proyeccion de la pelicula
	Definir jornada Como Entero;
	Limpiar Pantalla;
	Escribir "Por favor, seleccione el horario en el que desea asistir:";
	Escribir "    1.- 3:00 pm.";
	Escribir "    2.- 5:00 pm.";
	Escribir "    3.- 7:00 pm.";
	Escribir "    4.- 9:00 pm.";
	Repetir
		// jornada es un selector
		Leer jornada;
		Si jornada<1 O jornada>4 Entonces
			Escribir Sin Saltar "Opcion incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// Segun el valor jornada se almacena el dato de cual fue el horario de la proyeccion en la variable "horas"
			Segun jornada Hacer
				1:
					horas<-"3:00 pm.";
				2:
					horas<-"5:00 pm.";
				3:
					horas<-"7:00 pm.";
					4
					horas<-"9:00 pm.";
			FinSegun
		FinSi
	Hasta Que jornada>=1 Y jornada<=4;
FinSubProceso


Proceso CINE
	//Este programa tiene la funcion de dar las opciones de proyeccion de un cine, al ususario
	// Teniendo en cuenta la pelicula, el horario, la cantidad de espectadores del grupo,
	// y si estos son menores tendran un precio diferido.
	// Le informara al usuario un resumen de su eleccion y luego le ofrecera pagar el monto total.
	Definir opcion Como Entero;
	Definir vendido Como Logico;
	Escribir "            BIENVENIDO/AD AL CINE DE LOS/AS MATE-CODERS!!!";
	Escribir "";
	Repetir
		vendido<-falso;
		
		Escribir "SELECCIONE QUE OPERACION DESEA REALIZAR:";
		Escribir "";
		Escribir "1. COMPRAR UNA ENTRADA. ";
		Escribir "2. VER CARTELERA. ";
		Escribir "3. SALIR. ";
		Leer opcion;
		Escribir '';
		
		Segun opcion Hacer
			1:
				//En esta opcion el usuario elijira la pelicula, el horario de proyeccion y ingresara cuanto mayore y menores veran la pelicula
				Definir peliculas Como Caracter;
				Definir precio,i,j,m,butnum Como Entero;
				Definir horas Como Caracter;
				Definir butaca Como Entero;
				Definir venta como entero;
				definir opc Como Entero;
				Definir cantidadentradas,entradamayores,entradamenores Como Entero;
				//Llamada al subproceso edad, donde se diran cuantas entradas se desea comprar y cuantos menores hay en el grupo
				edad(entradamayores,entradamenores,cantidadentradas);
				//El subproceso tarifa calculara el precio total de las entradas
				tarifa(precio,entradamayores,entradamenores);
				// El subproceso cartillapeliculas le mostrara al usuario que pelicualas hay disponibles y tomara el dato de que pelicula desea ver
				cartillapeliculas(peliculas);
				// El subproceso horario tomara el dato de que horario de proyeccion elije el usuario 
				horario(horas);
				
				
				//Aqui se le pedira al usuario que elija la numaracion de las entradas
				Dimension butaca[5,10];
				Dimension butnum(100);
				Limpiar Pantalla;
				Escribir "";
				Escribir "Por favor, seleccione la posicion de la butaca:";
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
				//Aqui se mostrara el resumen de la eleccion del usuario 
				Escribir "Usted esta por comprar la entrada de: ";
				Escribir " ";
				Escribir "",peliculas, " .";;
				Escribir "";
				Escribir "Con un costo de $ ",precio;
				Escribir " ";
				Escribir "Empieza a las ",horas;
				Escribir " ";
				
				Para m<-0 Hasta cantidadentradas-1 Hacer
					Escribir "En la butacas Numero: ",butnum(m);
				FinPara
				Escribir "";
				//Aqui se le preguntara al usuario si esta de acuerdo con lo quedice el resumen de su eleccion
				Repetir
					Escribir "Desea confirmar la compra?";
					Escribir "Opcion 1: SI.";
					Escribir "Opcion 2: NO.";
					Leer opc;
				Hasta Que opc=1 o opc=2
				Segun opc Hacer
					1:
						Limpiar Pantalla;
						vendido <- verdadero;
						Escribir "        ¡¡¡Gracias por su compra!!!";
						Escribir "";
						Escribir "              ¡Los/as esperamos!";
						Escribir "";
						Escribir "           *-FACUNDO MARTÍN GIACOMOZZI-*  ";
						Escribir "           *-MATÍAS CANEVARO*   ";
						Escribir "           *-MARTÍN ALEJANDRO TORRES-* ";
						Escribir "           *-EDUARDO LUIS GÓMEZ-*";
						Escribir "           *-CINTHIA FERNANDA SEGOVIA-*";
						Escribir "           *-GABRIEL ROMERO-* ";
						Escribir "           *-AGUSTIN RODRIGUEZ ALVAREZ-* ";
						Escribir "           *-LAUTARO URQUIZA-* ";
						Escribir "           *-FEDERICO PFUND-* ";
						Escribir "           *-SABRINA MANTERO-* ";
					2: 
						Limpiar Pantalla;
						Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
						vendido <- Falso;
					De Otro Modo:
						Escribir "OPCION INCORRECTA.";
				FinSegun
			2:
				//En esta opcion se deplegara al ususario en consola las peliculas disponibles
				Limpiar Pantalla;
				
				Escribir "LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
				Escribir "Opcion 1: SONIC 2 LA PELICULA";
				Escribir "Opcion 2: RAPIDOS Y FURIOSOS 9";
				Escribir "Opcion 3: MORBIUS";
				Escribir " ";
				Escribir " ";
			3:
				
			De Otro Modo:
				Escribir "Por favor,digite nuevamente:";
		FinSegun
		
	Hasta Que opcion=3 o vendido=verdadero
FinProceso