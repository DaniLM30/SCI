clear;
%Tiempo de muestreo
Ts=100e-3;
% Referencia x-y de posicion
refx=-4.0;
refy=1.0;
% Ejecutar Simulacion
sim('PositionControlNet.slx');
% Mostrar la trayectirua
x=ans.salida_x.signals.values;
y=ans.salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on;
