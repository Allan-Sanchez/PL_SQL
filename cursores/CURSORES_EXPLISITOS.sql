-- CURSORES EXPLISITOS

SET SERVEROUTPUT ON;

DECLARE
    NOMBRE NVARCHAR2(200);
    SALARIO NUMBER;
    
    CURSOR C_EMPLEADOS IS
    SELECT NOMBRE, SALARIO FROM EMPLEADOS ORDER BY NOMBRE ASC;

BEGIN
    
    OPEN C_EMPLEADOS;
        LOOP
        FETCH C_EMPLEADOS INTO NOMBRE,SALARIO;
        EXIT WHEN C_EMPLEADOS%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE(NOMBRE||''||SALARIO);
        END LOOP;
    CLOSE C_EMPLEADOS;
    

END;
/