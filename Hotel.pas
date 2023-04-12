{Programa para hacer reservaciones en un hotel
* Realizado por:
* Luis Narvaez;
* Pedro Capote;
* Miguel Millan}



program Reservacion;
uses crt;
var

FicheroC1:text;
FFC:text;
FicheroC2:text;
FFC2:text;
FicheroC3:text;
FFC3:text;
FicheroC4:text;
FFC4:text;

Men1,Men2,C,U,F,F2,F3,F4,Reser:integer;{Variables utilizadas como interruptores para permitir el inicio o fin de varios procesos y menus}

Opcion,User,R,O,H,RE:string;{Variables utilizadas para activar condiciones}

client : record{Conjunto de datos del primer cliente}
nombre,cedula,usuario,edad,Habitacion,Res,email,tlf,cn,ce,cci : string;
compa,Dias,Pagar:integer;
end;

Fam : array [1..4] of record {Conjunto de datos para los familiares del primer cliente}
nombre,edad,menor,ci:string;
G:Integer;
end;

client2 : record {Datos del segundo cliente}
nombre,cedula,usuario,edad,Habitacion,Res,email,tlf,cn,ce,cci: string;
Compa,Dias,Pagar:integer;
end;

Fam2 : array [1..4] of record{Datos de los acompañantes del segundo cliente}
nombre,edad,menor,ci:string;
G:Integer;
end;

client3 : record {Datos del tercer cliente}
nombre,cedula,usuario,edad,Habitacion,Res,email,tlf,cn,ce,cci: string;
Compa,Dias,Pagar:integer;
end;

Fam3 : array [1..4] of record{Datos de los acompañantes del tercer cliente}
nombre,edad,menor,ci:string;
G:Integer;
end;

client4 : record {Datos del cuarto cliente}
nombre,cedula,usuario,edad,Habitacion,Res,email,tlf,cn,ce,cci: string;
Compa,Dias,Pagar:integer;
end;

Fam4 : array [1..4] of record {Datos de los familiares del cuarto cliente}
nombre,edad,menor,ci:string;
G:Integer;
end;

procedure Sen;{procedure para la Habitacion tipo "Sencilla(Todos los procedures de habitaciones son similares
todos muestran la infomacion de la habitacion y lo que incluye, despues d mostrar la informacion preguntara si deseas
* esa habitacion con un s o n en caso de no querer esa habitacion se regresara al menu donde se muestran las 4 habitaciones
* si desea esa habitacion se le preguntara la cantidad de dias que desea quedarse, al terminar de ingresar la cantidad
* se mostrara el precio que debera pagar y se regresara al primer menu donde aparecera una nueva opcion)"}
begin
			clrscr;
			writeln(' -------------------------------');
			writeln('|    Sencilla 60 $ por noche    |');
			writeln(' -------------------------------');
			writeln('|         Descripcion           |');
			writeln(' -------------------------------');
			writeln(' Amplia y confortable habitación decorada con un estilo vanguardista, cama ');
			writeln(' Lidotel Royal King con sabanas de algodon egipcio, soporte para iPod con  ');
			writeln(' reloj despertador, TV 32 HD Plasma con cable, bano con ducha, cafetera ');
			writeln(' electrica, nevera ejecutiva, caja electronica de seguridad y  ');
			writeln(' secador de cabello. ');readln;
			writeln(' -------------------------------');
			writeln('|           Incluye             |');
			writeln(' -------------------------------');
			writeln('Desayuno Buffet en Restaurant Le Nouveau, acceso inalámbrico a Internet (WIFI)');
			writeln('acceso a las instalaciones del Business Center, uso de nuestra exclusiva piscina');
			writeln('acceso a nuestro moderno gimnasio y Kit de vanidades. Ninos de 0 a 2 anos sin recargos.');
			writeln('');
			writeln('Desea reservar esta habitacion? s/n');readln(H);
			if H = ('s') then
			begin
			
			if User = ('1') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client.Dias);
			if client.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client.Dias :=(0);
			readln(client.Dias);
			until client.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',60*client.Dias,' $');
			client.Pagar:= (60*client.Dias);
			client.habitacion := ('Sencilla');
								               
								writeLn( FicheroC1, 'Usuario: ',client.usuario );      
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Nombre y Apellido: ',client.nombre);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Edad: ',client.edad);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' C.I: ',client.cedula);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Correo: ',client.email);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Telefono: ',client.tlf);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Tipo de Reservacion: ',client.Res);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Habitacion: ',client.habitacion);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Dias de Hospedaje: ',client.Dias);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Total a pagar: ',client.Pagar,'$');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								              
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('2') then
			begin
			client2.habitacion := O;
			
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client2.Dias);
			if client2.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client2.Dias :=(0);
			readln(client2.Dias);
			until client2.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',60*client2.Dias,' $');
			client2.Pagar:= (60*client2.Dias);
			client2.habitacion := ('Sencilla');
			
								writeLn( FicheroC2, 'Usuario: ',client2.usuario );      
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Nombre y Apellido: ',client2.nombre);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Edad: ',client2.edad);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' C.I: ',client2.cedula);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Correo: ',client2.email);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Telefono: ',client2.tlf);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Tipo de Reservacion: ',client2.Res);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Habitacion: ',client2.habitacion);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Dias de Hospedaje: ',client2.Dias);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Total a pagar: ',client2.Pagar,'$');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
								   
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('3') then
			begin
			client3.habitacion := O;
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client3.Dias);
			if client3.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client3.Dias :=(0);
			readln(client3.Dias);
			until client3.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',60*client3.Dias,' $');
			client3.Pagar:= (60*client3.Dias);
			client3.habitacion := ('Sencilla');
			              
								writeLn( FicheroC3, 'Usuario: ',client3.Usuario );      
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Nombre y Apellido: ',client3.nombre);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Edad: ',client3.edad);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' C.I: ',client3.cedula);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Correo: ',client3.email);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Telefono: ',client3.tlf);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Tipo de Reservacion: ',client3.Res);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Habitacion: ',client3.habitacion);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Dias de Hospedaje: ',client3.Dias);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Total a pagar: ',client3.Pagar,'$');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
								 
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('4') then
			begin
			client4.habitacion := O;
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client4.Dias);
			if client4.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client4.Dias :=(0);
			readln(client4.Dias);
			until client4.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',60*client4.Dias,' $');
			client4.Pagar:= (60*client4.Dias);
			client4.habitacion := ('Sencilla');
			
								writeLn( FicheroC4, 'Usuario: ',client4.Usuario );      
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Nombre y Apellido: ',client4.nombre);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Edad: ',client4.edad);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' C.I: ',client4.cedula);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Correo: ',client4.email);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Telefono: ',client4.tlf);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Tipo de Reservacion: ',client4.Res);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Habitacion: ',client4.habitacion);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Dias de Hospedaje: ',client4.Dias);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Total a pagar: ',client4.Pagar,'$');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
								 
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			end
			end;


procedure doble;{procedure para la Habitacion tipo "Doble"}
begin
clrscr;
			writeln(' -------------------------------');
			writeln('|     Doble 120 $ por noche     |');
			writeln(' -------------------------------');
			writeln('|         Descripcion           |');
			writeln(' -------------------------------');
			writeln(' Amplia y confortable habitación decorada con un estilo vanguardista, Dos Camas Lidotel ');
			writeln(' Full con sabanas de algodón egipcio, soporte para iPod con reloj despertador, ');
			writeln(' TV 32 HD Plasma con cable, bano con ducha, cafetera electrica, nevera ejecutiva, ');
			writeln(' caja electronica de seguridad secador de cabello  ');readln;
			writeln(' -------------------------------');
			writeln('|           Incluye             |');
			writeln(' -------------------------------');
			writeln('Desayuno Buffet en Restaurant Le Nouveau, acceso inalámbrico a Internet (WIFI)');
			writeln('acceso a las instalaciones del Business Center, uso de nuestra exclusiva piscina');
			writeln('acceso a nuestro moderno gimnasio y Kit de vanidades. Ninos de 0 a 2 anos sin recargos.');
			writeln('');
			writeln('Desea reservar esta habitacion? s/n');readln(H);
			if H = ('s') then
			begin
			
			if User = ('1') then
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client.Dias);
			if client.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client.Dias :=(0);
			readln(client.Dias);
			until client.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',120*client.Dias,' $');
			client.Pagar:= (120*client.Dias);
			client.habitacion := ('Doble');
			writeLn( FicheroC1, 'Usuario: ',client.usuario );      
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Nombre y Apellido: ',client.nombre);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Edad: ',client.edad);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' C.I: ',client.cedula);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Correo: ',client.email);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Telefono: ',client.tlf);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Tipo de Reservacion: ',client.Res);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Habitacion: ',client.habitacion);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Dias de Hospedaje: ',client.Dias);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Total a pagar: ',client.Pagar,'$');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								  
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('2') then
			begin
			
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client2.Dias);
			if client2.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client2.Dias :=(0);
			readln(client2.Dias);
			until client2.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',120*client2.Dias,' $');
			client2.Pagar:= (120*client2.Dias);
			client2.habitacion := ('Doble');
			writeLn( FicheroC2, 'Usuario: ',client2.usuario );      
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Nombre y Apellido: ',client2.nombre);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Edad: ',client2.edad);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' C.I: ',client2.cedula);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Correo: ',client2.email);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Telefono: ',client2.tlf);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Tipo de Reservacion: ',client2.Res);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Habitacion: ',client2.habitacion);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Dias de Hospedaje: ',client2.Dias);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Total a pagar: ',client2.Pagar,'$');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('3') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client3.Dias);
			if client3.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client3.Dias :=(0);
			readln(client3.Dias);
			until client3.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',120*client3.Dias,' $');
			client3.Pagar:= (120*client3.Dias);
			client3.habitacion := ('Doble');
			writeLn( FicheroC3, 'Usuario: ',client3.Usuario );      
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Nombre y Apellido: ',client3.nombre);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Edad: ',client3.edad);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' C.I: ',client3.cedula);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Correo: ',client3.email);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Telefono: ',client3.tlf);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Tipo de Reservacion: ',client3.Res);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Habitacion: ',client3.habitacion);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Dias de Hospedaje: ',client3.Dias);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Total a pagar: ',client3.Pagar,'$');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('4') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client4.Dias);
			if client4.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client4.Dias :=(0);
			readln(client4.Dias);
			until client4.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',120*client4.Dias,' $');
			client4.Pagar:= (120*client4.Dias);
			client4.habitacion := ('Doble');
			writeLn( FicheroC4, 'Usuario: ',client4.Usuario );      
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Nombre y Apellido: ',client4.nombre);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Edad: ',client4.edad);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' C.I: ',client4.cedula);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Correo: ',client4.email);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Telefono: ',client4.tlf);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Tipo de Reservacion: ',client4.Res);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Habitacion: ',client4.habitacion);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Dias de Hospedaje: ',client4.Dias);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Total a pagar: ',client4.Pagar,'$');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			end;


procedure Family;{procedure para la Habitacion tipo "Family"}
begin
clrscr;
			writeln(' -------------------------------');
			writeln('|   Familiar 200 $ por noche    |');
			writeln(' -------------------------------');
			writeln('|         Descripcion           |');
			writeln(' -------------------------------');
			writeln(' Calida y confortable habitación decorada con un estilo vanguardista, 100% libre de humo,  ');
			writeln(' cama Lidotel Royal King, con reloj despertador, TV 32” HD Plasma con cable, bano con , ');
			writeln(' ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador de  ');
			writeln(' cabello, armario adicional amplio, una habitación separada con 2 camas full, baño con');
			writeln('ducha');readln;
			writeln(' -------------------------------');
			writeln('|           Incluye             |');
			writeln(' -------------------------------');
			writeln('Desayuno Buffet en Restaurant Le Nouveau, acceso inalámbrico a Internet (WIFI)');
			writeln('Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y');
			writeln('toldos en la playa, kit de vanidades y niños de 0 a 2 años sin recargos.');
			writeln('');
			writeln('Desea reservar esta habitacion? s/n');readln(H);
			if H = ('s') then
			begin
			
			if User = ('1') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client.Dias);
			if client.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client.Dias :=(0);
			readln(client.Dias);
			until client.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',200*client.Dias,' $');
			client.Pagar:= (200*client.Dias);
			client.habitacion := ('Family Room');
			writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Nombre y Apellido: ',client.nombre);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Edad: ',client.edad);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' C.I: ',client.cedula);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Correo: ',client.email);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Telefono: ',client.tlf);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Tipo de Reservacion: ',client.Res);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Habitacion: ',client.habitacion);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Dias de Hospedaje: ',client.Dias);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Total a pagar: ',client.Pagar,'$');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('2') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client2.Dias);
			if client2.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client2.Dias :=(0);
			readln(client2.Dias);
			until client2.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',200*client2.Dias,' $');
			client2.Pagar:= (200*client2.Dias);
			client2.habitacion := ('Family Room');
			writeLn( FicheroC2, 'Usuario: ',client2.usuario );      
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Nombre y Apellido: ',client2.nombre);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Edad: ',client2.edad);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' C.I: ',client2.cedula);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Correo: ',client2.email);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Telefono: ',client2.tlf);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Tipo de Reservacion: ',client2.Res);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Habitacion: ',client2.habitacion);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Dias de Hospedaje: ',client2.Dias);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Total a pagar: ',client2.Pagar,'$');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('3') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');readln(client3.Dias);
			readln(client3.Dias);
			if client3.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client3.Dias :=(0);
			readln(client3.Dias);
			until client3.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',200*client3.Dias,' $');
			client3.Pagar:= (200*client3.Dias);
			client3.habitacion := ('Family Room');
			writeLn( FicheroC3, 'Usuario: ',client3.Usuario );      
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Nombre y Apellido: ',client3.nombre);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Edad: ',client3.edad);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' C.I: ',client3.cedula);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Correo: ',client3.email);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Telefono: ',client3.tlf);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Tipo de Reservacion: ',client3.Res);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Habitacion: ',client3.habitacion);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Dias de Hospedaje: ',client3.Dias);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Total a pagar: ',client3.Pagar,'$');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('4') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client4.Dias);
			if client4.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client4.Dias :=(0);
			readln(client4.Dias);
			until client4.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',200*client4.Dias,' $');
			client4.Pagar:= (200*client4.Dias);
			client4.habitacion := ('Family Room');
			writeLn( FicheroC4, 'Usuario: ',client4.Usuario );      
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Nombre y Apellido: ',client4.nombre);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Edad: ',client4.edad);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' C.I: ',client4.cedula);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Correo: ',client4.email);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Telefono: ',client4.tlf);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Tipo de Reservacion: ',client4.Res);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Habitacion: ',client4.habitacion);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Dias de Hospedaje: ',client4.Dias);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Total a pagar: ',client4.Pagar,'$');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			end
end;

procedure Suite;{procedure para la Habitacion tipo "Suite"}
begin
clrscr;
			writeln(' -------------------------------');
			writeln('|     Suite 300 $ por noche     |');
			writeln(' -------------------------------');
			writeln('|         Descripcion           |');
			writeln(' -------------------------------');
			writeln(' Calida y confortable habitación decorada con un estilo vanguardista, 100% libre de humo, ');
			writeln(' Cama Lidotel Royal King, con reloj despertador, TV 32” HD Plasma con cable, 2 baños ');
			writeln(' con ducha, cafetera electrica, nevera ejecutiva, caja electronica de seguridad y secador ');
			writeln(' de cabello, armario adicional amplio y area separada con 2 sofa-cama individuales');readln;
			writeln(' -------------------------------');
			writeln('|           Incluye             |');
			writeln(' -------------------------------');
			writeln('Desayuno Buffet en Restaurant Le Nouveau, acceso inalámbrico a Internet (WIFI)');
			writeln('Business Center, uso de nuestra exclusiva piscina, acceso a nuestro gimnasio, sillas y');
			writeln('toldos en la playa, kit de vanidades y niños de 0 a 2 años sin recargos.');
			writeln('');
			writeln('Desea reservar esta habitacion? s/n');readln(H);
			if H = ('s') then
			begin
			
			if User = ('1') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client.Dias);
			if client.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client.Dias :=(0);
			readln(client.Dias);
			until client.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',300*client.Dias,' $');
			client.Pagar:= (300*client.Dias);
			client.habitacion := ('Suite');
			writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Nombre y Apellido: ',client.nombre);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Edad: ',client.edad);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' C.I: ',client.cedula);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Correo: ',client.email);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Telefono: ',client.tlf);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Tipo de Reservacion: ',client.Res);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Habitacion: ',client.habitacion);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Dias de Hospedaje: ',client.Dias);
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' Total a pagar: ',client.Pagar,'$');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
								writeln(FicheroC1,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('2') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client2.Dias);
			if client2.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client2.Dias :=(0);
			readln(client2.Dias);
			until client2.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',300*client2.Dias,' $');
			client2.Pagar:= (300*client2.Dias);
			client2.habitacion := ('Suite');
			writeLn( FicheroC2, 'Usuario: ',client2.usuario );      
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Nombre y Apellido: ',client2.nombre);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Edad: ',client2.edad);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' C.I: ',client2.cedula);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Correo: ',client2.email);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Telefono: ',client2.tlf);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Tipo de Reservacion: ',client2.Res);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Habitacion: ',client2.habitacion);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Dias de Hospedaje: ',client2.Dias);
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' Total a pagar: ',client2.Pagar,'$');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
								writeln(FicheroC2,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('3') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client3.Dias);
			if client3.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client3.Dias :=(0);
			readln(client3.Dias);
			until client3.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',300*client3.Dias,' $');
			client3.Pagar:= (300*client3.Dias);
			client3.habitacion := ('Suite');
			writeLn( FicheroC3, 'Usuario: ',client3.Usuario );      
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Nombre y Apellido: ',client3.nombre);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Edad: ',client3.edad);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' C.I: ',client3.cedula);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Correo: ',client3.email);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Telefono: ',client3.tlf);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Tipo de Reservacion: ',client3.Res);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Habitacion: ',client3.habitacion);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Dias de Hospedaje: ',client3.Dias);
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' Total a pagar: ',client3.Pagar,'$');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
								writeln(FicheroC3,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			else if User = ('4') then
			begin
			begin
			writeln('Por cuantos dias se quedara?');
			readln(client4.Dias);
			if client4.Dias <= 0 then
			repeat 
			writeln ('Introduzca el numero de dias que desea quedarse');client4.Dias :=(0);
			readln(client4.Dias);
			until client4.Dias > 0;
			textcolor(lightgreen);writeln('Reservacion exitosa!');textcolor(white);
			writeln('Debera pagar en total: ',300*client4.Dias,' $');
			client4.Pagar:= (300*client4.Dias);
			client4.habitacion := ('Suite');
			writeLn( FicheroC4, 'Usuario: ',client4.Usuario );      
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Nombre y Apellido: ',client4.nombre);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Edad: ',client4.edad);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' C.I: ',client4.cedula);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Correo: ',client4.email);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Telefono: ',client4.tlf);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Tipo de Reservacion: ',client4.Res);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Habitacion: ',client4.habitacion);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Dias de Hospedaje: ',client4.Dias);
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' Total a pagar: ',client4.Pagar,'$');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
								writeln(FicheroC4,' -----------------------------');
			Reser :=(Reser+1);
			Men2:=2;readln;
			end
			end
			end
end;

procedure Individual;{procedure para el tipó de reservacion "Individual"}
begin
repeat
Men2:=0;clrscr;	

			writeln(' ----------------------------');
			writeln('|   Seleccione una opcion    |');
			writeln(' ---------------------------');
			writeln('|    1. Sencilla 60 $        |');
			writeln(' ----------------------------');
			writeln('|    2. Suite 300 $          |');
			writeln(' ----------------------------');
			readln(O);
			
			if O = ('1') then Sen
			else if O = ('2') then Suite
			
			
			
until Men2 = 2;			
end;

procedure Compania;{procedure para el tipó de reservacion "Compañia"}
begin
			clrscr;
			if User = ('1') then
			begin
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(client.cn);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client.ce);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client.cci);
			writeln('  -----------------------------------');
			             
			writeln(FFC,' -----------------------------');
			writeln(FFC,'|          Acompanante        |');
			writeln(FFC,' -----------------------------');
			writeln(FFC,'  Acompana a : ',client.usuario);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Nombre y Apellido: ',client.cn);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Edad: ',client.ce);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| C.I: ',client.cci);
			writeln(FFC,' ------------------------------');
			writeln(FFC,' ------------------------------');
			writeln(FFC,' ------------------------------');
			                
			end
			else if User = ('2') then
			begin
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(client2.cn);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client2.ce);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client2.cci);
			writeln('  -----------------------------------');
			            
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'|          Acompanante        |');
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'  Acompana a : ',client2.usuario);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Nombre y Apellido: ',client2.cn);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Edad: ',client2.ce);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| C.I: ',client2.cci);
			writeln(FFC2,' ------------------------------');
			writeln(FFC2,' ------------------------------');
			writeln(FFC2,' ------------------------------');
			
			end
			else if User = ('3') then
			begin
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(client3.cn);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client3.ce);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client3.cci);
			writeln('  -----------------------------------');
			             
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'|          Acompanante        |');
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'  Acompana a : ',client3.usuario);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Nombre y Apellido: ',client3.cn);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Edad: ',client3.ce);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| C.I: ',client3.cci);
			writeln(FFC3,' ------------------------------');
			writeln(FFC3,' ------------------------------');
			writeln(FFC3,' ------------------------------');
			
			end
			else if User = ('4') then
			begin
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(client4.cn);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client4.ce);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(client4.cci);
			writeln('  -----------------------------------');
			             
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'|          Acompanante        |');
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'  Acompana a : ',client4.usuario);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Nombre y Apellido: ',client4.cn);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Edad: ',client4.ce);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| C.I: ',client4.cci);
			writeln(FFC4,' ------------------------------');
			writeln(FFC4,' ------------------------------');
			writeln(FFC4,' ------------------------------');
			
			end;
			repeat
			Men2:=0;
			writeln(' ---------------------------');
			writeln('|   Seleccione una opcion    |');
			writeln(' ---------------------------');
			writeln('|      1. Doble 120 $        |');
			writeln(' ----------------------------');
			writeln('|      2. Suite-300 $        |');
			writeln(' ----------------------------');
			readln(O);
			if O = ('1') then doble
			else if O = ('2') then Suite
			
			
until Men2 = 2;	
end;


procedure AnadirF;{Procedure donde se ingresan los datos de los acompañantes del cliente al tener una reservacion grupal/familiar
para el cliente 1}
begin
clrscr;
			writeln('Cuantas personas van con usted? maximo 4 personas');
			readln(F);
			while (F <> 1) and (F <> 2) and (F <> 3) AND (F <> 4) DO
			begin
			writeln('El numero maximo de acompañantes es 4');
			writeln('Ingrese el numero de acompañantes');
			readln(F);
			end;
			
			if User = ('1') then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam[1].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[1].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[1].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[1].ci);
			writeln('  -----------------------------------');
			              
			writeln(FFC,' -----------------------------');
			writeln(FFC,'|            Grupo            |');
			writeln(FFC,' -----------------------------');
			writeln(FFC,'  Acompana a : ',client.usuario);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Nombre y Apellido: ',Fam[1].nombre);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Edad: ',Fam[1].edad);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| C.I: ',Fam[1].ci);
			writeln(FFC,' ------------------------------');
			
			if F > 1 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam[2].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[2].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[2].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[2].ci);
			writeln('  -----------------------------------');
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Nombre y Apellido: ',Fam[2].nombre);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Edad: ',Fam[2].edad);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| C.I: ',Fam[2].ci);
			writeln(FFC,' ------------------------------');
			end;
			if F > 2 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam[3].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[3].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[3].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[3].ci);
			writeln('  -----------------------------------');
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Nombre y Apellido: ',Fam[3].nombre);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Edad: ',Fam[3].edad);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| C.I: ',Fam[3].ci);
			writeln(FFC,' ------------------------------');
			
			end;
			if F > 3 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam[4].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[4].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[4].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[4].ci);
			writeln('  -----------------------------------');
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Nombre y Apellido: ',Fam[4].nombre);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| Edad: ',Fam[4].edad);
			writeln(FFC,' -----------------------------');
			writeln(FFC,'| C.I: ',Fam[4].ci);
			writeln(FFC,' ------------------------------');
			end
			
			
			end;
			end;
			
procedure AnadirF2;{Procedure donde se ingresan los datos de los acompañantes del cliente al tener una reservacion grupal/familiar
para el cliente2}
begin
writeln('Cuantas personas van con usted? maximo 4 personas');
			readln(F2);
			while (F2 <> 1) and (F2 <> 2) and (F2 <> 3) AND (F2 <> 4) DO
			begin
			writeln('El numero maximo de acompañantes es 4');
			writeln('Ingrese el numero de acompañantes');
			readln(F2);
			end;
clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam2[1].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[1].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[1].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[1].ci);
			writeln('  -----------------------------------');
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Nombre y Apellido: ',Fam2[1].nombre);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Edad: ',Fam2[1].edad);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| C.I: ',Fam2[1].ci);
			writeln(FFC2,' ------------------------------');
			if F2 > 1 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam2[2].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[2].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[2].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[2].ci);
			writeln('  -----------------------------------');
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Nombre y Apellido: ',Fam2[2].nombre);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Edad: ',Fam2[2].edad);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| C.I: ',Fam2[2].ci);
			writeln(FFC2,' ------------------------------');
			end;
			if F2 > 2 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam2[3].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam[3].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[3].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[3].ci);
			writeln('  -----------------------------------');
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Nombre y Apellido: ',Fam2[3].nombre);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Edad: ',Fam2[3].edad);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| C.I: ',Fam2[3].ci);
			writeln(FFC2,' ------------------------------');
			
			end;
			if F2 > 3 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam2[4].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[4].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[4].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam2[4].ci);
			writeln('  -----------------------------------');
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Nombre y Apellido: ',Fam2[4].nombre);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| Edad: ',Fam2[4].edad);
			writeln(FFC2,' -----------------------------');
			writeln(FFC2,'| C.I: ',Fam2[4].ci);
			writeln(FFC2,' ------------------------------');			
end;
end;

Procedure AnadirF3;{Procedure donde se ingresan los datos de los acompañantes del cliente al tener una reservacion grupal/familiar
para el cliente3}
begin
			writeln('Cuantas personas van con usted? maximo 4 personas');
			readln(F3);
			while (F3 <> 1) and (F3 <> 2) and (F3 <> 3) AND (F3 <> 4) DO
			begin
			writeln('El numero maximo de acompañantes es 4');
			writeln('Ingrese el numero de acompañantes');
			readln(F3);
			end;
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam3[1].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[1].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[1].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[1].ci);
			writeln('  -----------------------------------');
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Nombre y Apellido: ',Fam3[1].nombre);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Edad: ',Fam3[1].edad);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| C.I: ',Fam3[1].ci);
			writeln(FFC3,' ------------------------------');
			if F3 > 1 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam3[2].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[2].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[2].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[2].ci);
			writeln('  -----------------------------------');
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Nombre y Apellido: ',Fam3[2].nombre);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Edad: ',Fam3[2].edad);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| C.I: ',Fam3[2].ci);
			writeln(FFC3,' ------------------------------');
			end;
			if F3 > 2 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam3[3].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[3].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[3].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[3].ci);
			writeln('  -----------------------------------');
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Nombre y Apellido: ',Fam3[3].nombre);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Edad: ',Fam3[3].edad);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| C.I: ',Fam3[3].ci);
			writeln(FFC3,' ------------------------------');
			
			end;
			if F3 > 3 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam3[4].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[4].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[4].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam3[4].ci);
			writeln('  -----------------------------------');
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Nombre y Apellido: ',Fam3[4].nombre);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| Edad: ',Fam3[4].edad);
			writeln(FFC3,' -----------------------------');
			writeln(FFC3,'| C.I: ',Fam3[4].ci);
			writeln(FFC3,' ------------------------------');
			end
			end;
end;

procedure AnadirF4;{Procedure donde se ingresan los datos de los acompañantes del cliente al tener una reservacion grupal/familiar
para el cliente4}

begin
writeln('Cuantas personas van con usted? maximo 4 personas');
			readln(F4);
			while (F4 <> 1) and (F4 <> 2) and (F4 <> 3) AND (F4 <> 4) DO
			begin
			writeln('El numero maximo de acompañantes es 4');
			writeln('Ingrese el numero de acompañantes');
			readln(F4);
			end;
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam4[1].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[1].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[1].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[1].ci);
			writeln('  -----------------------------------');
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Nombre y Apellido: ',Fam4[1].nombre);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Edad: ',Fam4[1].edad);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| C.I: ',Fam4[1].ci);
			writeln(FFC4,' ------------------------------');
			if F4 > 1 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam4[2].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[2].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[2].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[2].ci);
			writeln('  -----------------------------------');
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Nombre y Apellido: ',Fam4[2].nombre);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Edad: ',Fam4[2].edad);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| C.I: ',Fam4[2].ci);
			writeln(FFC4,' ------------------------------');
			end;
			if F4 > 2 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam4[3].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[3].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[3].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[3].ci);
			writeln('  -----------------------------------');
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Nombre y Apellido: ',Fam4[3].nombre);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Edad: ',Fam4[3].edad);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| C.I: ',Fam4[3].ci);
			writeln(FFC4,' ------------------------------');
			
			end;
			if F4 > 3 then
			begin
			clrscr;
			writeln('  -----------------------------------------------');
			writeln('| Ingrese el nombre y apellido de su acompanante |');
			writeln('  -----------------------------------------------');
			writeln(' ');readln(Fam4[4].nombre);
			writeln('  -----------------------------------');
			writeln('| Ingrese la edad de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[4].edad);
			writeln('  -----------------------------------');
			writeln('| Su acompanante es un nino? s/n |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[4].menor);
			writeln('  -----------------------------------');
			writeln('| Ingrese la C.I de su acompanante  |');
			writeln('  -----------------------------------');
			writeln(' ');readln(Fam4[4].ci);
			writeln('  -----------------------------------');
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Nombre y Apellido: ',Fam4[4].nombre);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| Edad: ',Fam4[4].edad);
			writeln(FFC4,' -----------------------------');
			writeln(FFC4,'| C.I: ',Fam4[4].ci);
			writeln(FFC4,' ------------------------------');
			end;
			end;
end;
			
procedure Grupo;{procedure para el tipó de reservacion "Grupo/Familia"}
begin
			if User=('1') then
			AnadirF
			else if User=('2') then
			AnadirF2
			else if User=('3') then
			AnadirF3
			else if User=('4') then
			AnadirF4;
			repeat
			Men2:=0;
			writeln(' ----------------------------');
			writeln('|   Seleccione una opcion    |');
			writeln(' ---------------------------');
			writeln('|    1. Family Room 200 $    |');
			writeln(' ----------------------------');
			writeln('|    2. Suite-300 $          |');
			writeln(' ----------------------------');
			readln(O);
			if O = ('1') then Family
			else if O = ('2') then Suite
until Men2 = 2;	
end;

procedure Menu2;{Procedure para iniciar el menu para seleccionar el tipo de reservacion}
begin
if User = ('1') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Bienvenido ',client.usuario);
			writeln(' -----------------------------');
end
else if User = ('2') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Bienvenido ',client2.usuario);
			writeln(' -----------------------------');
end
else if User = ('3') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Bienvenido ',client3.usuario);
			writeln(' -----------------------------');
end
else if User = ('4') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Bienvenido ',client4.usuario);
			writeln(' -----------------------------');
end;

			writeln(' --------------------------------');
			writeln('| Que tipo de Reservacion desea? |');
			writeln(' --------------------------------');
			writeln('| 1. Individual                  |');
			writeln(' --------------------------------');
			writeln('| 2. Acompanado (2 Personas)     |');
			writeln(' --------------------------------');
			writeln('| 3. Grupo/Familia (5 Personas)  |');
			writeln(' --------------------------------');
			if User = ('1') then 
			begin
			readln(RE);
			if RE = ('1') then
			begin 
			client.Res := ('Individual');
			Individual;
			end
			else if RE = ('2') then
			begin
			client.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client.Res:=('Grupo/Familia');
			Grupo;
			end;
			while (RE <> '1') and (RE <> '2') and (RE <> '3') do
			begin
			writeln('Seleccione una opcion del menu');readln(RE);
			if client.Res = ('1') then
			begin 
			client.Res := ('Individual');
			Individual;
			end
			else if RE = ('2') then
			begin
			client.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client.Res:=('Grupo/Familia');
			Grupo;
			end;
			end
			end
			else if User = ('2') then
			begin
			readln(RE);
			if RE = ('1') then
			begin
			client2.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client2.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client2.Res:=('Grupo/Familia');
			Grupo;
			end;
			while (RE <> '1') and (RE <> '2') and (RE <> '3') do
			begin
			writeln('Seleccione una opcion del menu');readln(RE);
			if RE = ('1') then
			begin
			client2.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client2.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client2.Res:=('Grupo/Familia');
			Grupo;
			end
			end
			end
			else if User = ('3') then 
			begin
			readln(RE);
			if RE = ('1') then
			begin
			client3.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client3.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client3.Res:=('Grupo/Familia');
			Grupo;
			end;
			while (RE <> '1') and (RE <> '2') and (RE <> '3') do
			begin
			writeln('Seleccione una opcion del menu');readln(RE);
			if RE = ('1') then
			begin
			client3.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client3.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client3.Res:=('Grupo/Familia');
			Grupo;
			end
			end
			end
			else if User = ('4') then
			begin
			readln(RE);
			if RE = ('1') then
			begin
			client4.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client4.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client4.Res:=('Grupo/Familia');
			Grupo;
			end;
			while (RE <> '1') and (RE <> '2') and (RE <> '3') do
			begin
			writeln('Seleccione una opcion del menu');readln(RE);
			if RE = ('1') then
			begin
			client4.Res:=('Individual');
			Individual
			end
			else if RE = ('2') then 
			begin
			client4.Res:=('Acompanante');
			Compania
			end
			else if RE = ('3') then 
			begin
			client4.Res:=('Grupo/Familia');
			Grupo;
			end
			end
			end;
			
			
end;

procedure Nuevo;{Procedure para ingresar los datos de un nuevo cliente}
Begin
C:= (C+1);
if C = 1 then
repeat
	begin
	R:=('n');
	clrscr;
			writeln(' -----------------------');	
			writeln('| Ingrese Sus Datos     |');	
			writeln(' -----------------------------');
			writeln('| Ingrese Su Nombre y Apellido |');
			writeln(' -----------------------------');
			readln (client.nombre);
			writeln(' -----------------------------');
			writeln('| Ingrese su Edad             |');
			writeln(' -----------------------------');
			readln(client.edad);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Numero de Cedula |');
			writeln(' -----------------------------');
			readln(client.cedula);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Correo           |');
			writeln(' -----------------------------');
			readln(client.email);
			writeln(' ------------------------------');
			writeln('| Ingrese Su Numero de telefono |');
			writeln(' ------------------------------');
			readln(client.tlf);
			writeln(' -----------------------------');
			writeln(' -----------------------------');
			writeln('| Ingrese Su Usuario          |');
			writeln(' -----------------------------');
			readln(client.usuario);clrscr;
			writeln(' -----------------------------');
			writeln(' ',client.nombre);
			writeln(' -----------------------------');
			writeln(' ',client.edad);
			writeln(' -----------------------------');
			writeln(' ',client.cedula);
			writeln(' -----------------------------');
			writeln(' ',client.email);
			writeln(' -----------------------------');
			writeln(' ',client.tlf);
			writeln(' -----------------------------');
			writeln(' ',client.usuario);
			writeln(' -----------------------------');
			writeln(' -----------------------------');
textcolor(lightgreen);writeln('Son correctos estos datos? s/n');textcolor(white);
			writeln(' -----------------------------');
			readln(R);
			if R = ('s') then U := (U+1);
	end
	until R = ('s')
	else if C = 2 then
	repeat
	begin
	R:=('n');
	clrscr;
			writeln(' -----------------------');	
			writeln('| Ingrese Sus Datos     |');	
			writeln(' -----------------------------');
			writeln('| Ingrese Su Nombre y Apellido |');
			writeln(' -----------------------------');
			readln (client2.nombre);
			writeln(' -----------------------------');
			writeln('| Ingrese su Edad             |');
			writeln(' -----------------------------');
			readln(client2.edad);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Numero de Cedula |');
			writeln(' -----------------------------');
			readln(client2.cedula);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Correo           |');
			writeln(' -----------------------------');
			readln(client2.email);
			writeln(' ------------------------------');
			writeln('| Ingrese Su Numero de telefono |');
			writeln(' ------------------------------');
			readln(client2.tlf);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Usuario          |');
			writeln(' -----------------------------');
			readln(client2.usuario);clrscr;
			writeln(' -----------------------------');
			writeln(' ',client2.nombre);
			writeln(' -----------------------------');
			writeln(' ',client2.edad);
			writeln(' -----------------------------');
			writeln(' ',client2.cedula);
			writeln(' -----------------------------');
			writeln(' ',client2.email);
			writeln(' -----------------------------');
			writeln(' ',client2.tlf);
			writeln(' -----------------------------');
			writeln(' ',client2.usuario);
			writeln(' -----------------------------');
textcolor(lightgreen);writeln('Son correctos estos datos? s/n');textcolor(white);
			writeln(' -----------------------------');
			readln(R);U := (U+1);
	end
	until R = ('s')
	
	else if C = 3 then
	repeat
	begin
	R:=('n');
	clrscr;
			writeln(' -----------------------');	
			writeln('| Ingrese Sus Datos     |');	
			writeln(' -----------------------------');
			writeln('| Ingrese Su Nombre y Apellido |');
			writeln(' -----------------------------');
			readln (client3.nombre);
			writeln(' -----------------------------');
			writeln('| Ingrese su Edad             |');
			writeln(' -----------------------------');
			readln(client3.edad);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Numero de Cedula |');
			writeln(' -----------------------------');
			readln(client3.cedula);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Correo           |');
			writeln(' -----------------------------');
			readln(client3.email);
			writeln(' ------------------------------');
			writeln('| Ingrese Su Numero de telefono |');
			writeln(' ------------------------------');
			readln(client3.tlf);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Usuario          |');
			writeln(' -----------------------------');
			readln(client3.usuario);clrscr;
			writeln(' -----------------------------');
			writeln(' ',client3.nombre);
			writeln(' -----------------------------');
			writeln(' ',client3.edad);
			writeln(' -----------------------------');
			writeln(' ',client3.cedula);
			writeln(' -----------------------------');
			writeln(' ',client3.email);
			writeln(' -----------------------------');
			writeln(' ',client3.tlf);
			writeln(' -----------------------------');
			writeln(' ',client3.usuario);
			writeln(' -----------------------------');
textcolor(lightgreen);writeln('Son correctos estos datos? s/n');textcolor(white);
			writeln(' -----------------------------');
			readln(R);U := (U+1);
	end
	until R = ('s')
	else if C = 4 then
	repeat
	begin
	R:=('n');
	clrscr;
			writeln(' -----------------------');	
			writeln('| Ingrese Sus Datos     |');	
			writeln(' -----------------------------');
			writeln('| Ingrese Su Nombre y Apellido |');
			writeln(' -----------------------------');
			readln (client4.nombre);
			writeln(' -----------------------------');
			writeln('| Ingrese su Edad             |');
			writeln(' -----------------------------');
			readln(client4.edad);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Numero de Cedula |');
			writeln(' -----------------------------');
			readln(client4.cedula);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Correo           |');
			writeln(' -----------------------------');
			readln(client4.email);
			writeln(' ------------------------------');
			writeln('| Ingrese Su Numero de telefono |');
			writeln(' ------------------------------');
			readln(client4.tlf);
			writeln(' -----------------------------');
			writeln('| Ingrese Su Usuario          |');
			writeln(' -----------------------------');
			readln(client4.usuario);clrscr;
			writeln(' -----------------------------');
			writeln(' ',client4.nombre);
			writeln(' -----------------------------');
			writeln(' ',client4.edad);
			writeln(' -----------------------------');
			writeln(' ',client4.cedula);
			writeln(' -----------------------------');
			writeln(' ',client4.email);
			writeln(' -----------------------------');
			writeln(' ',client4.tlf);
			writeln(' -----------------------------');
			writeln(' ',client4.usuario);
			writeln(' -----------------------------');
textcolor(lightgreen);writeln('Son correctos estos datos? s/n');textcolor(white);
			writeln(' -----------------------------');
			readln(R);U := (U+1);
	end
	until R = ('s')
	else if C = 5 then
	begin
	clrscr;
	writeln(' --------------------------------------------');	
	writeln('| Lo siento, No podemos aceptar mas clientes |');	
	writeln(' --------------------------------------------');readln;
	end
    end;

procedure Ingresar;{Procedure para seleccionar el cliente deseado y empezar el proceso de reservar una habitacion}
begin
clrscr;
if U = 0 then 
begin
writeln(' -------------------------------');	
writeln('| Debe crear un Cliente primero |');	
writeln(' -------------------------------');
readln;
end
else if U > 0 then
begin
writeln(' -----------------------');	
writeln('| Seleccione una opcion |');	
writeln(' -----------------------');	
write('| 1. ',client.usuario,' ');writeln;
writeln(' ----------------------');
if C > 1 then
begin	
writeln(' -----------------------');	
write('| 2. ',client2.usuario,' ');writeln;
writeln(' ----------------------');
end;
begin
if U > 2 then
begin		
writeln(' -----------------------');	
writeln('| 3. ',client3.usuario,' ');
writeln(' ----------------------');
end;
end;
if U > 3 then
begin	
writeln(' -----------------------');	
write('| 4. ',client4.usuario,' ');writeln;
writeln(' ----------------------');
end;
end;	
readln(User);
if User = ('1') then Menu2
else if User = ('2') then 
begin
if U > 1 then Menu2
else if U <= 1 then writeln('Aqui hay un error -._-.');readln;
end
else if User = ('3') then
begin
if U > 2 then Menu2
else if U < 2 then writeln('Aqui hay un error -._-.');readln;
end
else if User = ('4') then
begin
if U > 3 then Menu2
else if U < 3 then writeln('Aqui hay un error -._-.');readln;
end
end;

procedure datos;{Procedure donde se pueden mostrar los datos de los clientes}
begin
writeln(' -----------------------');	
writeln('| Seleccione una opcion |');	
writeln(' -----------------------');	
write('| 1. ',client.usuario,' ');writeln;
writeln(' ----------------------');
if C > 1 then
begin	
writeln(' -----------------------');	
write('| 2. ',client2.usuario,' ');writeln;
writeln(' ----------------------');
end;
begin
if U > 2 then
begin		
writeln(' -----------------------');	
writeln('| 3. ',client3.usuario,' ');
writeln(' ----------------------');
end;
end;
if U > 3 then
begin	
writeln(' -----------------------');	
write('| 4. ',client4.usuario,' ');writeln;
writeln(' ----------------------');
end;


BEGIN	
readln(User);
if User = ('1') then
begin
if client.Res = ('Individual') then
begin
clrscr;
			
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client.tlf);
			writeln(' -----------------------------');
			writeln(' Tipo de Reservacion: ',client.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client.Res = ('Acompanante') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client.nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',client.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanante        |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client.cn);
			writeln(' -----------------------------');
			writeln('| Edad: ',client.ce);
			writeln(' -----------------------------');
			writeln('| C.I: ',client.cci);
			writeln(' ------------------------------');readln;
			writeln(' Tipo de Reservacion: ',client.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client.Res = ('Grupo/Familia') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client.nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',client.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanantes       |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',Fam[1].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam[1].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam[1].ci);
			writeln(' ------------------------------');readln;
			if F > 1 then
			begin
			writeln('| Nombre y Apellido: ',Fam[2].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam[2].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam[2].ci);
			writeln(' ------------------------------');readln;
			end;
			if F > 2 then
			begin
			writeln('| Nombre y Apellido: ',Fam[3].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam[3].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam[3].ci);
			writeln(' ------------------------------');readln;
			end;
			if F > 3 then
			begin
			writeln('| Nombre y Apellido: ',Fam[4].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam[4].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam[4].ci);
			writeln(' ------------------------------');readln;
			end;
			writeln(' Tipo de Reservacion: ',client.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end		
end
else if User = ('2') then 
begin
if U > 1 then
begin
if client2.Res = ('Individual') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client2.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client2.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client2.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client2.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client2.tlf);
			writeln(' -----------------------------');
			writeln(' Tipo de Reservacion: ',client2.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client2.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client2.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client2.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client2.Res = ('Acompanante') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client2.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client2.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client2.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client2.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client2.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanante        |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client2.cn);
			writeln(' -----------------------------');
			writeln('| Edad: ',client2.ce);
			writeln(' -----------------------------');
			writeln('| C.I: ',client2.cci);
			writeln(' ------------------------------');readln;
			writeln('| Tipo de Reservacion: ',client2.Res);
			writeln(' -----------------------------');
			writeln('| Habitacion: ',client2.habitacion);
			writeln(' -----------------------------');
			writeln('| Dias de Hospedaje: ',client2.Dias);
			writeln(' -----------------------------');
			writeln('| Total a pagar: ',client2.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client2.Res = ('Grupo/Familia') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client2.nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',client2.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client2.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client2.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client2.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanantes       |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',Fam2[1].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam2[1].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam2[1].ci);
			writeln(' ------------------------------');readln;
			if F2 > 1 then
			begin
			writeln('| Nombre y Apellido: ',Fam2[2].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam2[2].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam2[2].ci);
			writeln(' ------------------------------');readln;
			end;
			if F2 > 2 then
			begin
			writeln('| Nombre y Apellido: ',Fam2[3].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam2[3].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam2[3].ci);
			writeln(' ------------------------------');readln;
			end;
			if F2 > 3 then
			begin
			writeln('| Nombre y Apellido: ',Fam2[4].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam2[4].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam2[4].ci);
			writeln(' ------------------------------');readln;
			end;
			writeln(' Tipo de Reservacion: ',client2.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client2.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client2.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client2.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end		
else if U <= 1 then writeln('Aqui hay un error -._-.');readln;
end
else if User = ('3') then
begin
if U > 2 then
begin
if client3.Res = ('Individual') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client3.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client3.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client3.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client3.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client3.tlf);
			writeln(' -----------------------------');
			writeln(' Tipo de Reservacion: ',client3.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client3.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client3.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client3.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client3.Res = ('Acompanante') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client3.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client3.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client3.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client3.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client3.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanante        |');
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client3.cn);
			writeln(' -----------------------------');
			writeln(' Edad: ',client3.ce);
			writeln(' -----------------------------');
			writeln('| C.I: ',client3.cci);
			writeln(' ------------------------------');readln;
			writeln(' Tipo de Reservacion: ',client3.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client3.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client3.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client3.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client3.Res = ('Grupo/Familia') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client3.nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',client3.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client3.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client3.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client3.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanantes       |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',Fam3[1].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam3[1].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam3[1].ci);
			writeln(' ------------------------------');readln;
			if F3 > 1 then
			begin
			writeln('| Nombre y Apellido: ',Fam3[2].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam3[2].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam3[2].ci);
			writeln(' ------------------------------');readln;
			end;
			if F3 > 2 then
			begin
			writeln('| Nombre y Apellido: ',Fam3[3].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam3[3].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam3[3].ci);
			writeln(' ------------------------------');readln;
			end;
			if F3 > 3 then
			begin
			writeln('| Nombre y Apellido: ',Fam3[4].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam3[4].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam3[4].ci);
			writeln(' ------------------------------');readln;
			end;
			writeln(' Tipo de Reservacion: ',client3.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client3.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client3.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client3.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end		
else if U < 2 then writeln('Aqui hay un error -._-.');readln;
end
else if User = ('4') then
begin
if U > 3 then 
begin
if client4.Res = ('Individal') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client4.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client4.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client4.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client4.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client4.tlf);
			writeln(' -----------------------------');
			writeln(' Tipo de Reservacion: ',client4.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client4.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client4.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client4.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end
else if	client4.Res = ('Acompanante') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client4.nombre);
			writeln(' -----------------------------');
			writeln(' Edad: ',client4.edad);
			writeln(' -----------------------------');
			writeln(' C.I: ',client4.cedula);
			writeln(' -----------------------------');
			writeln(' Correo: ',client4.email);
			writeln(' -----------------------------');
			writeln(' Telefono: ',client4.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanante        |');
			writeln(' -----------------------------');
			writeln(' Nombre y Apellido: ',client4.cn);
			writeln(' -----------------------------');
			writeln(' Edad: ',client4.ce);
			writeln(' -----------------------------');
			writeln('| C.I: ',client4.cci);
			writeln(' ------------------------------');readln;
			writeln(' Tipo de Reservacion: ',client4.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client4.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client4.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client4.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;	
end
else if	client4.Res = ('Grupo/Familia') then
begin
clrscr;
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',client4.nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',client4.edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',client4.cedula);
			writeln(' -----------------------------');
			writeln('| Correo: ',client4.email);
			writeln(' -----------------------------');
			writeln('| Telefono: ',client4.tlf);
			writeln(' -----------------------------');readln;
			writeln('|          Acompanantes       |');
			writeln(' -----------------------------');
			writeln('| Nombre y Apellido: ',Fam4[1].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam4[1].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam4[1].ci);
			writeln(' ------------------------------');readln;
			if F4 > 1 then
			begin
			writeln('| Nombre y Apellido: ',Fam4[2].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam4[2].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam4[2].ci);
			writeln(' ------------------------------');readln;
			end;
			if F4 > 2 then
			begin
			writeln('| Nombre y Apellido: ',Fam4[3].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam4[3].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam4[3].ci);
			writeln(' ------------------------------');readln;
			end;
			if F4 > 3 then
			begin
			writeln('| Nombre y Apellido: ',Fam4[4].nombre);
			writeln(' -----------------------------');
			writeln('| Edad: ',Fam4[4].edad);
			writeln(' -----------------------------');
			writeln('| C.I: ',Fam4[4].ci);
			writeln(' ------------------------------');readln;
			end;
			writeln(' Tipo de Reservacion: ',client4.Res);
			writeln(' -----------------------------');
			writeln(' Habitacion: ',client4.habitacion);
			writeln(' -----------------------------');
			writeln(' Dias de Hospedaje: ',client4.Dias);
			writeln(' -----------------------------');
			writeln(' Total a pagar: ',client4.Pagar,'$');
			writeln(' -----------------------------');
			writeln(' PRESIONE ENTER PARA CONTINUAR ');readln;
end	
else if U < 3 then writeln('Aqui hay un error -._-.');readln
end;
end;
end;
end;
end;
end;

BEGIN{Inicio del programa con un logo todo bonito :D}
U:=0;
Men1:=0;
assign( FicheroC1, 'Reservaciones-Cliente1.TXT' );
rewrite(FicheroC1 );
assign( FFC, 'Acompanantes-Cliente1.TXT' );  
rewrite( FFC );
assign( FicheroC2, 'Reservaciones-Cliente2.TXT' );
rewrite(FicheroC2 );
assign( FFC2, 'Acompanantes-Cliente2.TXT' );  
rewrite( FFC2 );  
assign( FicheroC3, 'Reservaciones-Cliente3.TXT' );
rewrite( FicheroC3 );    
assign( FFC3, 'Acompanantes-Cliente3.TXT' );  
rewrite( FFC3 );             	
assign( FicheroC4, 'Reservaciones-Cliente4.TXT' );
rewrite( FicheroC4 );   
assign( FFC4, 'Acompanantes-Cliente4.TXT' );  
rewrite( FFC4 ); 
writeln('--------------------------------------------------------------------------------');
writeln(' _         _    ______       _______    ___________     ________     _');
writeln('| |       | |  |   _  \     /   _   \  |____   ____|   |  ______|   | |');
writeln('| |       | |  | |   \ \   |   / \   |      | |        | |____      | |');
writeln('| |       | |  | |    ) )  |  |   |  |      | |        |  ____|     | |    ');
writeln('| |____   | |  | | _ / /   |   \_/   |      | |        | |______    | |____');
writeln('|______|  |_|  |______/     \_______/       |_|        |________|   |______|');

writeln('--------------------------------------------------------------------------------');
writeln('------------------------------');
writeln('Presione ENTER para continuar.');
writeln('------------------------------');readln;
clrscr;
repeat	
clrscr;
writeln(' -----------------------');	
writeln('| Seleccione una opcion |');	
writeln(' -----------------------');	
writeln('|1. Crear Usuario      |');
writeln(' ----------------------');		
writeln('|2. Ingresar Usuario   |');	
writeln(' ----------------------');
if Reser > 0 then
begin
writeln('|3. Ver Datos          |');
writeln(' ----------------------');
end;	
writeln('|0. Salir              |');	
writeln(' ----------------------');
readln(Opcion);
	if (Opcion = '1') then Nuevo
	else if(Opcion = '2') then Ingresar
	else if (Opcion = '3') and (Reser > 0) then datos
	else if(Opcion = '0') then
	begin 
	writeln('Hasta la proxima');
	Men1 := 2;
	end

	until Men1 = 2;
end.
