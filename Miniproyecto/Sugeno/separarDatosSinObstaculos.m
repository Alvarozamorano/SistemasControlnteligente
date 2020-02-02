train_angular = training(:,[2,5,12])
indices = round(linspace(1,size(train_angular,1),1500))
train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)

train_velocidad = training(:,[2,5,13])
indices = round(linspace(1,size(train_velocidad,1),1500))
train_velocidad = train_velocidad(indices,:)
train_velocidad(isinf(train_velocidad)) = 5.0
train_velocidad = double(train_velocidad)