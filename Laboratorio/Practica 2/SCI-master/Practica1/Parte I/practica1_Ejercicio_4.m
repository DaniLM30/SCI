% Carga de datos de ejemplo disponibles en la toolbox
[inputs,targets] = cancer_dataset;
% Creci�n de una red neuronal para el reconocimiento de patrones
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize, 'trainbr');
% Divisi�n del conjunto de datos para entrenamiento, validaci�n y test
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 0/100;
net.divideParam.testRatio = 30/100;
% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);
% Prueba
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs)
% Visualizaci�n
view(net)