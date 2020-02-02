% Generación de datos de simulación
Ts = 0.1;
sim('test1.slx')
inputs=x.signals.values';
outputs=y.signals.values';

% Definición del modelo NARX
N = 5;
net = narxnet(1:3,1:2,N);
view(net)

% Preparar arrays
nT=size(inputs,2);
inputsc=mat2cell(inputs,1,ones(nT,1));
outputsc=mat2cell(outputs,1,ones(nT,1));

% Entrenamiento
[x,xi,ai,t] = preparets(net,inputsc,{},outputsc);

% Conversion
net = train(net,x,t,xi,ai);
net = closeloop(net);
view(net)

% Bloque con la red
gensim(net,Ts)