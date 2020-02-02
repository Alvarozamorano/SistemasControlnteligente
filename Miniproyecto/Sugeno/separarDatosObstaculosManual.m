columna_2 = training(:,[2]);
columna_4 = training(:,[5]);
resta = columna_4-columna_2;

train_angular = [resta,training(:,12)]
indices = round(linspace(1,size(train_angular,1),1500))
train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)

train_velocidad = [resta,training(:,13)]
indices = round(linspace(1,size(train_velocidad,1),1500))
train_velocidad = train_velocidad(indices,:)
train_velocidad(isinf(train_velocidad)) = 5.0
train_velocidad = double(train_velocidad)
