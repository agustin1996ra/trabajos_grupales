//Subproceso: calcula el valor total a pagar por las entradas seleccionadas según las edades
subProceso tarifa(precio Por Referencia,entradamayores,entradamenores)
	definir entradas Como Entero;
	Definir preciomayor,preciomenor Como Entero;
	Limpiar Pantalla;
	//Calcula el precio total de los mayores del grupo:
	preciomayor<-entradamayores*200;
	//Calcula el precio total de los menores del grupo:
	preciomenor<-entradamenores*150;
	//Calcula el precio total:
	precio<-preciomayor+preciomenor;
	//Muestra en consola el precio total a pagar
	Escribir "Con un costo de $ ",precio;
FinSubProceso
//Subproceso: toma el valor total de las entradas (tanto de menores como de mayores)
SubProceso edad(entradamayores Por Referencia,entradamenores Por Referencia,cantidadentradas Por Referencia)
	Definir entradas,menores Como Entero;
	Escribir "¿Cuántas entradas desea comprar?";
	Leer entradas; //Lee el valor total del número de entradas
	Escribir "¿Hay algún menor de edad? Por favor, digite la cantidad:";
	Leer menores;//Lee el número de menores en el total de entradas
	//Calcula la cantidad de entradas para los mayores del grupo
	entradamayores<-entradas-menores;
	//Asigna el valor de la cantidad de entradas para los menores del grupo
	entradamenores<-menores;
	//Calcula el total de las entradas
	cantidadentradas<-entradamayores+entradamenores;
FinSubProceso
//Subproceso: muestra la cartelera de películas ofrecidas por el cine
//,los costos según la edad y toma el valor de la película seleccionada.
SubProceso cartillapeliculas(peliculas Por Referencia)
	Definir num4 Como Entero;
	Limpiar Pantalla;
	Escribir "";
	Escribir "¡GRACIAS POR SU CONFIRMACIÓN!";
	Escribir "";
	Escribir "Los precios de las entradas son los siguientes:";
	Escribir "MAYORES DE 18 AÑOS: $200.";
	Escribir "MENORES DE 18 AÑOS $150";
	Escribir "";
	Escribir "A CONTINUACIÓN, LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
	Escribir "Opción 1: SONIC 2 LA PELÍCULA.";
	Escribir "Opción 2: RÁPIDOS Y FURIOSOS 9.";
	Escribir "Opción 3: MORBIUS.";
	Repetir
		//La variable "Num4" es un selector.
		Leer num4;
		Si num4<1 O num4>3 Entonces
			Escribir Sin Saltar "Opción incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// segun el valor de "num4" se almacena el valor de la pelicula seleccionada en la variable "peliculas"
			Segun num4 Hacer
				1:
					peliculas<-"Opción 1: SONIC 2 LA PELÍCULA.";
				2:
					peliculas<-"Opción 2: RÁPIDOS Y FURIOSOS 9.";
				3:
					peliculas<-"Opción 3: MORBIUS.";
			FinSegun
		FinSi
	Hasta Que num4>=1 Y num4<=3;
FinSubProceso
SubProceso horario(horas Por Referencia)
	//subproceso: permite al usuario seleccionarla hora de proyección del film:
	Definir jornada Como Entero;
	Limpiar Pantalla;
	Escribir "Por favor, seleccione el horario en el que desea asistir:";
	Escribir "    1.- 3:00 pm.";
	Escribir "    2.- 5:00 pm.";
	Escribir "    3.- 7:00 pm.";
	Escribir "    4.- 9:00 pm.";
	Repetir
		//La variable "jornada" es un selector:
		Leer jornada;
		Si jornada<1 O jornada>4 Entonces
			Escribir Sin Saltar "Opción incorrecta. Por favor, digite nuevamente: ";
		SiNo
			// Según el valor jornada, se almacena el dato en la variable "horas":
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
SubProceso matriz()
	Definir butaca Como Entero;
	Definir i,j,m1,m Como Entero;
	Dimension butaca[5,10];
	Limpiar Pantalla;
	Escribir "";
	Escribir "Por favor, seleccione la posición de la butaca en la que desea/n ubicarse:";
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
SubProceso llenararreglo(arreglo Por Referencia,cantidadentradas)
	Definir i,m1,m Como Entero;
	Definir v Como Logico;
	Para m<-0 Hasta cantidadentradas-1 Hacer
		Repetir
			v <- Verdadero;
			Leer m1;
			
			Si m1 < 0 O m1 > 49  Entonces
				// Se salva el error de que la butaca esté fuera de rango
				v <- Falso;
				Escribir "El valor ingresado está fuera de rango. Por favor, digite nuevamente:";
			SiNo
				Si m <> 0 Entonces
					Para i <- 0 Hasta m-1 Con Paso 1 Hacer
						Si arreglo[i] = m1 Entonces
							// Se salva el error de que el número este repetido
							v <- Falso;
							Escribir "El valor ingresado está repetido. Por favor, digite nuevamente:";
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
SubProceso mostrar(arreglo,cantidadentradas)
	Definir i,m Como Entero;
	para i<-0 Hasta cantidadentradas-1 Con Paso 1 Hacer
		Escribir "En la/s butaca/s número/s: ",arreglo[i];
	FinPara
FinSubProceso
SubProceso confirmacion()
	//Menú de opciones: selección del film ,horario y entradas para mayores ó menores.
	Definir peliculas Como Caracter;
	Definir vendido Como Logico;
	Definir arregloEjemplo,arreglo Como Entero;
	Definir precio,i,j,m,butnum,m1 Como Entero;
	Definir horas Como Caracter;
	Definir butaca Como Entero;
	Definir venta como entero;
	definir opc Como Entero;
	Definir cantidadentradas,entradamayores,entradamenores Como Entero;
	Dimension arregloEjemplo[100];
	vendido<-falso;
	//Llamada al subproceso edad (cantidad de entradas y menores del grupo)
	edad(entradamayores,entradamenores,cantidadentradas);
	//Llamada alsubproceso tarifa (calculará el precio total de las entradas)
	tarifa(precio,entradamayores,entradamenores);
	//Llamada al subproceso cartillapeliculas (mostrará películas disponibles y almacenará el dato)
	cartillapeliculas(peliculas);
	// Llamada al subproceso horario (almacenará el dato del horario de proyección) 
	horario(horas);
	//Matriz: muestra la numeración de las butacas:
	matriz();
	//llena el arreglo seleccion de butacas
	llenararreglo(arregloEjemplo,cantidadentradas);
	//muestra el arreglo
	//mostrar(arregloEjemplo);
	Limpiar Pantalla;
	//Se muestra el resumen de la/s elecciones del usuario 
	Escribir "Usted está por comprar la entrada de: ";
	Escribir " ";
	Escribir "",peliculas, " .";;
	Escribir "";
	Escribir "Con un costo de $ ",precio;
	Escribir " ";
	Escribir "Empieza a las ",horas;
	Escribir " ";
	mostrar(arregloEjemplo,cantidadentradas);
	Escribir "";
	//Se solicita confirmación de las elecciones:
	Repetir
		Escribir "¿Desea confirmar la compra?";
		Escribir "Opción 1: SI.";
		Escribir "Opción 2: NO.";
		Leer opc;
		Si opc < 1 O opc > 2 Entonces
			Escribir "La opción ingresada es incorrecta. Por favor, indique:";
		FinSi
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
			Escribir "           *-AGUSTÍN RODRÍGUEZ ÁLVAREZ-* ";
			Escribir "           *-LAUTARO URQUIZA-* ";
			Escribir "           *-FEDERICO PFUND-* ";
			Escribir "           *-SABRINA MANTERO-* ";
		2: 
			Limpiar Pantalla;
			Escribir "LO SENTIMOS. SU COMPRA NO PUDO REALIZARSE.";
			vendido <- Verdadero;
		De Otro Modo:
			Escribir "OPCIÓN INCORRECTA.";
				FinSegun
FinSubProceso
Proceso cine
	//Programa que tiene como objetivo brindar las opciones de proyección de un cine. 
	//El mismo, permite: adquirir entradas para mayores y/o menores, seleccionar la película y la/s butacas.
	//Al finalizar, brindará al usuario un resumen de su elección y la opción de pagar el monto total.
	Definir opcion Como Entero;
	Definir vendido Como Logico;
	Escribir "            ¡¡¡BIENVENIDO/AS AL CINE DE LOS/AS MATE-CODERS!!!";
	Escribir "";
	Repetir
		vendido<-falso;
		Escribir "POR FAVOR, SELECCIONE LA OPERACIÓN QUE DESEA REALIZAR:";
		Escribir "";
		Escribir "1. COMPRAR UNA ENTRADA. ";
		Escribir "2. VER LA CARTELERA. ";
		Escribir "3. SALIR. ";
		Leer opcion;
		Escribir '';
		Segun opcion Hacer
			1:
				confirmacion();
				vendido <- Verdadero;
			2:
				//Opción que depliega en consola,las películas disponibles para los/as ususario/as
				Limpiar Pantalla;
				Escribir "¡Gracias por su confirmación!";
				Escribir "";
				Escribir "LE OFRECEMOS LA SIGUIENTE CARTELERA: ";
				Escribir "";
				Escribir "Opción 1: SONIC 2 LA PELÍCULA.";
				Escribir "Opción 2: RÁPIDOS Y FURIOSOS 9.";
				Escribir "Opción 3: MORBIUS.";
				Escribir " ";
				Escribir " ";
			3:
				
			De Otro Modo:
				Escribir "Por favor,digite nuevamente:";
		FinSegun
	Hasta Que opcion=3 o vendido=verdadero
FinProceso
