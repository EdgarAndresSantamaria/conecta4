-- Author: Edgar
with comprobar_si_gana;
with Datos;use Datos;

procedure Colocar_Ficha(Tablero:in out T_Tablero;
                        turno: in T_Ficha;
                        columna:in integer;
                        gana:in out boolean)is
fila:integer;
salir:boolean:=false; 
      
begin
fila:=1;
loop exit when (fila>Max_Filas) or (salir = true);
        if tablero(fila,columna)/= nada then
            salir:=true;
            fila:=fila-1;
        else
            fila:=fila+1;    
        end if;
end loop;
Tablero(fila,columna):=turno;
gana:=comprobar_si_gana(fila,columna,Tablero,turno);                      
end Colocar_Ficha;
-- comprobar 4 direcciones para saber si hemos ganado , 2 diagonales, vertical y horizontal
--comprobar si gana será un subprograma que barajará cuatro opciones diferentes para saber si ha ganado 