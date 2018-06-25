-- Author: Edgar
with Datos;use Datos;

function comprobar_espacio(Tablero:in T_Tablero;
                           Columna:in integer) return boolean is
espacio:boolean:=false;   
begin
    if Tablero(1,Columna)=nada then
        espacio:=true;
    end if;
    return(espacio);
end comprobar_espacio;
