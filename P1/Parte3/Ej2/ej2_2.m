clear;

Ts = 0.1;
x_0=0;
y_0=0;
th_0=3*pi/180;
sim('positioncontrol.slx')

E_d_vec=[E_d.signals.values];
E_theta_vec=[E_theta.signals.values];
V_vec=[v.signals.values];
W_vec=[w.signals.values];

inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

% Definición del modelo NARX
N=3;
net = narxnet(1:2,1,[N]);

% Preparar arrays
nT=size(inputs,2);
inputsc=mat2cell(inputs,2,ones(nT,1));
outputsc=mat2cell(outputs,2,ones(nT,1));

% Entrenamiento
[x,xi,ai,t] = preparets(net,inputsc,{},outputsc);

% Conversion
net = train(net,x,t,xi,ai);
net = closeloop(net);

% Generar bloque de Simulink con el controlador neuronal
gensim(net,Ts)