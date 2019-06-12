

--tarea numero 1 de pl/sql

set SERVEROUTPUT ON;

declare

numero_camisetas number :=5;
monto_pago number:=19.99;
subtotal number;
total number;
impuesto number;

begin
--primer calculo
subtotal:=(numero_camisetas * monto_pago);
impuesto:=(subtotal * 0.15);
total:=(subtotal + impuesto);



DBMS_OUTPUT.put_line('Numero de camisetas :'||numero_camisetas);
DBMS_OUTPUT.PUT_LINE('Monto a pagar :' ||monto_pago);
DBMS_OUTPUT.PUT_LINE('=========================');

DBMS_OUTPUT.put_line('Sub total a pagar :'||subtotal);
DBMS_OUTPUT.PUT_LINE('Impuesto a pagar :'||impuesto);
DBMS_OUTPUT.PUT_LINE('======TOTAL A PAGAR=======');
DBMS_OUTPUT.PUT_LINE('Total :'||total);

end;
/