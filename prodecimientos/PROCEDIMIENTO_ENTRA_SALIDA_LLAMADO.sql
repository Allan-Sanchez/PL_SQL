
SET SERVEROUTPUT ON;

DECLARE
    A NUMBER:=10;
    B NUMBER:=13;
    C NUMBER;--RECIVE EL PALOR DESDE EL PROCEDIMIENTO POR ESO SE DECLARA DE SALIDA

BEGIN
    MENOR(A,B,C);
    DBMS_OUTPUT.put_line('EL NUMERO MENOR ES : '||C);
END;
/