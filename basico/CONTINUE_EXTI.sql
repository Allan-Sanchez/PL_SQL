--CICLO FOR EN PL/SQL
--ROTULAR<< AQUI >>

SET SERVEROUTPUT ON;



DECLARE

BEGIN
    <<CICLO_TABLA_1>>--ROTULACION
    FOR I IN 1..10 LOOP
         if(mod(i,2)<>0)then
            continue;--salta los datos el dato que coninside en la condicion
         end if;
    
    DBMS_OUTPUT.PUT_LINE(I||' * 2 = '||(I*2));
    
--    if(i=5) then
--    exit; se sale del ciclo de cumplirse la condiccion
--    end if;
   
    END LOOP CICLO_TABLA_1;
    
END;
/