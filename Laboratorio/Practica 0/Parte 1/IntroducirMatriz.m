%Funcion para rellenar una matriz dadas sus dimensiones
function Matriz = IntroducirMatriz(Dimensiones)
    fil = Dimensiones(1,1);
    if length(Dimensiones)==2
        col = Dimensiones(1,2);
    else
        col = fil;
    end
    
    inst= input('Introduce r para datos aleatorios o cualquier otra tecla para manual: ', 's');
    if inst=='r'
        Matriz= randi(10,fil, col);
    else
        Matriz=[];
        for i=1:col
            Col= [];
            for j=1:fil
                texto= strcat('Posicion fila[', num2str(j),'] col[',num2str(i),']: ');
                num= input(texto);
                Col = [Col ; num];
            end
            Matriz= [Matriz Col];
        end
    end   
end