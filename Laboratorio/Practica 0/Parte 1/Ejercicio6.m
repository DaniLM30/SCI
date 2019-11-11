clear all;
%Creacion de las matrices
A1= [0 2 10 7;
    2 7 7 1;
    1 9 0 5;
    4 0 0 6;
    2 8 4 1;
    10 6 0 3;
    2 6 4 0;
    1 1 9 3;
    6 4 8 2;
    0 3 0 9];
b1 = [90 ; 59 ; 15 ; 10 ; 80 ; 17 ; 93 ; 51 ; 41 ; 76];

%Segundo sistema
A2= [0.110 0 1 0;
    0 3.260 0 1;
    0.425 0 1 0;
    0 3.574 0 1;
    0.739 0 1 0;
    0 3.888 0 1;
    1.054 0 1 0;
    0 4.202 0 1;
    1.368 0 1 0;
    0 4.516 0 1];
b2 = [317 ; 237 ; 319 ; 239 ; 321 ; 241 ; 323 ; 243 ; 325 ; 245];

%Apartado a
condA1 = cond(A1);
disp("El numero de condiciones sobre la matriz A1 es");
disp(condA1);
condA2 = cond(A2);
disp("El numero de condiciones sobre la matriz A2 es");
disp(condA2);

%Apartado b
SolA1 = linsolve(A1,b1);
SolA2 = linsolve(A2,b2);

%Apartado c
[r1, c1] = size(b1);
b1_ruido = rand(r1, c1)*1+0;
%Añadimos el ruido a b1
b1 = b1 + b1_ruido;
SolA1_r = linsolve(A1,b1);

[r2, c2] = size(b2);
b2_ruido = rand(r2, c2)*1+0;
%Añadimos el ruido a b2
b2 = b2 + b2_ruido;
SolA2_r = linsolve(A2,b2);

%Apartado d
disp("Solución del primer sistema");
disp(SolA1);
disp("Solución del primer sistema con ruido");
disp(SolA1_r);
disp("Solución del segundo sistema");
disp(SolA2);
disp("Solución del segundo sistema con ruido");
disp(SolA2_r);