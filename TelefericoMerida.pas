Program TelefericoMerida;
uses crt;
const
	cantMaxPasajeros = 60;
var
	BoletosV, BoletosC, asientosD,edadAdultos, edadNinos, cantBoletos, op: integer;
	estaciones, tramos, tipoBoleto: string;
	nombre, apellido, cedula: string;
	montoTotal, precioTotalBoleto: real;
begin
	cantBoletos := 0; //Inicializamos la cantidad de boletos en cero.
	
		writeln('*************************************************');
		writeln('  BIENVENIDO AL SISTEMA DEL TELEFERICO DE MERIDA');
		writeln('*************************************************');
	repeat
		writeln('||---------------------------------------------||');
		writeln('||--------------- MENU PRINCIPAL --------------||');
		writeln('|| 1. Comprar Boletos                          ||');
		writeln('|| 2. Ver Sistema                              ||');
		writeln('|| 3. Salir                                    ||');
		writeln('||---------------------------------------------||');
		write('|| Indique su opcion y presione enter: ');
		readln(op);
		delay (1000);
		
		if op = 1 then
			begin
			clrscr;
				writeln('||************************************************************||');
				writeln('|| AVISO: La capacidad maxima de pasajeros por viaje es de ', cantMaxPasajeros, ' ||');
				writeln('||************************************************************||');
				
				writeln(' ');
				write('|| Cuantos boletos desea comprar?: ');
				readln(cantBoletos);
				
				if (cantBoletos <= 60) then
					begin
						clrscr;
						writeln('||------------------------------------------------------------||');
						writeln('||                 SELECCIONE EL TIPO DE BOLETO               ||');
						writeln('||------------------------------------------------------------||');
						writeln('|| 1. Boleto General - Ida/vuelta. {PRECIO: $40.00}           ||');
						writeln('|| 2. Boleto General - Solo ida. {PRECIO: $20.00}             ||');
						writeln('|| 3. Boleto Especial - Ida/vuelta. {PRECIO: $24.00}          ||');
						writeln('|| 4. Boleto Especial - Solo ida. {PRECIO: $12.00}            ||');
						writeln('||------------------------------------------------------------||');
						write('|| Ingrese el numero de su eleccion y presione ENTER: ');
						readln(tipoBoleto);
																	 
						case tipoBoleto of
							'1': begin
								textcolor(Yellow);
								writeln('||------------------------------------------------------------||');
								writeln('||Usted selecciono la opcion 1. Boleto General - Ida/vuelta.  ||');
								//calculamos el costo total segun la cantidad de boletos
								precioTotalBoleto := (40 * cantBoletos);
								writeln('|| Cuenta total: $', precioTotalBoleto:5:2); 
								writeln('||------------------------------------------------------------||');
							end;
							
							'2': begin
								textcolor(Yellow);
								writeln('||------------------------------------------------------------||');
								writeln('||Usted selecciono la opcion 2. Boleto General - Solo ida.    ||');
								//calculamos el costo total segun la cantidad de boletos
								precioTotalBoleto := (20 * cantBoletos);
								writeln('|| Cuenta total: $', precioTotalBoleto:5:2); 
								writeln('||------------------------------------------------------------||');
							end;
							
							'3': begin
								textcolor(Yellow);
								writeln('||------------------------------------------------------------||');
								writeln('|| Usted selecciono la opcion 3. Boleto Especial - Ida/vuelta.||');
								//calculamos el costo total segun la cantidad de boletos
								precioTotalBoleto := (24 * cantBoletos);
								writeln('|| Cuenta total: $', precioTotalBoleto:5:2); 
								writeln('||------------------------------------------------------------||');
							end;
							
							'4': begin
								textcolor(Yellow);
								writeln('||------------------------------------------------------------||');
								writeln('|| Usted selecciono la opcion 4. Boleto Especial - Solo ida.  ||');
								//calculamos el costo total segun la cantidad de boletos
								precioTotalBoleto := (12 * cantBoletos);
								writeln('|| Cuenta total: $', precioTotalBoleto:5:2); 
								writeln('||------------------------------------------------------------||');
							end;
						end;
						
						delay(5000);
						clrscr;
						writeln('||-----------------------------------------------------------------||');
						writeln('|| Para continuar con su transaccion, ingrese los siguientes datos ||');
						writeln('||-----------------------------------------------------------------||');
						write('||Nombre: ');
						readln(nombre);
						
						writeln(' ');
						write('||Apellido: ');
						readln(apellido);
						
						writeln(' ');
						write('||Numero de Cedula: ');
						readln(cedula);
						
						clrscr;
						writeln('||--------------------------||');
						writeln('||    DATOS DEL PASAJERO    ||');
						writeln('||--------------------------||');
						writeln('|| Nombre: ', nombre);
						writeln('|| Apellido: ', apellido);
						writeln('|| Numero de cedula: ', cedula);
						writeln('||--------------------------||');
						delay (3000);
						
						repeat
							clrscr;
							writeln('||----------------------||');
							writeln('||      ESTACIONES      ||');
							writeln('||----------------------||');
							writeln('|| 1. Barinitas         ||');
							writeln('|| 2. La montana        ||');
							writeln('|| 3. La Aguada         ||');
							writeln('|| 4. Loma Redonda      ||');
							writeln('|| 5. Pico Espejo       ||');
							writeln('||----------------------||');
							write('|| Indique la estacion de su preferencia y presione ENTER: ');
							readln(estaciones);
						until (estaciones = '1') or (estaciones = '2') or (estaciones = '3') or (estaciones = '4') or (estaciones = '5');
						
						case estaciones of
							'1': begin
							end;
							
							'2': begin
							end;
							
							'3': begin
							end;
							
							'4': begin
							end;
							
							'5': begin
							end;
							
						end; //END DEL CASE DENTRO DEL PRIMER IF
					end
					
					else if (cantBoletos > 60) then
						begin
							writeln(' ');
							writeln('------------------------------------------------------------------------');
							writeln('Excede el limite de la capacidad maxima de pasajeros, intente nuevamente');
							writeln('------------------------------------------------------------------------');
							delay (2000);
							
							clrscr();
						end;
					end;
	until op = 3;
end.
