%Tiempo de muestreo
Ts=100e-3;

% Referencia x-y de posicion
x_0 = 0.1;
y_0 = 0.1;
th_0 = (3*pi)/180;

% Ejecutar Simulacion
sim('positioncontrol2.slx')

% Mostrars
x=x.signals.values;
y=y.signals.values;
generadosx = xG.signals.values;
generadosy = yG.signals.values;
e_theta = E_theta.signals.values;
e_d = E_d.signals.values;

figure;
plot(x,y,generadosx,generadosy);
legend('Borroso','Real');
grid on;