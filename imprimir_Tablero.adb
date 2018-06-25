-- Author: Edgar
with Ada.Text_Io;use Ada.Text_Io;
with Datos;use Datos;

procedure imprimir_Tablero(Tablero:in T_tablero) is
package P_casilla_IO is new
        Enumeration_IO(T_casilla);
    use P_Casilla_IO;
begin
    for i in 1..Max_Filas loop
        new_line;
        for j in 1..Max_columnas loop
            put(Tablero(i,j));
            put("  ");
        end loop;
    end loop;    
end imprimir_Tablero;
