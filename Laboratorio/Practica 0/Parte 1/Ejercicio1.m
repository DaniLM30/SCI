%Apartado 1
A = [1 2;3 4;5 6;7 8];
v = [14;16;18;20];

%Apartado 2
B = [A v];
disp(B);

%Apartado 3
fil = [];
for i=1:4
    fil = [fil B(i,:)];
end
disp(fil);

%Apartado 4
col = B(:);
disp(col);
