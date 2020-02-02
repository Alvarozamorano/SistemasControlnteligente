%Tiempo de muestreo
Ts=100e-3;

% Referencia x-y de posicion
refx=-3;
refy=-3;
th_0 = (3*pi)/180;

obsx=-1.5;
obsy=-1.5;

% Ejecutar Simulacion
sim('positioncontrolObstaculo.slx')
% Mostrar
x=x.signals.values;
y=y.signals.values;
figure;
plot(x,y,obsx,obsy,"*",refx,refy,"+");
legend('Control borroso', 'Obstaculo', 'Referencia');
grid on;
hold on; 