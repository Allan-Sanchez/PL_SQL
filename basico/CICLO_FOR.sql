--CICLO FOR EN PL/SQL
--ROTULAR<< AQUI >>

SET SERVEROUTPUT ON;



DECLARE

BEGIN
    <<CICLO_TABLA_1>>--ROTULACION
    FOR I IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(I||' * 2 = '||(I*2));
    END LOOP CICLO_TABLA_1;
    
END;
/