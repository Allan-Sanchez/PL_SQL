--CURSORES IMPLICITOS

SET SERVEROUTPUT ON;

DECLARE

BEGIN
    
    UPDATE EMPLEADOS SET ACTUALIZADO =SYSDATE;

    DBMS_OUTPUT.put_line('FILAS AFECTADAS :'||SQL%ROWCOUNT);
    
    --EN EL DBMS NO PODEMOS MANDAR A IMPRIMIR O CONCATENAR BOOLEANOS
    IF(SQL%FOUND) THEN
    
    DBMS_OUTPUT.PUT_LINE('ENCONTRO REGISTROS');
    ELSE
    DBMS_OUTPUT.PUT_LINE('NO SE ENCONTRO REGISTROS');
    END IF;

    COMMIT;
END;
/
