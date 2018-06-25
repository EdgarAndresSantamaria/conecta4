-- Author: Edgar

package Datos is
    
    Max_Columnas: constant integer:=9;
    Max_Filas: constant Integer:=6;
    type T_Casilla is (Rojo,Azul,Nada);
    subtype T_Ficha is T_Casilla range Rojo..Azul;
    subtype T_Fila is Integer range 1..Max_Filas;
    subtype T_Columna is Integer range 1..Max_Columnas;
    
    type T_Tablero is array (1..Max_Filas,1..Max_Columnas) of T_Casilla;
    
    end datos;