%Ejercicio 4
clear all;
tiemposDet=[];
tiemposRank=[];
for i=1:25
    M=randi([0,100],i);
    
    %Calculamos el tiempo en hacer determinante
    tic;
    det(M);
    tiemposDet(i)= toc;
    
    %Calculamos el tiempo en hacer el rango
    tic;
    rank(M);
    tiemposRank(i)=toc;
end

G=[tiemposDet ; tiemposRank];
plot(transpose(G));
xlabel("Tamaño de la matriz");
ylabel("Tiempo empleado");
legend("Determinantes","Rangos");