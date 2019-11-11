close all; clear all;
Ts=0.1;
%Referencia x-y de posicion
x_0=0.05;
y_0=0.0;
th_0=0;
%Ejecutar simulacion
sim('TrajectoryControlNets.slx')

x=salida_x.signals.values;
y=salida_y.signals.values;
x_net=salida_x_g.signals.values;
y_net=salida_y_g.signals.values;
figure;
plot(x,y);
hold on;
plot(x_net,y_net);
hold off;
grid on;