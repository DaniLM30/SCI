%Tiempo de muestreo
Ts=100e-3
x_0 = 0.2;
y_0=0;
th_0=0;
% Referencia x-y de posicion
refx=10*rand-5;
refy=10*rand-5;
% Ejecutar Simulacion
sim('runTrajectoryFuzzy.slx')
% Mostrar
x=ans.salida_x.signals.values;
y=ans.salida_y.signals.values;
figure;
plot(x,y);
grid on;
hold on; 