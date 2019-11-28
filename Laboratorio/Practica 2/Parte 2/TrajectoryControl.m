clear all;
N=1;

x_0=0.2;
y_0=0;
th_0=0;
for i=1:N
    %Tiempo de muestreo
    Ts=100e-3
    % Referencia x-y de posicion
    refx=10*rand-5;
    refy=10*rand-5;
    obsx=1;
    obsy=0;
    % Ejecutar Simulacion
    sim('EvitarObstaculo.slx')
    % Mostrar
    x=salida_x.signals.values;
    y=salida_y.signals.values;
    figure;
    plot(x,y);
%     grid on;
    hold on;
    x1=salida_x_g.signals.values;
    y1=salida_y_g.signals.values;
%     figure;
    plot(x1,y1);
%     grid on;
    legend("Trajectory generation","Controlador Borroso");
    hold off;
    grid on;
    

end
    

