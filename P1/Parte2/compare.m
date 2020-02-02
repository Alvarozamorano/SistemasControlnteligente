%Tiempo de muestreo
Ts=100e-3;

N=5;
xZ=[];
yZ=[];
xN=[];
yN=[];
xM=[];
yM=[];
for i=1:1
%     refx=10*rand-5; 
%     refy=10*rand-5;
    refx = -3;
    refy = 2;
    sim('positioncontrol.slx');
    xsR=x.signals.values;
    ysR=y.signals.values;
    xZ=[xZ;xsR];
    yZ=[yZ;ysR];
    
    sim('positioncontrolnet.slx');
    xR = salidaX.signals.values;
    yR = salidaY.signals.values;
    xN=[xN;xR];
    yN=[yN;yR];
    
    sim('positioncontrolnetMal.slx');
    xRM = salidaX.signals.values;
    yRM = salidaY.signals.values;
    xM=[xM;xRM];
    yM=[yM;yRM];
end

% Mostrar
figure;
subplot(3,1,1);
plot(xZ,yZ);
title('Sin red');

subplot(3,1,2);
plot(xN,yN);
title('Red con 6 neuronas (0.005 perfomance)');

subplot(3,1,3);
plot(xM,yM);
title('Red con 4 neuronas (0.04 perfomance)');