clear all;
N=1;
x_0=0.2;
y_0=0;
th_0=0;
for i=1:N
    %Tiempo de muestreo
    Ts=100e-3
    % Referencia x-y de posicion
    refx=5;
    refy=5;
    obsx=2.21;
    obsy=1;
    % Ejecutar Simulacion
    sim('EvitarObstaculo.slx')
    % Mostrar
    x=salida_x.signals.values;
    y=salida_y.signals.values;
    figure;
    plot(x,y);
    hold on;
    x1=salida_x_g.signals.values;
    y1=salida_y_g.signals.values;
    plot(x1,y1);
    plot(obsx,obsy,'o');
    legend("Controlador Borroso","Trajectory Generation","Obstaculo");
    hold off;
    grid on;
end
    

