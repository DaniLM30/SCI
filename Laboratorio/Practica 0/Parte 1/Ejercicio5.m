clear all;
%Ejercicio 5
x = -5:0.25:5;
y = x;
[X,Y] = meshgrid(x);
Z=Y.*sin(pi.*X/10)+5.*cos((X.*X+Y.*Y)/8)+cos(X+Y).*cos(3.*X-Y);

%Arriba centrada (grafica superficie)
subplot(2,2,[1 2]);
surf(X,Y,Z);
title("Superficie");
xlabel("Coordenada x");
ylabel("Coordenada y");
zlabel("Coordenada z");

%Abajo izquierda (grafica en malla)
subplot(2,2,3);
mesh(X,Y,Z);
title("Superficie malla");
xlabel("Coordenada x");
ylabel("Coordenada y");
zlabel("Coordenada z");

%Abajo derecha (grafica contorno)
subplot(2,2,4);
contourf(X,Y,Z);
title("Contorno");
xlabel("Coordenada x");
ylabel("Coordenada y");
zlabel("Coordenada z");

