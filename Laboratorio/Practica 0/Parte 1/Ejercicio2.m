clear all;
%Apartado 1
    %Pedimos la entrada al usuario
    size=input("Indique el tamaño de la matriz: ");

    %Generamos la matriz
    Y=randi(10,size);

%Apartado 2
    %a) Matriz generada
    disp("Matriz generada");
    disp(Y);
    
    %b) Matriz con columnas impares
    B=[];
    for i=1:size
        if rem(i,2) ~= 0
            B = [B Y(:,i)];
        end        
    end
    disp("Matriz con columnas impares");
    disp(B);
    
    %c) Valor de la diagonal
    c= diag(Y);
    disp("Diagonal de la matriz");
    disp(c);
    
    %d) Valor maximo, minimo, medio y varianza
    M = max(Y,[],2);
    disp("Valor maximo de cada fila")
    disp(M);
    Z = min(Y,[],2);
    disp("Valor minimo de cada fila")
    disp(Z);
    R = mean(Y,2);
    disp("Valor medio de cada fila");
    disp(R);
    V = var(Y,0,2);
    disp("Varianza de cada fila");
    disp(V);
    G = [M Z R V];
    plot(G,'-o','MarkerIndices',1:1:size);
    xlabel("Numero de fila");
    legend('Maximos','Minimos','Medias','Varianzas');
    