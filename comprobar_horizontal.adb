-- Author: Edgar
with datos;
use datos;

function comprobar_horizontal (incrementoFila:in integer;
                               incrementoColumna:in integer;
                               fila:in integer;
                               columna:in integer;
                               Tablero:in T_tablero;
                               Turno:in T_ficha)return boolean is
   gana:boolean:=false;
   i,j:integer;
   cont:integer:=0;  
begin
     i:=Fila;
     j:=columna;
     loop exit when(j<1);
     j:=j-incrementoColumna;
      end loop;
         loop exit when i>Max_filas or j>Max_Columnas or gana=true ;
                if Tablero(i,j)=turno then
                cont:=cont+1;
                    if cont=4 then
                    gana:=true;
                    else 
                    i:=i+incrementoFila;
                    j:=j+incrementoColumna;
                    end if;
                else
                    cont:=0;
                    i:=i+incrementoFila;
                    j:=j+incrementoColumna;
                end if;   
          end loop;
        return(gana);           
end comprobar_horizontal;
