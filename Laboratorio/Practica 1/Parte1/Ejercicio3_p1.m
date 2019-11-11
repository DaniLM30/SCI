% Carga de datos de ejemplo disponibles en la toolbox
[inputs,targets] = bodyfat_dataset;
% Creación de la red
hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize,'trainlm');
% División del conjunto de datos para entrenamiento, validación y test
net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 10/100;
% Entrenamiento de la red
[net,tr] = train(net,inputs,targets);
% Prueba
outputs = net(inputs);
errors = gsubtract(outputs,targets);
performance = perform(net,targets,outputs)
% Visualización de la red
view(net)