-- Author: Edgar
    

with Ada.Text_Io;use Ada.Text_Io;
with Datos;use Datos;

with Colocar_Ficha;
with Imprimir_Tablero;
with Solicitar_Columna;
with Inicializar_Tablero;




procedure prueba_4enraya is 

          
   Tablero: T_Tablero; 
   Gana: Boolean:=false;
   Columna: T_Columna;
   Turno: T_Ficha:=Rojo;

begin
   Inicializar_Tablero(Tablero);
--   Tablero:=(
--      (Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada),
--      (Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada),
--      (Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada,   Nada),
--      (Nada,   Nada,   Nada,   Nada,   Nada,   Rojo,   Azul,   Nada,   Nada),
--      (Nada,   Nada,   Nada,   Azul,   Rojo,   Azul,   Rojo,   Nada,   Nada),
--      (Nada,   Nada,   Nada,   Rojo,   Rojo,   Azul,   Azul,   Nada,   Nada));
   Imprimir_Tablero(Tablero);                  
   Loop  
      Columna:=Solicitar_Columna(Tablero);      
      Colocar_Ficha(Tablero,Turno,Columna,Gana);
      Imprimir_Tablero(Tablero);                  
      if Gana then         
         New_Line;Put_Line("Has ganado la partida!!!!");New_Line;New_Line;         
      else
         if (Turno=Rojo) then Turno:=Azul;
         else Turno:=Rojo;                 
         end if;         
      end if;         
      exit when Gana;      
   end loop;   
   New_Line;New_Line;
   Put_Line("Se ha acabado la prueba. Agurr!!");     
end prueba_4enraya;