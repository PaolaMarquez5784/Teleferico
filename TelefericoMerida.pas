Program TelefericoMerida;
uses crt;
const
	cantMaxPasajeros = 60;
	boletoIdaVuelta = 40;
	boletoGeneral = 20;
	boletoEspecial = 12;
var
	BoletosV, BoletosC, asientosD, cantBoletos, op, resp, totalidadVentas, edad: integer;
	boletosIdaVuelta, boletosGenerales, boletosDisponibles, montoTotal, totalBoletos: integer;
	totalBoletosCancelados, totalBoletosGenerales, totalBoletosIdaVuelta: integer;
	nombre, apellido, cedula, estaciones, tramos, tipoBoleto: string;
	montoTotalIdaVuelta, montoTotalGeneral, ventaBoletosGenerales, ventaBoletosIdaVuelta: real;
	precioBoletoGeneral, precioBoletoIdaVuelta, precioBoletoEspecial: real;
begin
	//Inicializamos todo en cero.
	cantBoletos := 0; 
	totalidadVentas := 0;
	precioBoletoGeneral := 0;
	precioBoletoIdaVuelta := 0;
	totalBoletos := 0;
	montoTotalIdaVuelta := 0;
	montoTotalGeneral := 0;
	BoletosV := 0;
	BoletosC := 0;
	asientosD := cantMaxPasajeros;
		
		textcolor(yellow);
		Gotoxy(10,4);
		writeln('||********************************************************||');
		Gotoxy(10,5);
		writeln('||     BIENVENIDO AL SISTEMA DEL TELEFERICO DE MERIDA     ||');
		Gotoxy(10,6);
		writeln('||********************************************************||');
		writeln();
		writeln();
		writeln();
		
		Gotoxy(10,7);
		writeln('                             --                             ');
		Gotoxy(10,8);
		writeln('                           /    \                           ');
		Gotoxy(10,9);
		writeln('                        --        --                        ');
		Gotoxy(10,10);
		writeln('                       |            |                       ');   
		Gotoxy(10,11);
		writeln('   |===================================================|    ');
		Gotoxy(10,12);
		writeln('                            ||||                            ');
		Gotoxy(10,13);
		writeln('                            ||||                            ');
		Gotoxy(10,14);
		writeln('                            ||||                            ');
		Gotoxy(10,15);
		writeln('     __________________________________________________     ');
		Gotoxy(10,16);
		writeln('   /   ____________       ________       ____________   \   ');
		Gotoxy(10,17);
		writeln('  |   (            )     (        )     (            )   |  ');
		Gotoxy(10,18);
		writeln('  |   (            )     (        )     (            )   |  ');
		Gotoxy(10,19);
		writeln('  |   (            )     (        )     (            )   |  ');
		Gotoxy(10,20);
		writeln('  |   (____________)     (________)     (____________)   |  ');
		Gotoxy(10,21);
		writeln('  |______________________________________________________|  ');
		Gotoxy(10,22);
		writeln('  |______________________________________________________|  ');
		Gotoxy(10,23);
		writeln('  |______________________________________________________|  ');
		Gotoxy(10,24);
		writeln('  |                   TELEFERICO MERIDA                  |  ');
		Gotoxy(10,25);
		writeln('   \____________________________________________________/   ');
		delay(5000);

	repeat
		clrscr;
		textcolor(white);
		writeln();
		Gotoxy(10,7);
		writeln('||========================================================||');
		Gotoxy(10,8);
		writeln('||-------------------- MENU PRINCIPAL --------------------||');
		Gotoxy(10,9);
		writeln('||========================================================||');
		Gotoxy(10,10);
		writeln('|| 1. Comprar Boletos                                     ||');
		Gotoxy(10,11);
		writeln('|| 2. Ver Sistema                                         ||');
		Gotoxy(10,12);
		writeln('|| 3. Salir                                               ||');
		Gotoxy(10,13);
		writeln('||--------------------------------------------------------||');
		Gotoxy(10,14);
		write('|| Indique su opcion y presione enter: ');
		readln(op);
		delay (1000);
		
		if op = 1 then
			begin	
				repeat
					clrscr;
					textcolor(white);
					textcolor(yellow);
					writeln('||==================================================================||');
					writeln('|| EL TELEFERICO DE MERIDA POSEE 5 ESTACIONES DIVIDIDAS EN 4 TRAMOS ||');
					writeln('||==================================================================||');
					writeln();
					
					textcolor(white);
					writeln();
					writeln('||------------------------------------------------------------------||');
					writeln('|| Seleccione la estacion de su preferencia                         ||');
					writeln('||------------------------------------------------------------------||');
					writeln('||                             ESTACIONES                           ||');
					writeln('||------------------------------------------------------------------||');
					writeln('|| 1. Barinitas                                                     ||');
					writeln('|| 2. La montana                                                    ||');
					writeln('|| 3. La Aguada                                                     ||');
					writeln('|| 4. Loma Redonda                                                  ||');
					writeln('|| 5. Pico Espejo                                                   ||');
					writeln('||------------------------------------------------------------------||');
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
								delay(2000);
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
					writeln('||------------------------------------------------------------------||');
					writeln('|| Los tramos disponibles por estacion son:                         ||');
					writeln('||------------------------------------------------------------------||');
					writeln('||                               TRAMOS                             ||');
					writeln('||------------------------------------------------------------------||');
					writeln('|| 1. Barinitas - La Montana                                        ||');
					writeln('|| 2. La montana - La Aguada                                        ||');
					writeln('|| 3. La Aguada - Loma Redonda                                      ||');
					writeln('|| 4. Loma Redonda - Pico Espejo                                    ||');
					writeln('||------------------------------------------------------------------||');
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
							writeln('||---------------------------------------------||');
							write('|| Ingrese el numero de su eleccion y presione ENTER: ');
							readln(tipoBoleto);
																	 
							case tipoBoleto of
								'1': begin
									writeln('||**************************************************||');
									writeln('||Usted selecciono la opcion 1. Boleto ida/vuelta.  ||');
									writeln('||**************************************************||');
									
									clrscr;
									writeln(' ');
									writeln('||--------------------------------------------------------------||');
									writeln('||         Viaja con personas de tercera edad o Ninos?          ||');
									writeln('||--------------------------------------------------------------||');
									writeln('|| 1. Si                                                        ||');
									writeln('|| 2. No                                                        ||');
									writeln('||--------------------------------------------------------------||');
									write('|| Indique su respuesta y presione ENTER: ');
									readln(resp);
									
									if (resp = 1) then
										begin
											while (resp = 1) do
												begin
													writeln('  ');
													writeln('||--------------------------------------------------------------||');
													write('|| Ingrese la edad del nino/a y/o adulto mayor: ');
													readln(edad); 
									
													if (edad >= 3) and (edad <= 12) or (edad >= 65) then														
														begin								
															writeln('  ');
															writeln('||--------------------------------------------------------------||');
															writeln('|| Se le incrementara $12 del Boleto Especial a su cuenta total ||');
															writeln('||--------------------------------------------------------------||');
															delay(2000);
															
															//calculamos el costo total segun la cantidad de boletos y tipo de boletos
															precioBoletoIdaVuelta := boletoIdaVuelta;
															precioBoletoEspecial := boletoEspecial * 2; //SE MULTIPLICA POR 2 YA QUE SE DEBE COBRAR TANTO LA IDA COMO EL REGRESO
															montoTotalIdaVuelta := (precioBoletoIdaVuelta + precioBoletoEspecial) * cantBoletos;
															
															clrscr;
															writeln(' ');
															textcolor(lightgreen);
															writeln('||*********************************************************||');
															writeln('||                      DATOS DE SU COMPRA                 ||');
															writeln('||*********************************************************||');
															writeln('||  Nombre: ', (nombre));
															writeln('||  Apellido: ', (apellido));
															writeln('||  Cedula: ', (cedula));
															writeln('||  Boletos comprados: ', cantBoletos);
															writeln('||=========================================================||');
															writeln('|| Cuenta total->  $', montoTotalIdaVuelta:5:2);
															writeln('||*********************************************************||');
															delay(3500);
															
															resp := 0;
														end
														else 
															if (edad > 12) then 
																begin
																	writeln('||-----------------------------------------------------------||');
																	writeln('|| Los ninos/as mayores de 12 anos cancelan el precio Normal ||');
																	writeln('||-----------------------------------------------------------||');
																	
																	precioBoletoIdaVuelta := boletoIdaVuelta;
																	montoTotalIdaVuelta := precioBoletoIdaVuelta * cantBoletos;
																	
																	clrscr;
																	writeln(' ');
																	textcolor(lightgreen);
																	writeln('||*********************************************************||');
																	writeln('||                      DATOS DE SU COMPRA                 ||');
																	writeln('||*********************************************************||');
																	writeln('||  Nombre: ', (nombre));
																	writeln('||  Apellido: ', (apellido));
																	writeln('||  Cedula: ', (cedula));
																	writeln('||  Boletos comprados: ', cantBoletos);
																	writeln('||=========================================================||');
																	writeln('|| Cuenta total->  $', montoTotalIdaVuelta:5:2);
																	writeln('||*********************************************************||');
																	delay(3500);
																	
																	resp := 0;
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
																		
																		precioBoletoIdaVuelta := boletoIdaVuelta;
																		montoTotalIdaVuelta := precioBoletoIdaVuelta;
																		
																		clrscr;
																		writeln(' ');
																		textcolor(lightgreen);
																		writeln('||*********************************************************||');
																		writeln('||                      DATOS DE SU COMPRA                 ||');
																		writeln('||*********************************************************||');
																		writeln('||  Nombre: ', (nombre));
																		writeln('||  Apellido: ', (apellido));
																		writeln('||  Cedula: ', (cedula));
																		writeln('||  Boletos comprados: ', cantBoletos);
																		writeln('||=========================================================||');
																		writeln('|| Cuenta total->  $', montoTotalIdaVuelta:5:2);
																		writeln('||*********************************************************||');
																		delay(3500);
																		
																		resp := 0;
																	end;
												end;
											break;
										end 
									else 
										if (resp = 2) then
											begin
												clrscr;
												writeln(' ');
											
												montoTotalIdaVuelta := boletoIdaVuelta * cantBoletos;
												
												textcolor(lightgreen);
												writeln('||*********************************************************||');
												writeln('||                      DATOS DE SU COMPRA                 ||');
												writeln('||*********************************************************||');
												writeln('||  Nombre: ', (nombre));
												writeln('||  Apellido: ', (apellido));
												writeln('||  Cedula: ', (cedula));
												writeln('||  Boletos comprados: ', cantBoletos);
												writeln('||=========================================================||');
												writeln('|| Cuenta total->  $', montoTotalIdaVuelta:5:2);
												writeln('||*********************************************************||');
												delay(3500);
											end;
								end; //fin opcion 1
								
								'2': begin
									writeln('||**************************************************||');
									writeln('||Usted selecciono la opcion 2. Boleto General.     ||');
									writeln('||**************************************************||');
									
									clrscr;
									writeln(' ');
									writeln('||--------------------------------------------------------------||');
									writeln('||         Viaja con personas de tercera edad o Ninos?          ||');
									writeln('||--------------------------------------------------------------||');
									writeln('|| 1. Si                                                        ||');
									writeln('|| 2. No                                                        ||');
									writeln('||--------------------------------------------------------------||');
									write('|| Indique su respuesta y presione ENTER: ');
									readln(resp);
									
									if (resp = 1) then
										begin
											while (resp = 1) do
												begin
													writeln('  ');
													writeln('||--------------------------------------------------------------||');
													write('|| Ingrese la edad del nino/a y/o adulto mayor: ');
													readln(edad); 
									
													if (edad >= 3) and (edad <= 12) or (edad >= 65) then
														begin
															writeln('  ');
															writeln('||--------------------------------------------------------------||');
															writeln('|| Se le incrementara $12 del Boleto Especial a su cuenta total ||');
															writeln('||--------------------------------------------------------------||');
															delay(2000);
															
															//calculamos el costo total segun la cantidad de boletos y tipo de boletos
															precioBoletoGeneral := boletoGeneral;
															precioBoletoEspecial := boletoEspecial; //EN ESTE CASO, COMO SOLO SE ESTA VENDIENDO EL BOLETO GENERAL, NO HACE FALTA MULTIPLICAR POR 2 
															montoTotalGeneral := (precioBoletoGeneral + precioBoletoEspecial) * cantBoletos;
															
															clrscr;
															writeln(' ');
															textcolor(lightgreen);
															writeln('||*********************************************************||');
															writeln('||                      DATOS DE SU COMPRA                 ||');
															writeln('||*********************************************************||');
															writeln('||  Nombre: ', (nombre));
															writeln('||  Apellido: ', (apellido));
															writeln('||  Cedula: ', (cedula));
															writeln('||  Boletos comprados: ', cantBoletos);
															writeln('||=========================================================||');
															writeln('|| Cuenta total->  $', montoTotalGeneral:5:2);
															writeln('||*********************************************************||');
															delay(3500);
															
															resp := 0; //Nos sirve para salir del while y volver al menu de inicio
														end
														else 
															if (edad > 12) then 
																begin
																	writeln('||-----------------------------------------------------------||');
																	writeln('|| Los ninos/as mayores de 12 anos cancelan el precio Normal ||');
																	writeln('||-----------------------------------------------------------||');
																	
																	precioBoletoGeneral := boletoGeneral;
																	montoTotalGeneral := precioBoletoGeneral * cantBoletos;
																	
																	clrscr;
																	writeln(' ');
																	textcolor(lightgreen);
																	writeln('||*********************************************************||');
																	writeln('||                      DATOS DE SU COMPRA                 ||');
																	writeln('||*********************************************************||');
																	writeln('||  Nombre: ', (nombre));
																	writeln('||  Apellido: ', (apellido));
																	writeln('||  Cedula: ', (cedula));
																	writeln('||  Boletos comprados: ', cantBoletos);
																	writeln('||=========================================================||');
																	writeln('|| Cuenta total->  $', montoTotalGeneral:5:2);
																	writeln('||*********************************************************||');
																	delay(3500);
																	
																	resp := 0;
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
																		
																		precioBoletoGeneral := boletoGeneral;
																		montoTotalGeneral := precioBoletoGeneral;
																		
																		clrscr;
																		writeln(' ');
																		textcolor(lightgreen);
																		writeln('||*********************************************************||');
																		writeln('||                      DATOS DE SU COMPRA                 ||');
																		writeln('||*********************************************************||');
																		writeln('||  Nombre: ', (nombre));
																		writeln('||  Apellido: ', (apellido));
																		writeln('||  Cedula: ', (cedula));
																		writeln('||  Boletos comprados: ', cantBoletos);
																		writeln('||=========================================================||');
																		writeln('|| Cuenta total->  $', montoTotalGeneral:5:2);
																		writeln('||*********************************************************||');
																		delay(3500);
																		
																		resp := 0;
																	end;
												end;
											break;
										end 
									else 
										if (resp = 2) then
											begin
												clrscr;
												writeln(' ');
												
												precioBoletoGeneral := boletoGeneral * cantBoletos;
												
												textcolor(lightgreen);
												writeln('||*********************************************************||');
												writeln('||                      DATOS DE SU COMPRA                 ||');
												writeln('||*********************************************************||');
												writeln('||  Nombre: ', (nombre));
												writeln('||  Apellido: ', (apellido));
												writeln('||  Cedula: ', (cedula));
												writeln('||  Boletos comprados: ', cantBoletos);
												writeln('||=========================================================||');
												writeln('|| Cuenta total->  $', precioBoletoGeneral:5:2);
												writeln('||*********************************************************||');
												delay(3500);
											end;
								end; //fin opcion 2
							end; //fin del case
							
						until (tipoBoleto = '1') or (tipoBoleto = '2');
					end	
					else if (cantBoletos > 60) then
						begin
							writeln(' ');
							writeln('||--------------------------------------------------------------------------||');
							writeln('|| Excede el limite de la capacidad maxima de pasajeros, intente nuevamente ||');
							writeln('||--------------------------------------------------------------------------||');
							delay (2000);
							
							clrscr();
						end;
				end
		else 
			if op = 2 then
			
				asientosD := asientosD - cantBoletos;
				boletosGenerales := cantBoletos;
				boletosIdaVuelta := cantBoletos;
				BoletosV := boletosGenerales + boletosIdaVuelta;
				totalBoletosCancelados := boletosC;
				totalBoletosGenerales := boletosGenerales * 20;
				totalBoletosIdaVuelta := boletosIdaVuelta * 40;
				montoTotal := totalBoletosGenerales + totalBoletosIdaVuelta;
				
				ventaBoletosGenerales := boletosGenerales + totalBoletosGenerales;
				ventaBoletosIdaVuelta := boletosIdaVuelta + totalBoletosIdaVuelta;
				totalidadVentas := totalidadVentas + BoletosV;
				
				begin
					clrscr;
					writeln('||=========================================================||');
					writeln('||              SISTEMA DE CONTROL DE BOLETOS              ||');
					writeln('||=========================================================||');
					writeln('|| Total de Boletos vendidos: ', totalidadVentas, '        ||');
					writeln('|| Boletos Generales vendidos: ', totalBoletosGenerales, ' ||');
					writeln('|| Boletos Ida/Vuelta vendidos: ', totalBoletosGenerales, '||');
					writeln('|| Boletos disponibles: ', asientosD, '                    ||');
					writeln('||=========================================================||');
					writeln(' ');
					writeln(' ');
					
					writeln('||=========================================================||');
					writeln('||                    REPORTE DE VENTAS                    ||');
					writeln('||=========================================================||');
					writeln('|| Ventas realizadas del día: ', montoTotal, '             ||');
					writeln('|| Ventas boletos Generales: ', ventaBoletosGenerales, '   ||');
					writeln('|| Ventas boletos Ida/Vuelta: ', ventaBoletosIdaVuelta, '  ||');
					writeln('|| Total ventas: ', totalidadVentas, '                     ||');
					writeln('||=========================================================||');
				end;
	until op = 3
end.

{Elaborado por:
* Paola Márquez. C.I: 27.125.784
* Enderson Velasquez. C.I: 30.141.384}

