Program TelefericoMerida;
uses crt;
const
	cantMaxPasajeros = 60;
	boletoIdaVuelta = 40;
	boletoGeneral = 20;
	boletoEspecial = 12;
var
	BoletosV, BoletosC, asientosD, edad, cantBoletos, op: integer;
	estaciones, tramos, tipoBoleto, resp: string;
	nombre, apellido, cedula: string;
	montoTotal, precioTotalBoletoGeneral, precioTotalBoletoEspecial, precioTotalBoletoIdaVuelta: real;
begin
	cantBoletos := 0; //Inicializamos la cantidad de boletos en cero.
		
		textcolor(yellow);
		writeln('||********************************************************||');
		writeln('||     BIENVENIDO AL SISTEMA DEL TELEFERICO DE MERIDA     ||');
		writeln('||********************************************************||');
	repeat
		textcolor(white);
		writeln(' ');
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
				repeat
					clrscr;
					textcolor(white);
					writeln('||------------------------------------------||');
					writeln('|| Seleccione la estacion de su preferencia ||');
					writeln('||------------------------------------------||');
					writeln('||                ESTACIONES                ||');
					writeln('||------------------------------------------||');
					writeln('|| 1. Barinitas                             ||');
					writeln('|| 2. La montana                            ||');
					writeln('|| 3. La Aguada                             ||');
					writeln('|| 4. Loma Redonda                          ||');
					writeln('|| 5. Pico Espejo                           ||');
					writeln('||------------------------------------------||');
					write('|| Indique el numero y presione ENTER: ');
					readln(estaciones);
					
					case estaciones of
						'1': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|***********************************************|');
								writeln('| Usted ha seleccionado la estacion "Barinitas" |');
								writeln('|***********************************************|');
								delay(2000);
						end;
						
						'2': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|************************************************|');
								writeln('| Usted ha seleccionado la estacion "La Montana" |');
								writeln('|************************************************|');
								delay(2000);
						end;
						
						'3': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|***********************************************|');
								writeln('| Usted ha seleccionado la estacion "La Aguada" |');
								writeln('|***********************************************|');
								delay(1500);
						end;
						
						'4': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|**************************************************|');
								writeln('| Usted ha seleccionado la estacion "Loma Redonda" |');
								writeln('|**************************************************|');
								delay(2000);
						end;
						
						'5': begin
								writeln(' ');
								textcolor(yellow);
								writeln('||-------------------------------------------------||');
								writeln('|| Usted ha seleccionado la estacion "Pico Espejo" ||');
								writeln('||-------------------------------------------------||');
								delay(2000);
						end;
					end;
				until (estaciones = '1') or (estaciones = '2') or (estaciones = '3') or (estaciones = '4') or (estaciones = '5');
				
				repeat
					clrscr;
					textcolor(white);
					writeln(' ');
					writeln('||------------------------------------------||');
					writeln('|| Seleccione el tramo de su preferencia    ||');
					writeln('||------------------------------------------||');
					writeln('||                  TRAMOS                  ||');
					writeln('||------------------------------------------||');
					writeln('|| 1. Barinitas - La Montana                ||');
					writeln('|| 2. La montana - La Aguada                ||');
					writeln('|| 3. La Aguada - Loma Redonda              ||');
					writeln('|| 4. Loma Redonda - Pico Espejo            ||');
					writeln('||------------------------------------------||');
					write('|| Indique el numero y presione ENTER: ');
					readln(tramos);
					
					case tramos of
						'1': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|*********************************************************|');
								writeln('| Usted ha seleccionado el tramo "Barinitas - La Montana" |');
								writeln('|*********************************************************|');
								delay(2000);
						end;
						
						'2': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|*********************************************************|');
								writeln('| Usted ha seleccionado el tramo "La montana - La Aguada" |');
								writeln('|*********************************************************|');
								delay(2000);
						end;
						
						'3': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|***********************************************************|');
								writeln('| Usted ha seleccionado el tramo "La Aguada - Loma Redonda" |');
								writeln('|***********************************************************|');
								delay(2000);
						end;
						
						'4': begin
								writeln(' ');
								textcolor(yellow);
								writeln('|*************************************************************|');
								writeln('| Usted ha seleccionado el tramo "Loma Redonda - Pico Espejo" |');
								writeln('|*************************************************************|');
								delay(2000);
						end;
					end;
				until (tramos = '1') or (tramos = '2') or (tramos = '3') or (tramos = '4');
				
				clrscr;
				textcolor(red);
				writeln('||*****************************************************************||');
				writeln('||   AVISO: La capacidad maxima de pasajeros por viaje es de ', cantMaxPasajeros, '    ||');
				writeln('||*****************************************************************||');
				
				writeln(' ');
				textcolor(white);
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

				writeln(' ');
				writeln('||---------------------------------------------||');
				writeln('|| Viaja con personas de tercera edad o Ninos? ||');
				writeln('|| 1. Si                                       ||');
				writeln('|| 2. No                                       ||');
				writeln('||---------------------------------------------||');
				write('|| Indique su respuesta y presione ENTER: ');
				readln(resp);
				
				case resp of
					'1': begin
						textcolor(white);
						writeln('  ');
						writeln('||---------------------------------------------||');
						write('|| Ingrese la edad del nino/a y/o adulto mayor: ');
						readln(edad); 
						
							if (edad >= 3) and (edad <= 12) or (edad >= 65) then
								begin
									writeln('  ');
									writeln('||---------------------------------------------------------------------||');
									writeln('|| Debe escoger el Boleto "Especial" para continuar con su transaccion ||');
									writeln('||---------------------------------------------------------------------||');
									delay(2000);
								end
							else 
								if (edad > 12) then 
									begin
										writeln('||------------------------------------------------------||');
										writeln('|| Los ninos/as mayores de 12 anos pagan Boleto General ||');
										writeln('||------------------------------------------------------||');
									end
								else 
									if (edad < 3) then
										begin
											textcolor(yellow);
											writeln(' ');
											writeln('||**********************************************************||');
											writeln('|| LOS NINOS MENORES DE 3 ANOS QUEDAN TOTALMENTE EXONERADOS ||');
											writeln('||**********************************************************||');
											delay(2000);
										end;
					end;
					'2': begin
						writeln('  ');
						writeln('||---------------------------------------------||');
						writeln('||  Puede continuar con su transaccion normal  ||');
						writeln('||---------------------------------------------||');
						delay(2000);
					end;
				end;
				
				clrscr;
				writeln('||---------------------------------------------||');
				write('|| Cuantos boletos desea comprar? (MAXIMO 60): ');
				readln(cantBoletos);

				if (cantBoletos <= 60) then		
					begin
						repeat
							clrscr;
							textcolor(white);
							writeln('||---------------------------------------------||');
							writeln('||          SELECCIONE EL TIPO DE BOLETO       ||');
							writeln('||---------------------------------------------||');
							writeln('|| 1. Boleto ida/vuelta  |  {PRECIO: $40.00}   ||');
							writeln('|| 2. Boleto General     |  {PRECIO: $20.00}   ||');
							writeln('|| 3. Boleto Especial    |  {PRECIO: $12.00}   ||');
							writeln('|| 4. Ver Factura                              ||');
							writeln('||---------------------------------------------||');
							write('|| Ingrese el numero de su eleccion y presione ENTER: ');
							readln(tipoBoleto);
																	 
							case tipoBoleto of
								'1': begin
									writeln('||--------------------------------------------------||');
									writeln('||Usted selecciono la opcion 1. Boleto ida/vuelta.  ||');
									//calculamos el costo total segun la cantidad de boletos
									precioTotalBoletoIdaVuelta := (boletoIdaVuelta * cantBoletos);
									writeln('|| Cuenta total: $', precioTotalBoletoIdaVuelta:5:2); 
									writeln('||--------------------------------------------------||');
									delay(3000);
								end;
								
								'2': begin
									writeln('||---------------------------------------------||');
									writeln('||Usted selecciono la opcion 2. Boleto General ||');
									//calculamos el costo total segun la cantidad de boletos
									precioTotalBoletoGeneral := (boletoGeneral * cantBoletos);
									writeln('|| Cuenta total: $', precioTotalBoletoGeneral:5:2); 
									writeln('||---------------------------------------------||');
									delay(3000);
								end;
								
								'3': begin
									writeln('||-----------------------------------------------||');
									writeln('|| Usted selecciono la opcion 3. Boleto Especial ||');
									//calculamos el costo total segun la cantidad de boletos
									precioTotalBoletoEspecial := (boletoEspecial * cantBoletos);
									writeln('|| Cuenta total: $', precioTotalBoletoEspecial:5:2); 
									writeln('||-----------------------------------------------||');
									delay(3000);
								end;
								
								'4': begin
									textcolor(lightgreen);
									writeln('||*********************************************************||');
									writeln('||                          FACTURA                        ||');
									writeln('||*********************************************************||');
									writeln('|| EMPRESA: Teleferico Merida.                             ||');
									writeln('|| DIRECCION: Merida.                                      ||');
									writeln('||*********************************************************||');
									writeln('||  Nombre: ', (nombre));
									writeln('||  Apellido: ', (apellido));
									writeln('||  Cedula: ', (cedula));
									writeln('||  Estacion: ', (estaciones));
									writeln('||  Tramo: ', (tramos));
									writeln('||  Boletos comprados: ', cantBoletos);
									writeln('||  Tipo de Boletos: ', tipoBoleto);
									writeln('||=========================================================||');
									writeln('||                                 TOTAL A PAGAR->  ', montoTotal, '$');
									writeln('||*********************************************************||');
								end;
							end;
							
						until (tipoBoleto = '4');
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
