

//Este subproceso clacula el valor total a pagar por las entradas seleccionadas
// teniendo en cuenta las diferentes categorias segun las edades
subProceso tarifa(precio Por Referencia,entradamayores,entradamenores,cantidadentradas)
	Definir Descuento Como Entero;
	definir Edades, i, preciomayor,preciomenor,Suma Como Entero;
	Definir MatrizPrecio,MatrizDescuento Como Entero; 
	Dimension  MatrizPrecio[100];
	Dimension  MatrizDescuento[100];
	Limpiar Pantalla;

	//Calcula el total del precio de los mayores del grupo
	preciomayor<-entradamayores*200;
	//Calcula el totlal del precio de los menores del grupo
	preciomenor<-entradamenores*150;
	i <- 0;
	Mientras (i<cantidadentradas) Hacer
		// pedimos que ingrese las edaddes
		Escribir ('Digite las edades: '),(i+1),(':');
		Leer Edades;
			// verificacion de que no sea menor a 5 años de edad en caso de que haya un niño menor de edad se le mostrara un mensaje 
			// este condicional muestra un mensaje en caso de que asista un menor de edad.
		si (Edades<5) Entonces
			Escribir ('****************************************************************************************************************************************************');
			Escribir ('*                                                         Lo sentimos, niños menores a 5 años                                                      *');
			Escribir ('*                                                               no pueden entrar.                                                                  *');
			Escribir ('****************************************************************************************************************************************************');
			Esperar 2 Segundos;
			Limpiar Pantalla;
		Finsi
		// CATEGORIA 1
		Si Edades > 5 y Edades <= 18 Entonces
			MatrizDescuento[i] <- preciomenor*0.4;//50
			MatrizPrecio[i] <- preciomenor-MatrizDescuento[i];
		FinSi
		
		Si (Edades >=19 Y Edades <= 45) Entonces
			MatrizPrecio[i]  <- preciomayor;
		FinSi
		// CATEGORIA 4
		Si (Edades >= 46 Y Edades <= 65) Entonces
			MatrizDescuento[i] <-preciomayor*0.10;
			MatrizPrecio[i] <- preciomayor-MatrizDescuento[i];
		SiNo
			// CATEGORIA 5
			MatrizDescuento[i] <- preciomayor*0.50;
			MatrizPrecio[i] <- preciomayor-MatrizDescuento[i];
		FinSi 
		i <- i+1;
	FinMientras
	// Sumamos los datos guardados en la matriz.
	precio <- 0;
	Descuento<-0;
	Para i<-0 Hasta cantidadentradas-1 Hacer
		// Sumamos los valores guardados en la matriz
		precio <- precio+MatrizPrecio[i];
		Descuento <- Descuento + MatrizDescuento[i];
	FinPara
    
	Escribir ' ';
	Escribir ('                                                         ---------------------------------------------------------                                                   ');
	Escribir ('                                                        |                      CINE MENDOZA                        |                                                 ');
	Escribir ('                                                         ----------------------------------------------------------                                                  ');
	Escribir "                                                         |                                                          |                                                  ";
	Escribir "                                                         |                      INFORME DE COMPRA                   |                                                  ";
	Escribir "                                                         |                                                          |                                                  ";
	Escribir ('                                                         ----------------------------------------------------------                                                   ');
	Escribir "                                                         |+ Numero de entradas                         N°: | ",cantidadentradas;
	Escribir "                                                         |+ Descuento                                   $: | ",Descuento;
	Escribir "                                                         |+ Precio sin descuento                        $: | ",Descuento + precio;
	Escribir "                                                         |+ Precio con descuento                        $: | ",precio;

	//Muestra en consola el precio total a pagar por las entradas seleccionadas

	Esperar 3 segundos;
FinSubProceso

//Este subproceso toma el valor total de las entradas y cuantos menores y mayores van 
// a utilizar las entradas 
SubProceso edad(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	Definir entradas,menores Como Entero;
	
	// inicializar la variable menor en falso
	
	Escribir "Cuantas entradas desea comprar?";
	Leer entradas; //Lee el valor total del numero de entradas
	Escribir "Si hay algun menor de edad digite la cantidad";
	Leer menores;//Lee el valor del numero de menores en el total de entradas
	//en caso de que sea haya un menor, dicho condicional asignara a a varible menor verdadero
	
	//Calcula la cantidad de entradas para los mayores del grupo
	entradamayores<-entradas-menores;
	//Asigna el valor de la cantidad de entradas para los menores del grupo
	entradamenores<-menores;
	//Calcula el total de las entradas
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso

SubAlgoritmo mostrarPrecio
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 ANOS: $200.";
	Escribir "MENORES DE 18 ANOS $150";
FinSubAlgoritmo
//Este subproceso muesta la cartelera de peliculas ofrecidas por el cine
// y los constos difeneciados entre mayores y menores, y toma el valor
// de que pelicula vera el grupo
SubProceso cartillapeliculas(peliculas Por Referencia)
	Definir num4 Como Entero;
	//Definir p1,p2,p3 Como Entero;
	Definir p1,p2,p3 Como Caracter;
	Limpiar Pantalla;
	Escribir "                                                                                 Gracias por su confirmacion!                                                             ";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 ANOS: $200.";
	Escribir "MENORES DE 18 ANOS $150";
	Escribir "";
	
	
	Escribir "A CONTINUACION, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opcion 1: SONIC 2 LA PELICULA.";
	Escribir "Opcion 2: RAPIDOS Y FURIOSOS 9";
	Escribir "Opcion 3: MORBIUS";
	
	//Num4 es un selector
	Leer num4;
	// segun el valor de num4 se almacena el valor de la pelicula seleccionada en la variable peliculas
	Segun num4 Hacer
		1:
			p1<-"Opcion 1: SONIC 2 LA PELICULA";
			peliculas<-p1;
		2:
			p2<-"Opcion 2: RAPIDOS Y FURIOSOS 9";
			peliculas<-p2;
		3:
			p3<-"Opcion 3: MORBIUS";
			peliculas<-p3;
		De Otro Modo:
			Escribir "Opcion Incorrecta.Por favor, digite nuevamente:";
	FinSegun
	
	//Escribir "peliculas: ",peliculas;
FinSubProceso



SubProceso horario(horas Por Referencia)
	// Este sub proceso se encarga de permitirle al usuario que elija la hora de proyeccion de la pelicula
	Definir jornada Como Entero;
	Definir j1,j2,j3,j4 Como Caracter;
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
		FinSi
	Hasta Que jornada>=1 Y jornada<=4;
	
	// Segun el valor jornada se almacena el dato de cual fue el horario de la proyeccion en la variable "horas"
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
	
FinSubProceso

SubProceso animacion
	Definir i Como Entero;
	Definir string Como Caracter;
	string<-"Procesando...";
	
	Para i<-0 Hasta Longitud(string)  Con Paso 1 Hacer
		si i=Longitud(string)  Entonces
			Limpiar Pantalla;
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                     Compra Confirmada con exito !!                                                                  ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Esperar 2 Segundos;
		FinSi
		si  i<Longitud(string)  Entonces
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "          ";
			
			Limpiar Pantalla;
			Escribir "                                                                          ",Subcadena(string,0,i);
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			Escribir "                                                                                                                                                        ";
			
		FinSi
		
		esperar 1 Segundos;
		
	FinPara
	
FinSubProceso

SubAlgoritmo Bienvenido
	Escribir ('                                              -------------------------------------------------------------------------------------------                         ');
	Escribir "                                                                     *** ¡BIENVENIDO/A AL MEJOR CINE DE MENDOZA! ***                                               ";
	Escribir ('                                                            -----------------------------------------------------------------                                     ');
	Escribir " ";
	Esperar 5 Segundos;
FinSubAlgoritmo

SubAlgoritmo Mensaje
	Escribir '                                      ---------------------------------------------------------------------------------------------------------                      ';
	Escribir "                                        ¡El cine es un bien cultural, un medio de expresión artística, un hecho de comunicación social,                              ";
	Escribir "                                                   una industria, un objeto de comercio, enseñanza, estudio e investigación.!                                        ";
	Escribir '                                                 ---------------------------------------------------------------------------------                                    ';
	Escribir "";
	
	Esperar 5 Segundos;
FinSubAlgoritmo

SubAlgoritmo  seleccion
	Escribir ('+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
	Escribir "|                                                                 SELECCIONE QUE OPERACION DESEA REALIZAR:                                                             |";
	Escribir "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------";
	Escribir "                                                                      1. COMPRAR UNA ENTRADA.                                                                           ";
	Escribir "                                                                      2. VER CARTELERA.                                                                                 "; 
	Escribir "                                                                      3. SALIR.                                                                                         ";
FinSubAlgoritmo

SubAlgoritmo Cartelera
	Escribir ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------');
	Escribir "|                                                                     LE OFRECEMOS LA SIGUIENTE CARTELERA:                                                             |";
	Escribir ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------');
	Escribir "|                                                                       Opcion 1: SONIC 2 LA PELICULA                                                                  |";
	Escribir "|                                                                       Opcion 2: RAPIDOS Y FURIOSOS 9                                                                 |";
	Escribir "|                                                                       Opcion 3: MORBIUS                                                                              |";
	Escribir ('----------------------------------------------------------------------------------------------------------------------------------------------------------------------');
	Escribir " ";
	Escribir " ";
FinSubAlgoritmo

SubAlgoritmo continuar_salir
	Escribir "                                -------------------------                                                             ----------------------                           ";
	Escribir "                               | Opcion 1: (Continuar)   |                                                           |  Opcion 2: (Salir)   |                          ";	
	Escribir "                                -------------------------                                                             ----------------------                           ";
FinSubAlgoritmo
Proceso CINE
	//Este programa tiene la funcion de dar las opciones de proyeccion de un cine, al ususario
	// Teniendo en cuenta la pelicula, el horario, la cantidad de espectadores del grupo,
	// y si estos son menores tendran un precio diferido.
	// Le informara al usuario un resumen de su eleccion y luego le ofrecera pagar el monto total.
	Definir opcion , opc Como Entero;
	Definir vendido Como Logico;
	Bienvenido;
	Mensaje;
	Limpiar Pantalla;
	opcion<-0;
	Repetir
		vendido<-falso;
		
		Si opcion = 0 Entonces
			seleccion;
			Leer Opcion;
			
		FinSi
		Limpiar Pantalla;
		Escribir '';
		
		Segun Opcion Hacer
			1:
				//En esta opcion el usuario elijira la pelicula, el horario de proyeccion y ingresara cuanto mayore y menores veran la pelicula
				Definir peliculas Como Caracter;
				Definir precio,i,j,m,butnum Como Entero;
				Definir horas Como Caracter;
				Definir butaca Como Entero;
				Definir venta,decision como entero;
				
				Definir AcumPerdidas3 Como Real;
				Definir cantidadentradas,entradamayores,entradamenores  Como Entero;
				//Llamada al subproceso edad, donde se diran cuantas entradas se desea comprar y cuantos menores hay en el grupo
				edad(entradamayores,entradamenores,cantidadentradas);
				//El subproceso tarifa calculara el precio total de las entradas
				
				tarifa(precio,entradamayores,entradamenores,cantidadentradas);
				// le damos la opcion de continuar con su compra o salir.
				continuar_salir;
				Leer decision;
				si (decision == 1) Entonces
					animacion;
					Escribir "                                                                   Gracias por su confirmacion!                                                             ";
				SiNo
					opcion <-3;
				FinSi
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
					Escribir " ";
					Escribir "Opcion 1: [ SI ]   ";
					Escribir "  ";
					Escribir " ";
					Escribir "Opcion 2: [ NO ]"   ;
					Escribir " ";
					Leer opc;
					si opcion=1 Entonces
						animacion;
					Finsi
				Hasta Que opc=1 o opc=2
				Segun opc Hacer
					1:
						Limpiar Pantalla;
						vendido <- verdadero;
					2: 
						Limpiar Pantalla;
						Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
						vendido <- Verdadero;
					De Otro Modo:
						Escribir "OPCION INCORRECTA.";
				FinSegun
			2:
				//En esta opcion se deplegara al ususario en consola las peliculas disponibles
				Limpiar Pantalla;
				
				Cartelera;
				continuar_salir;
				Leer decision;
				si (decision == 1) Entonces
					opcion <-1;
				SiNo
					opcion <-3;
				FinSi
				
			3:
				Escribir "|-----------------------------------------> Gracias por su tiempo! <--------------------------------------------|" ;
			De Otro Modo:
				Escribir "Por favor,digite nuevamente:";
		FinSegun
		
	Hasta Que opcion=3 o vendido=verdadero
	Escribir "                                                 Gracias por elejirnos!! los esperamos pronto";
FinProceso