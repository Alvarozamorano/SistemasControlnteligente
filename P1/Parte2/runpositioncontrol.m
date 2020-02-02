clear;

%Tiempo de muestreo
Ts=100e-3;
% Referencia x-y de posicion
refx =2;
refy=2;
% Ejecutar Simulacion
sim('positioncontrol.slx')

% Mostrar
x=x.signals.values;
y=y.signals.values;
figure;
plot(x,y);
grid on;
hold on;