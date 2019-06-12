-- condicion if es igual a que en otros lenguajes de programacion
-- pero ademas lleva la palabra reservada THEN
set SERVEROUTPUT ON;


declare

nota number :=69;

begin

    if(nota BETWEEN 65 and 70) then
    
    nota:=55;
    end if;
    DBMS_OUTPUT.PUT_LINE('Nota :'||nota);
    
    if(nota >=70) then
    dbms_output.put_line('Aprovado..');
    
    else
    DBMS_OUTPUT.PUT_LINE('Reprobado....');
    end if;
     
    
end;
/