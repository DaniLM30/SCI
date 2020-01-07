load ("datos_entrenamiento.mat")
train_angular = training(:,[1,3,4,12])
indices_angular = round(linspace(1,size(training,1),1500))
train_angular = train_angular(indices_angular,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)

train_linear = training(:,[1,3,4,13])
indices_linear = round(linspace(1,size(training,1),1500))
train_linear = train_linear(indices_linear,:)
train_linear(isinf(train_linear)) = 5.0
train_linear = double(train_linear)