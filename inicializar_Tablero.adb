-- Author: Edgar
with Datos;use Datos;

procedure inicializar_Tablero (Tablero:in out T_Tablero)is

begin
    for i in 1..Max_Filas loop
        for j in 1..Max_columnas loop
            Tablero(i,j):=nada;
        end loop;
    end loop;
end inicializar_Tablero;
