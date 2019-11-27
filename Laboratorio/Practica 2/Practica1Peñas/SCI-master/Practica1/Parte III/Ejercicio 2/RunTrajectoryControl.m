Ts=0.1;
x_0 = 0.05;
y_0=0.0;
th_0=0;
% Ejecutar Simulacion
sim('TrajectoryControl.slx');
% Mostrar la trayectirua
x_gen=ans.salida_x_gen.signals.values;
y_gen=ans.salida_y_gen.signals.values;
x=ans.salida_x.signals.values;
y=ans.salida_y.signals.values;
figure;
plot(x,y);
hold on;
plot(x_gen,y_gen);
title("Comparación de trayectorias")
legend("Control","Generada")
grid on;
hold off;