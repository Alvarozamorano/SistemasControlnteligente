resta = out.resta;
train_angular = [resta,out.angular]
indices = round(linspace(1,1501,1500))
train_angular = train_angular(indices,:)
train_angular(isinf(train_angular)) = 5.0
train_angular = double(train_angular)

% train_velocidad = [resta,out.velocidadLineal]
% indices = round(linspace(1,1501,1500))
% train_velocidad = train_velocidad(indices,:)
% train_velocidad(isinf(train_velocidad)) = 5.0
% train_velocidad = double(train_velocidad)
