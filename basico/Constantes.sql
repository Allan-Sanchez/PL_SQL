

set SERVEROUTPUT ON;

DECLARE 
--CALCULAR EL AREA DE UN CUADRADO
--CONSTANTES
PI CONSTANT NUMBER :=3.1416;
-- VARIABLES
AREA NUMBER;
RADIO NUMBER;

BEGIN

RADIO:=7;
AREA:=PI*(RADIO*RADIO);

DBMS_OUTPUT.PUT_LINE('AREA :'||AREA||'cm2');
DBMS_OUTPUT.PUT_LINE('AREA :'||ROUND(AREA,2)||'cm2');
DBMS_OUTPUT.PUT_LINE('AREA :'||ROUND(AREA,4)||'cm2');

END;
/