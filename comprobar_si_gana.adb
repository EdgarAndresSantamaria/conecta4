-- Author: Edgar
with Datos;use Datos;
with comprobar_diagonal,comprobar_horizontal,comprobar_vertical;
function comprobar_si_gana(fila:in integer;
                           columna:in integer;     
                           Tablero:in T_Tablero;
                           turno:in T_Ficha) return boolean  is
   incrementoFila:integer;
   incrementoColumna:integer;    
   gana:boolean;
    
              
begin
    incrementoFila:=0;
    incrementoColumna:=1;
    gana:=comprobar_horizontal(incrementoFila,incrementoColumna,fila,columna,Tablero,turno); 
    if gana=true then
        return(gana);
    else
        incrementoFila:=1;
        incrementoColumna:=0;
        gana:=comprobar_vertical(incrementoFila,incrementoColumna,fila,columna,Tablero,turno); 
        if gana=true then
            return(gana);
        else
            incrementoFila:=1;
            incrementoColumna:=1;
            gana:=comprobar_diagonal(incrementoFila,incrementoColumna,fila,columna,Tablero,turno);
            if gana=true then
                return(gana);
            else
                incrementoFila:=-1;
                incrementoColumna:=1;
                gana:=comprobar_diagonal(incrementoFila,incrementoColumna,fila,columna,Tablero,turno); 
                return(gana);
            end if;
        end if;              
    end if;           
end comprobar_si_gana;
