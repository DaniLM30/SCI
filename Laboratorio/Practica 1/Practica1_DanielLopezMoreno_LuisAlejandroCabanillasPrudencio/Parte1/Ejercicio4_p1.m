% Carga de datos de ejemplo disponibles en la toolbox
[inputs,targets] = cancer_dataset;
% Creci�n de una red neuronal para el reconocimiento de patrones
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize,'trainbfg');
% Divisi�n del conjunto de datos para entrenamiento, validaci�n y test
net.divideParam.trainRatio = 20/100;
net.divideParam.valRatio = 20/100;
net.divideParam.testRatio = 60/100;
% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);
% Prueba
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs)
% Visualizaci�n
view(net)

