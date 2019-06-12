--  MANEJO DE ERRORES EN PL/S

SET SERVEROUTPUT ON;


DECLARE 
    
    NOMBRE NVARCHAR2(100);

BEGIN
    
    select nombre into nombre from empleados where id=20;
    
    DBMS_OUTPUT.put_line(nombre);
    
    exception 
        --when no_data_found then
        --DBMS_OUTPUT.PUT_LINE('no encontro empleado con ese codigo');
    when others then
    DBMS_OUTPUT.PUT_LINE('ALGO RARO PASO EN LE CODIGO');

END;
/