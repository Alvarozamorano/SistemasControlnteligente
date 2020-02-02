% Generar N posiciones aleatorias, simular y guardar en variables
Ts=100e-3;
N=30
E_d_vec=[];
E_theta_vec=[];
V_vec=[];
W_vec=[];
for i=1:N
    refx=10*rand-5;
    refy=10*rand-5;
    sim('positioncontrol.slx')
    E_d_vec=[E_d_vec;E_d.signals.values];
    E_theta_vec=[E_theta_vec;E_theta.signals.values];
    V_vec=[V_vec; v.signals.values];
    W_vec=[W_vec; w.signals.values];
end
inputs=[E_d_vec'; E_theta_vec'];
outputs=[V_vec'; W_vec'];

% Entrenar red neuronal con 10 neuronas en la capa oculta
net = feedforwardnet(6);
% Con 10 no acaba, maximo acabar ha sido con 8
net = configure(net,inputs,outputs);
net = train(net,inputs,outputs);

% Generar bloque de Simulink con el controlador neuronal
gensim(net,Ts)