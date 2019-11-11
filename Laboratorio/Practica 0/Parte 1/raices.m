function [solucion, reales, complejas]=raices(poli_1, poli_2)
    reales = 0;
    complejas = 0;
    
    %Seleccionamos el polinomio
    modo= input("Aplicar sobre p1, p2 o prod: ",'s');
    switch modo
        case 'p1'
            poli=poli_1;
        case 'p2'
            poli=poli_2;
        case 'prod'
            poli=conv(poli_1,poli_2);
    end
     
    %Extraemos las raices y las clasificamos
    solucion= roots(poli);
    for i = 1:length(solucion)
        if isreal(solucion(i))
            reales = reales + 1;
        else
            complejas = complejas + 1;
        end
    end 
    
    fprintf('Cantidad de raices reales %i \n', reales);
    fprintf('Cantidad de raices complejas %i \n', complejas);
    
end