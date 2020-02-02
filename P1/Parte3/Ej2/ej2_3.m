clear;

Ts = 0.1;
x_0=-2;
y_0=0;
th_0=3*pi/180;

for i=0:2
    x_0=x_0+i;
    y_0=y_0+i;
    
    sim('positioncontrol.slx')
    x=x.signals.values;
    y=y.signals.values;
    subplot(2,3,1+i);
    plot(x,y);
    title('Trayectoria control');
    
    sim('positionNarx.slx')
    x=x.signals.values;
    y=y.signals.values;
    subplot(2,3,4+i);
    plot(x,y);
    title('Trayectoria Narx');
end