-- Author: Edgar
with Ada.Text_IO, Ada.Integer_Text_IO,comprobar_espacio;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Datos;use Datos;

function Solicitar_Columna(Tablero:in T_tablero) return integer is
    columna:integer;
    espacio,salir:boolean;
    
    procedure Pedir_Return is
    begin
        Put_Line("pulsa return para continuar ");
        Skip_Line;
        New_Line(4);
    end Pedir_Return;
    
begin
    salir:=false;
    put("¿en que columna introduciras la siguiente ficha?");
    loop exit when salir = true ;
    put("introduce una columna valida");
   -- get(columna);    
    columna:=1;
    new_line(2);
    Pedir_Return;    
    if columna<1 or columna>Max_Columnas then
       put("introduce una columna valida");
       --get(columna);
       new_line(2);
       Pedir_Return;  
    else
       espacio:=comprobar_espacio(Tablero,columna); 
       if espacio=true then
       salir:=true;     
    end if;
    end if;    
    end loop; 
    return(columna);   
end Solicitar_Columna;
