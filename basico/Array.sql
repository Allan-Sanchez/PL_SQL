
--arreglos desde pl/sql

set SERVEROUTPUT ON;

declare
    type alumnosArray is varray(5) of nvarchar2(100);
    type notasArray is varray(5) of number;
    
    --utilizar arreglo
    alumnos alumnosArray;
    notas notasArray;
begin

alumnos:= alumnosArray('Allan','Edrey','juan','hernesto','pedro');
notas := notasArray(90,100,95,89,75);

DBMS_OUTPUT.PUT_LINE(alumnos(1));
DBMS_OUTPUT.PUT_LINE(alumnos(2));
DBMS_OUTPUT.PUT_LINE(alumnos(3));
DBMS_OUTPUT.PUT_LINE(alumnos(4));
DBMS_OUTPUT.PUT_LINE('');

DBMS_OUTPUT.PUT_LINE(notas(1));
DBMS_OUTPUT.PUT_LINE(notas(2));
DBMS_OUTPUT.PUT_LINE(notas(3));
DBMS_OUTPUT.PUT_LINE('');

notas(1):=100;
DBMS_OUTPUT.PUT_LINE(notas(1));

end;
/
