% Puntos a clasificar
P=[0.1 0.7 0.8 0.8 1.0 0.3 0.0 -0.3 -0.5 -1.5;
   1.2 1.8 1.6 0.6 0.8 0.5 0.2 0.8 -1.5 -1.3];
T=[1 1 1 0 0 1 1 1 0 0;
   0 0 0 0 0 1 1 1 1 1];
% Red perceptron que se usara
net = perceptron;
net = train(net,P,T);
% Mostramos puntos y rectas generadas del perceptron
plotpv(P,T);
plotpc(net.iw{1,1},net.b{1});
% Agregamos un nuevo punto de clase 3
P = [P, [0.0;-1.5]];
T = [T,[1;1]];
% Se vuelve a mostrar y entrenar
net = train(net,P,T);
plotpv(P,T);
plotpc(net.iw{1,1},net.b{1});