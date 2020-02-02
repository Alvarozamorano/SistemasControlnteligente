clear;

Ts = 0.1;
x_0=0;
y_0=0;
th_0=0;
sim('positioncontrol.slx')

xG=xG.signals.values;
yG=yG.signals.values;
subplot(2,1,1);
plot(xG,yG);
title('Trayectoria generada');

x=x.signals.values;
y=y.signals.values;
subplot(2,1,2);
plot(x,y);
title('Trayectoria realizada');