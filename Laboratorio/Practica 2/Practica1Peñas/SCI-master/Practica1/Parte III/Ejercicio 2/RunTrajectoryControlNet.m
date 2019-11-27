Ts=0.1;
x_0 = 0.0;
y_0=4.0;
th_0=0;
% Ejecutar Simulacion
control=sim('TrajectoryControl.slx');
red=sim('TrajectoryControlNet.slx');
% Mostrar la trayectirua
x=control.salida_x.signals.values;
y=control.salida_y.signals.values;
x_gen=red.salida_x.signals.values;
y_gen=red.salida_y.signals.values;
figure;
plot(x,y);
hold on;
plot(x_gen,y_gen);
title("Comparación de trayectorias")
legend("Controlador","Neurocontrolador")
grid on;
hold off;