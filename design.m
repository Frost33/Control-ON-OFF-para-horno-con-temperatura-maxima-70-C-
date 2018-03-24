clear;
clc;
Vcc=input('Valor de Vcc : ');
DC=input('Nivel DC : ');
A=input('Valor de la ganancia en decimal : ');

%algoritmo
J=(Vcc-DC)/DC;
K=(1-A)/A;
Rc = [ 10, 12, 13, 15, 18, 20, 22, 24, 27, 33, 39, 43,47,52 , 56, 68, 82, 91];

for i=1:18
    
Ra=((J*K-1)*Rc(i))/(J+1);
Rb=(-A*Ra*Rc(i))/((A-1)*Rc(i)+A*Ra);
disp('Valores');
disp(Ra);
disp(Rb);
disp(Rc(i));

end
