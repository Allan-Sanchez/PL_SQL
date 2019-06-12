--otra manera de resolver la tarea de cursores

set SERVEROUTPUT ON;



declare

    empleado empleados%rowtype;
    cursor c_empleados is
    select * from empleados;
    
    --procedimiento
    procedure imprimir_resultados(empleado empleados%rowtype)is
        salario_diario number;
    begin
        salario_diario:=empleado.salario/30;
        
        DBMS_OUTPUT.PUT_LINE('==================================');
        DBMS_OUTPUT.PUT_LINE('NOMBRE :'||empleado.nombre);
        DBMS_OUTPUT.PUT_LINE('SALARIO DIARIO: '||round(salario_diario,2));
        DBMS_OUTPUT.put_line('DIAS TRABAJADOS :'||empleado.dias_trabjados);
        DBMS_OUTPUT.PUT_LINE('SALARIO A PAGAR :'||round(salario_diario*empleado.dias_trabjados,2));
        DBMS_OUTPUT.PUT_LINE('==================================');
    end;
    --fin procedimento

begin


        open c_empleados ;
        loop 
        fetch c_empleados into empleado;
        exit when c_empleados%notfound;
        
        imprimir_resultados(empleado);
        
        end loop;

end;
/