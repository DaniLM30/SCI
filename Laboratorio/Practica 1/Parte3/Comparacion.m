% Comparacion
close all; clear all;
Ts=0.1;
%Referencia x-y de posicion
x_0=0.5;
y_0=0.5;
th_0=0;
%Ejecutar simulacion
sim('TrajectoryControlNets.slx');
x_net=salida_x.signals.values;
y_net=salida_y.signals.values;
x_0=0.5;
y_0=0.5;
th_0=0;
Scontrol=sim('TrajectoryControl.slx');
x_control=salida_x.signals.values;
y_control=salida_y.signals.values;

figure;
plot(x_net,y_net);
hold on;
plot(x_control,y_control);
legend("Red NARX","Controlador");
hold off;
grid on;