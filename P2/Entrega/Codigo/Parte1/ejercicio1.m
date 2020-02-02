%Tiempo de muestreo
Ts=100e-3;

% Referencia x-y de posicion
refx=3;
refy=-7;
th_0 = (3*pi)/180;

% Ejecutar Simulacion con control borroso
sim('positioncontrol.slx')
% Obtener datos
x=x.signals.values;
y=y.signals.values;
e_theta = E_theta.signals.values;
e_d = E_d.signals.values;


% Ejecutar simulación con controlador original
sim('positioncontrolOriginal.slx')
xO=xO.signals.values;
yO=yO.signals.values;

% Mostrar
figure;
plot(xO,yO,x,y,refx,refy,"+");
legend('Trayectoria Original', 'Trayectoria Borroso', 'Referencia');
grid on;
hold on;