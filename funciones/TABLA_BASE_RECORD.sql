-- TIPO DE REGISTRO TABLA BASE RECORD

SET SERVEROUTPUT ON;

DECLARE

    REG_EMPLEADO EMPLEADOS%ROWTYPE;--rowtype para trabajar en forma tabla
BEGIN
    
    --luego hacemos el ingreso en forma de querys
    SELECT * INTO REG_EMPLEADO FROM EMPLEADOS WHERE ID=5;
    
    --luego tienes que trabajar como si fuera una clase en otros lenguajes de progamacion
    DBMS_OUTPUT.put_line(REG_EMPLEADO.NOMBRE);
    DBMS_OUTPUT.put_line(REG_EMPLEADO.ID);
    DBMS_OUTPUT.put_line(REG_EMPLEADO.SALARIO);
    DBMS_OUTPUT.put_line(REG_EMPLEADO.ACTUALIZADO);
END;
/