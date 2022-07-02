clc
clear
format long
valor=input('Escriba el valor IEEE754 que quiere convertir: ');
float=typecast(uint32(bin2dec(valor)),'single');
disp("De IEEE 754 a punto flotante: ");
disp(float);

r= dec2bin(typecast(single(float),'uint32'),32);
disp('El resultado en IEEE 754 es: ');
disp(r)
valor_teorico=str2double(valor);
valor_experimental=float;
error_abosuluto=abs(valor_teorico-valor_experimental);
disp("Valor Teorico: ");
disp(valor_teorico);
disp("Valor Experimental: ");
disp(valor_experimental);
%disp(error_abosuluto);