

set SERVEROUTPUT ON;


declare 
empleados number;


begin
    
    empleados:=TOTAL_EMPLEADOS();
    DBMS_OUTPUT.put_line('Total empleados: '||empleados);
end;
/