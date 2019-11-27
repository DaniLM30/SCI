% Limpiamos todo
close all;
clear;
clc;
% Inicializamos variables
Comp=5;
Ts=100e-3;
for i=1:Comp
     fprintf("Comparacion: %d\n=====================\n",i)
    % Puntos de destino
    refx=10*rand-5;
    refy=10*rand-5;
    % Medimos tiempos
    tic
    % Simulacion con control clasico
    control = sim('PositionControl.slx');
    clasico = toc;
    tic
    % Simulacion con control neuronal
    red = sim('PositionControlNet.slx');
    neuronal = toc;
    % Obtenemos los puntos por los que pasa el robot
    x=control.salida_x.signals.values;
    y=control.salida_y.signals.values;
    v = control.V.signals.values;
    ang = control.salida_theta.signals.values;
    x_red=red.salida_x.signals.values;
    y_red=red.salida_y.signals.values;
    v_red = red.V.signals.values;
    ang_red = red.salida_theta.signals.values;
    % Mostrar valores obtenidos para comparar
    fprintf("Control clasico: \n\t-tiempo simulacion: %fs\n \t-movimientos: %d\n \t-v lineal: %f\n \t-angulo: %f\n",clasico,length(x), mean(v),mean(ang))
    fprintf("Tiempo con control neuronal: \n\t-tiempo simulacion: %fs\n \t-movimientos: %d\n \t-v lineal: %f\n \t-angulo: %f\n",neuronal,length(x_red), mean(v_red),mean(ang_red))
    fprintf("---------------\n")
    fprintf("Resultados(Neuronal - Clasico): \n\t-tiempo simulacion: %fs\n \t-movimientos: %d\n \t-v lineal: %f\n \t-angulo: %f\n",(neuronal-clasico),(length(x_red)-length(x)), (mean(v_red)-mean(v)),(mean(ang_red)-mean(ang)))
    % Mostramos en la grafica la trayectoria
    figure;
    plot(x,y,'r--');
    hold on;
    plot(x_red,y_red ,'b-');
    title("Comparación de trayectorias")
    xlabel("Eje x")
    ylabel("Eje y")
    legend("Control clasico","Control neuronal")
    hold off;
    grid on;
end

