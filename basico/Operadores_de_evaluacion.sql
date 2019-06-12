--operadores de evaluacion


set SERVEROUTPUT ON;



declare

A number :=5;
B number :=10;

nombre1 nvarchar2(100) :='Allan';
nombre2 nvarchar2(200);
begin

    /*
    if(A < B) then
    DBMS_OUTPUT.PUT_LINE('A es menor que B');
    end if;
    */
--    
--    if(nombre1 like 'A%') then
--   DBMS_OUTPUT.PUT_LINE('El nombre contiene A');
--    end if;
--    
--        if (A between 0 and 10)then
--        DBMS_OUTPUT.PUT_LINE('Se encuentra en el rando de 0 a 10');
--        end if;
            
--        if ( A in(5,10,15,20))then
--        DBMS_OUTPUT.PUT_LINE('Se encuentra en el conjunto asigando');
--        end if;

        if (nombre2 is null) then
        DBMS_OUTPUT.PUT_LINE('El campo es null o vacio');
        end if;
end;
/