clear
clc
format long
valor=input('Escriba el valor decimal que quiere convertir: ');
r= dec2bin(typecast(single(valor),'uint32'),32);
disp('El resultado en IEEE 754 es: ');
disp(r);
decimal=typecast(uint32(bin2dec(r)),'single');
disp("De IEEE 754 a Decimal: ");
disp(decimal);
valor_teorico=valor;
valor_experimental=decimal;
error_absoluto=abs(valor_teorico-valor_experimental);
error_relativo=abs((valor_teorico-valor_experimental)/(valor_teorico));
disp("Valor Teorico: ");
disp(valor_teorico);
disp("Valor Experimental: ");
disp(valor_experimental);
disp("Error Absoluto: ");
disp(error_absoluto);
disp("Error Relativo: ");
disp(error_relativo);