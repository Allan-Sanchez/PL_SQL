-- tarea de cursores

set SERVEROUTPUT ON;

declare
    
    SALARIO_DIARIO NUMBER:=0;
    SALARIO_APAGAR NUMBER:=0;
    
    

begin   
    
    <<PLANILLA>>
    FOR PLANILLA IN (SELECT * FROM EMPLEADOS) LOOP
        
        SALARIO_DIARIO:=ROUND((PLANILLA.SALARIO/30),2);
        SALARIO_APAGAR:=(SALARIO_DIARIO * PLANILLA.DIAS_TRABJADOS);
        
        DBMS_OUTPUT.PUT_LINE('==================================');
        DBMS_OUTPUT.PUT_LINE('NOMBRE :'||PLANILLA.NOMBRE);
        DBMS_OUTPUT.PUT_LINE('SALARIO DIARIO: '||SALARIO_DIARIO);
        DBMS_OUTPUT.put_line('DIAS TRABAJADOS :'||PLANILLA.DIAS_TRABJADOS);
        DBMS_OUTPUT.PUT_LINE('SALARIO A PAGAR :'||SALARIO_APAGAR);
        DBMS_OUTPUT.PUT_LINE('==================================');
        DBMS_OUTPUT.PUT_LINE('');
    
    END LOOP PLANILLA;
    
    
end;
/