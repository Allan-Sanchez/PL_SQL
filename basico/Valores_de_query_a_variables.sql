
SET SERVEROUTPUT ON;

DECLARE

CANTIDAD NUMBER;
USUARIO NVARCHAR2(100);

BEGIN 

-- INGRESAR VALORES DESDE QUERRYS A VARIABLES

SELECT USER INTO USUARIO FROM DUAL;

DBMS_OUTPUT.PUT_LINE('USUARIO :'||USUARIO);

SELECT COUNT(*)INTO CANTIDAD FROM DUAL;
DBMS_OUTPUT.PUT_LINE('CANTIDAD :'||CANTIDAD);
DBMS_OUTPUT.PUT_LINE('');
--TAMBIEN SE PUEDEN CONCATENAR EN UN SOLO QUERRY
SELECT USER,COUNT(*)INTO USUARIO,CANTIDAD FROM DUAL;

DBMS_OUTPUT.PUT_LINE('USUARIO :'||USUARIO);
DBMS_OUTPUT.PUT_LINE('CANTIDAD :'||CANTIDAD);
END;
/