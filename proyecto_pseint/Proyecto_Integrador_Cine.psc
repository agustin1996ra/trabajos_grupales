Proceso cine
	//Programa que tiene como objetivo brindar las opciones de proyecci�n de un cine. 
	//El mismo, permite: adquirir entradas para mayores y/o menores, seleccionar la pel�cula y la/s butacas.
	//Al finalizar, brindar� al usuario un resumen de su elecci�n y la opci�n de pagar el monto total.
	Definir idioma como cadena;
	Repetir
		Escribir "Elija Idioma espanol o ingles";
		Leer idioma;
	Hasta Que idioma = "espanol" o idioma = "ingles"
	
	si idioma = "ingles" Entonces
		codigoIngles();
	SiNo
		si idioma = "espanol" Entonces
			codigoespanol();
		FinSi
	FinSi
FinProceso


SubProceso codigoespanol()
	Definir opcion Como Entero;
	Definir vendido Como Logico;
	Escribir "            ���BIENVENIDO/AS AL CINE DE LOS/AS MATE-CODERS!!!";
	Escribir "";
	Repetir
		vendido<-falso;
		Escribir "POR FAVOR, SELECCIONE LA OPERACI�N QUE DESEA REALIZAR:";
		Escribir "";
		Escribir "1. COMPRAR UNA ENTRADA. ";
		Escribir "2. VER LA CARTELERA. ";
		Escribir "3. SALIR. ";
		Leer opcion;
		Escribir '';
		Segun opcion Hacer
			1:
				confirmacionEspanol();
				vendido <- Verdadero;
			2:
				//Opci�n que depliega en consola,las pel�culas disponibles para los/as ususario/as
				opcion2CarteleraEspanol();
			3:
				
			De Otro Modo:
				Escribir Sin Saltar "Opci�n incorrecta. Por favor, digite nuevamente: ";
		FinSegun
	Hasta Que opcion=3 o vendido=verdadero
FinSubProceso

SubProceso codigoIngles()
	Definir opcion Como Entero;
	Definir vendido Como Logico;
	Escribir "            ���WELCOME TO THE MATE-CODERS CINEMA!!!";
	Escribir "";
	Repetir
		vendido<-falso;
		Escribir "SELECT THE OPERATION YOU WANT TO DO, PLEASE:";
		Escribir "";
		Escribir "1. BUY A TICKET. ";
		Escribir "2. SEE MOVIE BILLBOARD. ";
		Escribir "3. EXIT. ";
		Leer opcion;
		Escribir '';
		Segun opcion Hacer
			1:
				confirmacionIngles();
				vendido <- Verdadero;
			2:
				//Opci�n que depliega en consola,las pel�culas disponibles para los/as ususario/as
				opcion2CarteleraIngles();
			3:
				
			De Otro Modo:
				Escribir Sin Saltar "Wrong choice. Please, type again: ";
		FinSegun
	Hasta Que opcion=3 o vendido=verdadero
FinSubProceso

//Comentario

SubProceso confirmacionEspanol()
	//Men� de opciones: selecci�n del film ,horario y entradas para mayores � menores.
	Definir peliculas,horas Como Caracter;
	Definir vendido Como Logico;
	Definir cantidadentradas,entradamayores,entradamenores,precio,opc,arregloEjemplo,arreglo Como Entero;
	Dimension arregloEjemplo[100];
	vendido<-falso;
	//Llamada al subproceso edad (cantidad de entradas y menores del grupo)
	edadEspanol(entradamayores,entradamenores,cantidadentradas);
	//Llamada alsubproceso tarifa (calcular� el precio total de las entradas)
	tarifa(precio,entradamayores,entradamenores);
	//Llamada al subproceso cartillapeliculas (mostrar� pel�culas disponibles y almacenar� el dato)
	cartillapeliculasEspanol(peliculas);
	// Llamada al subproceso horario (almacenar� el dato del horario de proyecci�n) 
	
	horarioEspanol(horas);
	//Matriz: muestra la numeraci�n de las butacas:
	
	//llena el arreglo seleccion de butacas
	llenararregloEspanol(arregloEjemplo,cantidadentradas);
	//muestra el arreglo
	//mostrar(arregloEjemplo);
	Limpiar Pantalla;
	
	//Se muestra el resumen de la/s elecciones del usuario 
	Escribir "Usted est� por comprar la entrada de: ";
	Escribir " ";
	Escribir "",peliculas, " .";;
	Escribir "";
	Escribir "Con un costo de: $ ",precio;
	Escribir " ";
	Escribir "Empieza a las: ",horas;
	Escribir " ";
	mostrarespanol(arregloEjemplo,cantidadentradas);
	Escribir "";
	
	//Se solicita confirmaci�n de las elecciones:
	Repetir
		Escribir "�Desea confirmar la compra?";
		Escribir "Opci�n 1: SI.";
		Escribir "Opci�n 2: NO.";
		Leer opc;
		Si opc < 1 O opc > 2 Entonces
			Escribir "La opci�n ingresada es incorrecta. Por favor, indique:";
		FinSi
	Hasta Que opc=1 o opc=2
	
	Segun opc Hacer
		1:
			Limpiar Pantalla;
			vendido <- verdadero;
			Escribir "        ���Gracias por su compra!!!";
			Escribir "";
			Escribir "              �Los/as esperamos!";
			Escribir "";
			Escribir "           *-FACUNDO MART�N GIACOMOZZI-*  ";
			Escribir "           *-MAT�AS CANEVARO*   ";
			Escribir "           *-MART�N ALEJANDRO TORRES-* ";
			Escribir "           *-EDUARDO LUIS G�MEZ-*";
			Escribir "           *-CINTHIA FERNANDA SEGOVIA-*";
			Escribir "           *-GABRIEL ROMERO-* ";
			Escribir "           *-AGUST�N RODR�GUEZ �LVAREZ-* ";
			Escribir "           *-LAUTARO URQUIZA-* ";
			Escribir "           *-FEDERICO PFUND-* ";
			Escribir "           *-SABRINA MANTERO-* ";
		2: 
			Limpiar Pantalla;
			Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
			vendido <- Verdadero;
		De Otro Modo:
			Escribir "OPCI�N INCORRECTA.";
	FinSegun
FinSubProceso



SubProceso confirmacionIngles()
	//Men� de opciones: selecci�n del film ,horario y entradas para mayores � menores.
	Definir peliculas,horas Como Caracter;
	Definir vendido Como Logico;
	Definir cantidadentradas,entradamayores,entradamenores,precio,opc,arregloEjemplo,arreglo Como Entero;
	Dimension arregloEjemplo[100];
	vendido<-falso;
	//Llamada al subproceso edad (cantidad de entradas y menores del grupo)
	edadIngles(entradamayores,entradamenores,cantidadentradas);
	//Llamada alsubproceso tarifa (calcular� el precio total de las entradas)
	tarifa(precio,entradamayores,entradamenores);
	//Llamada al subproceso cartillapeliculas (mostrar� pel�culas disponibles y almacenar� el dato)
	cartillapeliculasIngles(peliculas);
	// Llamada al subproceso horario (almacenar� el dato del horario de proyecci�n) 
	horarioIngles(horas);
	//Matriz: muestra la numeraci�n de las butacas:
	butacaIngles();
	matriz();
	//llena el arreglo seleccion de butacas
	llenararregloIngles(arregloEjemplo,cantidadentradas);
	//muestra el arreglo
	//mostrar(arregloEjemplo);
	Limpiar Pantalla;
	
	//Se muestra el resumen de la/s elecciones del usuario 
	Escribir "You are about to buy the entrance of: ";
	Escribir " ";
	Escribir "",peliculas, " .";;
	Escribir "";
	Escribir "Whith a cost of: $ ",precio;
	Escribir " ";
	Escribir "Start at: ",horas;
	Escribir " ";
	mostrarIngles(arregloEjemplo,cantidadentradas);
	Escribir "";
	
	//Se solicita confirmaci�n de las elecciones:
	Repetir
		Escribir "�You want to confirm the purchase?";
		Escribir "Option 1: YES.";
		Escribir "Option 2: NO.";
		Leer opc;
		Si opc < 1 O opc > 2 Entonces
			Escribir "The option entered is incorrect. Please, indicate:";
		FinSi
	Hasta Que opc=1 o opc=2
	
	Segun opc Hacer
		1:
			Limpiar Pantalla;
			vendido <- verdadero;
			Escribir "        ���Thanks for your purchase!!!";
			Escribir "";
			Escribir "              �We wait for you!";
			Escribir "";
			Escribir "           *-FACUNDO MART�N GIACOMOZZI-*  ";
			Escribir "           *-MAT�AS CANEVARO*   ";
			Escribir "           *-MART�N ALEJANDRO TORRES-* ";
			Escribir "           *-EDUARDO LUIS G�MEZ-*";
			Escribir "           *-CINTHIA FERNANDA SEGOVIA-*";
			Escribir "           *-GABRIEL ROMERO-* ";
			Escribir "           *-AGUST�N RODR�GUEZ �LVAREZ-* ";
			Escribir "           *-LAUTARO URQUIZA-* ";
			Escribir "           *-FEDERICO PFUND-* ";
			Escribir "           *-SABRINA MANTERO-* ";
		2: 
			Limpiar Pantalla;
			Escribir "WE ARE SORRY, YOUR PURCHASE COULD NOT BE COMPLETED";
			vendido <- Verdadero;
		De Otro Modo:
			Escribir "WRONG OPTION.";
	FinSegun
FinSubProceso
//  CODIGO QUE COMPARTEN LOS DOS IDIOMAS

// Porcesos de calculo
SubProceso edadEspanol(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	//Definir entradas,menores Como Entero;
	Definir entradas,menores Como Entero;
	entradaEspanol(entradas,menores);
	entradamayores<-entradas-menores;
	//Asigna el valor de la cantidad de entradas para los menores del grupo
	entradamenores<-menores;
	//Calcula el total de las entradas
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso
SubProceso edadIngles(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	//Definir entradas,menores Como Entero;
	Definir entradas,menores Como Entero;
	entradaIngles(entradas,menores);
	entradamayores<-entradas-menores;
	//Asigna el valor de la cantidad de entradas para los menores del grupo
	entradamenores<-menores;
	//Calcula el total de las entradas
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso

//Subproceso: calcula el valor total a pagar por las entradas seleccionadas seg�n las edades
subProceso tarifa(precio Por Referencia,entradamayores,entradamenores)
	Definir preciomayor,preciomenor Como Entero;
	
	//Calcula el precio total de los mayores del grupo:
	preciomayor<-entradamayores*200;
	//Calcula el precio total de los menores del grupo:
	preciomenor<-entradamenores*150;
	//Calcula el precio total:
	precio<-preciomayor+preciomenor;
	//Muestra en consola el precio total a pagar
FinSubProceso


//Subproceso 
SubProceso cartillapeliculasEspanol(peliculas Por Referencia)
	Escribir "";
	Escribir "�GRACIAS POR SU CONFIRMACI�N!";
	Escribir "";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 A�OS: $200";
	Escribir "MENORES DE 18 A�OS $150";
	Escribir "";
	Escribir "A CONTINUACI�N, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opci�n 1: SONIC 2 LA PEL�CULA.";
	Escribir "Opci�n 2: R�PIDOS Y FURIOSOS 9.";
	Escribir "Opci�n 3: MORBIUS.";
	Definir num4 Como Entero;
	Repetir
		//La variable "Num4" es un selector.
		Leer num4;
		Si num4<1 O num4>3 Entonces
			Escribir Sin Saltar "Opci�n incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// segun el valor de "num4" se almacena el valor de la pelicula seleccionada en la variable "peliculas"
			Segun num4 Hacer
				1:
					peliculas<-" SONIC 2 LA PEL�CULA.";
				2:
					peliculas<-" R�PIDOS Y FURIOSOS 9.";
				3:
					peliculas<-" MORBIUS.";
			FinSegun
		FinSi
	Hasta Que num4>=1 Y num4<=3;
FinSubProceso

SubProceso cartillapeliculasIngles(peliculas Por Referencia)
	Escribir "";
	Escribir "�THANKS FOR YOUR CONFIRMATION!";
	Escribir "";
	Escribir "The ticket prices are as follows:";
	Escribir "OLDER THAN 18 YEARS OLD: $200";
	Escribir "YOUNGER THAN 18 YEARS OLD: $150";
	Escribir "";
	Escribir "NEXT, WE OFFER YOU THE FOLLOWING MOVIE BILLBOARD: ";
	Escribir "OPTION 1: SONIC 2 THE MOVIE.";
	Escribir "OPTION 2: FAST AND FURIOUS 9.";
	Escribir "OPTION 3: MORBIUS.";
	Definir num4 Como Entero;
	Repetir
		//La variable "Num4" es un selector.
		Leer num4;
		Si num4<1 O num4>3 Entonces
			Escribir Sin Saltar "Wrong choice: Please select again: ";
		SiNo
			// segun el valor de "num4" se almacena el valor de la pelicula seleccionada en la variable "peliculas"
			Segun num4 Hacer
				1:
					peliculas<-" SONIC 2 LA PEL�CULA.";
				2:
					peliculas<-" R�PIDOS Y FURIOSOS 9.";
				3:
					peliculas<-" MORBIUS.";
			FinSegun
		FinSi
	Hasta Que num4>=1 Y num4<=3;
FinSubProceso


//  
SubProceso horarioEspanol(horas Por Referencia)
	//subproceso: permite al usuario seleccionarla hora de proyecci�n del film:
	Definir jornada Como Entero;
	Escribir "Por favor, seleccione el horario en el que desea asistir:";
	Escribir "    1.- 3:00 pm.";
	Escribir "    2.- 5:00 pm.";
	Escribir "    3.- 7:00 pm.";
	Escribir "    4.- 9:00 pm.";
	
	Repetir
		//La variable "jornada" es un selector:
		Leer jornada;
		Si jornada<1 O jornada>4 Entonces
			Escribir Sin Saltar "Opci�n incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// Seg�n el valor jornada, se almacena el dato en la variable "horas":
			Segun jornada Hacer
				1:
					horas<-"3:00 pm.";
				2:
					horas<-"5:00 pm.";
				3:
					horas<-"7:00 pm.";
				4:
					horas<-"9:00 pm.";
			FinSegun
		FinSi
	Hasta Que jornada>=1 Y jornada<=4;
FinSubProceso

SubProceso horarioIngles(horas Por Referencia)
	//subproceso: permite al usuario seleccionarla hora de proyecci�n del film:
	Definir jornada Como Entero;
	Escribir "Select the time you want to assist, please:";
	Escribir "    1.- 3:00 pm.";
	Escribir "    2.- 5:00 pm.";
	Escribir "    3.- 7:00 pm.";
	Escribir "    4.- 9:00 pm.";
	
	Repetir
		//La variable "jornada" es un selector:
		Leer jornada;
		Si jornada<1 O jornada>4 Entonces
			Escribir Sin Saltar "Wrong choice. Please, type again: ";
		SiNo
			// Seg�n el valor jornada, se almacena el dato en la variable "horas":
			Segun jornada Hacer
				1:
					horas<-"3:00 pm.";
				2:
					horas<-"5:00 pm.";
				3:
					horas<-"7:00 pm.";
				4:
					horas<-"9:00 pm.";
			FinSegun
		FinSi
	Hasta Que jornada>=1 Y jornada<=4;
FinSubProceso

// Version en ingles
SubProceso llenararregloEspanol(arreglo Por Referencia,cantidadentradas)
	Definir i,m1,m Como Entero;
	Definir v Como Logico;
	Escribir "Por favor, seleccione la posici�n de la butaca en la que desea/n ubicarse:";
	matriz();
	Para m<-0 Hasta cantidadentradas-1 Hacer
		Repetir
			v <- Verdadero;
			Leer m1;
			
			Si m1 < 0 O m1 > 49  Entonces
				// Se salva el error de que la butaca est� fuera de rango
				v <- Falso;
				Escribir "El valor ingresado est� fuera de rango o est� repetido. Por favor, digite nuevamente:";
			SiNo
				Si m <> 0 Entonces
					Para i <- 0 Hasta m-1 Con Paso 1 Hacer
						Si arreglo[i] = m1 Entonces
							// Se salva el error de que el n�mero este repetido
							v <- Falso;
							Escribir "El valor ingresado est� fuera de rango o est� repetido. Por favor, digite nuevamente:";
						FinSi
					FinPara
				FinSi
			FinSi
			
			Si v = Verdadero Entonces
				arreglo[m] <- m1;
			FinSi
		Hasta Que v = Verdadero
	FinPara
FinSubProceso

SubProceso llenararregloIngles(arreglo Por Referencia,cantidadentradas)
	Definir i,m1,m Como Entero;
	Definir v Como Logico;
	Escribir "Please, select the position of the seat you want to sit:";
	matriz();
	Para m<-0 Hasta cantidadentradas-1 Hacer
		Repetir
			v <- Verdadero;
			Leer m1;
			
			Si m1 < 0 O m1 > 49  Entonces
				// Se salva el error de que la butaca est� fuera de rango
				v <- Falso;
				Escribir "The value is out of range or is repeated. Please, try again:";
			SiNo
				Si m <> 0 Entonces
					Para i <- 0 Hasta m-1 Con Paso 1 Hacer
						Si arreglo[i] = m1 Entonces
							// Se salva el error de que el n�mero este repetido
							v <- Falso;
							Escribir "The value is out of range or is repeated. Please, try again:";
						FinSi
					FinPara
				FinSi
			FinSi
			
			Si v = Verdadero Entonces
				arreglo[m] <- m1;
			FinSi
		Hasta Que v = Verdadero
	FinPara
FinSubProceso



SubProceso matriz()
	Definir i,j Como Entero;
	
	Escribir "";
	
	Escribir "";
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			Escribir sin saltar i;
			Escribir Sin Saltar j," ";
		FinPara
		Escribir "";
	FinPara
	Escribir "";
FinSubProceso



//SUBPROCESO PARA MOSTRAR LAS PELICULAS EN CARTELERA "opcion 2" del menu principal


SubProceso opcion2CarteleraEspanol()
	Limpiar Pantalla;
	Escribir "�Gracias por su confirmaci�n!";
	Escribir "";
	Escribir "LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "";
	Escribir "Opci�n 1: SONIC 2 LA PEL�CULA.";
	Escribir "Opci�n 2: R�PIDOS Y FURIOSOS 9.";
	Escribir "Opci�n 3: MORBIUS.";
	Escribir " ";
	Escribir " ";
FinSubProceso

SubProceso opcion2CarteleraIngles()
	Limpiar Pantalla;
	Escribir "�Thanks for your confirmation!";
	Escribir "";
	Escribir "WE OFFER YOU THE FOLLOWING MOVIE BILLBOARD: ";
	Escribir "";
	Escribir "Option 1: SONIC 2 THE MOVIE.";
	Escribir "Option 2: FAST AND FURIOUS 9.";
	Escribir "Option 3: MORBIUS.";
	Escribir " ";
	Escribir " ";
FinSubProceso


// Sub

SubProceso entradaEspanol(entradas Por Referencia,menores Por Referencia)
	Escribir "�Cu�ntas entradas desea comprar?";
	Leer entradas; //Lee el valor total del n�mero de entradas
	Escribir "�Hay alg�n menor de edad? Por favor, digite la cantidad:";
	Leer menores;//Lee el n�mero de menores en el total de entradas
	//Calcula la cantidad de entradas para los mayores del grupo
FinSubProceso

SubProceso entradaIngles(entradas Por Referencia,menores Por Referencia)
	Escribir "�How many tickets do you want to buy?";
	Leer entradas; //Lee el valor total del n�mero de entradas
	Escribir "�Is there any younger? Enter the cuantity, please:";
	Leer menores;//Lee el n�mero de menores en el total de entradas
	//Calcula la cantidad de entradas para los mayores del grupo
FinSubProceso


//Comentario

SubProceso mostrarespanol(arreglo,cantidadentradas)
	Definir i Como Entero;
	para i<-0 Hasta cantidadentradas-1 Con Paso 1 Hacer
		Escribir "En la/s butaca/s n�mero/s: ",arreglo[i];
	FinPara
FinSubProceso

SubProceso mostrarIngles(arreglo,cantidadentradas)
	Definir i Como Entero;
	para i<-0 Hasta cantidadentradas-1 Con Paso 1 Hacer
		Escribir "In seat number: ",arreglo[i];
	FinPara
FinSubProceso
