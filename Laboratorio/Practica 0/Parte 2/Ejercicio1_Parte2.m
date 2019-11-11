clear all;
syms a k;
% Apartado 1
%Funci�n origen y su representaci�n
f1 = 2 + 5*k + k^2; 
figure('Name','Apartado 1','NumberTitle','off');
subplot(2,2,[1 2]);
p1 = ezplot(f1);

%Funci�n transformada y su representaci�n
f1_trans = ztrans(f1, k); 
disp(f1_trans);
subplot(2,2,[3 4]);
p2 = ezplot(f1_trans);

% Apartado 2
%Funci�n origen y su representaci�n
f2 = sin(k)*exp(-a*k);  
figure('Name','Apartado 2','NumberTitle','off');
subplot(2,2,[1 2]);
p3 = ezplot(f2);

%Funci�n transformada y su representaci�n
f2_trans = ztrans(f2, k); 
disp(f2_trans);
subplot(2,2,[3 4]);
p4 = ezplot(f2_trans);

%Apartado 3
%Polinomio en forma vectorial
num = [0.4 0 0];
den = [1 -1 0.1 0.02];

%Tiempo de muestra
t=0.1;

%Transformada
fun = tf(num,den,t);

%Representaci�n gr�fica del impulso
figure('Name','Apartado 3.1','NumberTitle','off');
impulse(fun);
title('Respuesta al impulso del sistema');
%Representaci�n gr�fica entrada escal�n
figure('Name','Apartado 3.2','NumberTitle','off');
step(fun);
title('Respuesta del sistema a una entrada escal�n');




