--  CICLO WHILE


SET SERVEROUTPUT ON;



DECLARE

Y NUMBER :=20;

BEGIN
       <<CICLO_w>> 
    WHILE Y < 200 LOOP
    DBMS_OUTPUT.PUT_LINE(Y);
    Y:=Y+10;
    END LOOP CICLO_w;

END;
/