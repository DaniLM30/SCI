clear all;
%Apartado 1
    %Pedimos la entrada al usuario
    sz=input("Indique el tamaño de la matriz A en formato [fil col]: ");
    sz2=input("Indique el tamaño de la matriz B en formato [fil col]: ");
    %Creamos la matriz y la mostramos por pantalla
    A = IntroducirMatriz(sz);
    disp("La matriz A generada");
    disp(A);
    B= IntroducirMatriz(sz2);
    disp("La matriz B generada");
    disp(B);
    [m,n] = size(A);
    [o,p]= size(B);
%Apartado 2
    %Calculamos la transpuesta y la inversa de cada matriz
    Ta = transpose(A);
    disp("La transpuesta de la matriz A es");
    disp(Ta);
    Tb = transpose(B);
    disp("La transpuesta de la matriz B es");
    disp(Tb);
    
    %Calculamos la inversa si se puede
    if (length(sz)==1||m==n) && (det(A)~=0)
        Ia=inv(A);
        disp("La inversa de la matriz A es");
        disp(Ia);
    %Si no tiene inversa avisamos al usuario
    else
        disp("La matriz A no tiene inversa")
    end
    %Calculamos la inversa si se puede
    if (length(sz2)==1||o==p) && (det(B)~=0)
        Ib=inv(B);
        disp("La inversa de la matriz B es");
        disp(Ib);
    %Si no tiene inversa avisamos al usuario
    else
        disp("La matriz B no tiene inversa")
    end
%Apartado 3
    %Determinante y rango de cada matriz
    if m==n
        Da = det(A);
        disp("El determinante de A es");
        disp(Da);
    %Si no tiene determinante avisamos al usuario
    else 
        disp("La matriz A no tiene determinante");
    end
    
    if o==p
        Db = det(B);
        disp("El determinante de B es");
        disp(Db);
    %Si no tiene determinante avisamos al usuario
    else 
        disp("La matriz B no tiene determinante");
    end    
    
    %Calculamos el rango
    Ra = rank(A);
    disp("El rango de A es");
    disp(Ra);
    Rb = rank(B);
    disp("El rango de B es");
    disp(Rb);
%Apartado 4
    %El producto de A y B (matricial y elemento a elemento)
    %Producto elemento a elemento
    if size(A)==size(B)
        Mule=times(A,B);
        disp("El producto elemento por elemento de A y B es");
        disp(Mule);
    %Si no se puede multiplicar avisamos al usuario
    else
        disp("Las matrices no pueden multiplicarse elemento por elemento");
    end
    
    %Producto matricial
    if n==o
        Mul=mtimes(A,B);
        disp("El producto matricial de A y B es");
        disp(Mul);
    %Si no se puede multiplicar avisamos al usuario
    else
        disp("Las matrices no puden multiplicarse")
    end
%Apartado 4
    %Vector fila concatenando la primera fila de cada matriz
    FilA = A(1,:);
    FilB = B(1,:);
    Vf=[FilA FilB];
    disp("El vector fila obtenido es");
    disp(Vf);
%Apartado 5
    %Vector columna concatenando la primera columna de cada matriz
    ColA = A(:,1);
    ColB = B(:,1);
    Vc=[ColA;ColB];
    disp("El vector columna obtenido es");
    disp(Vc);
    
