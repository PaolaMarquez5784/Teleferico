Program TelefericoMerida;
uses crt;
var
	BoletosV, BoletosC, cantMax, asientosD,edadAdultos, edadNinos, cedula, cantBoletos, op: integer;
	estaciones, tramos: string;
	nombre, apellido, estacion, tramo, tipoBoleto: string;
	montoTotal, precioBoletos: real;
begin
	repeat
		writeln('**********************************************');
		writeln('BIENVENIDO AL SISTEMA DEL TELEFERCIO DE MÉRIDA');
		writeln('**********************************************');
		writeln(' ');
		writeln('---------- MENU PRINCIPAL ----------');
		writeln('1. Comprar Boletos');
		writeln('2. Ver Sistema');
		writeln('3. Salir');
		writeln('------------------------------------');
		readln(op);
		
		case op of
		clrscr;
			'1': begin
				writeln('Para continuar con su transaccion, ingrese los siguientes datos: ');
				write('Nombre: ');
				readln(nombre);
				
				write('Apellido: ');
				readln(apellido);
			
				write('Numero de Cedula: ');
				readln(cedula);
				
				write('Cuantos boletos desea comprar?: ');
				readln(cantBoletos);
				
				clrscr;
				writeln('Niombre: ', nombre);
				writeln('Apellido: ', apellido);
				writeln('Numero de cedula: ', cedula);
				
				repeat
					writeln('Indique la estacion de su preferencia');
					writeln('1. Barinitas');
					writeln('2. La montaña');
					writeln('3. La Aguada');
					writeln('4. Loma Redonda');
					writeln('5. Pico Espejo');
					write('Estacion: ');
					readln(estaciones);
					
				until (estaciones = '1') or (estaciones = '2') or (estaciones = '3') or (estaciones = '4') or (estaciones = '5');
    				case estacion of
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
	  			end;
			end;
			

		
	until op=3;
		
		writeln('GRACIAS POR SU VISITA, VUELVA PRONTO!');
end.
