%EJERCICIO 5

x = -5:0;
y = 0:5;
[X,Y] = meshgrid(x,y);

Z = Y.*sin(pi*(X./10))+5*cos((X.^2+Y.^2)/8)+cos(X+Y)*cos(3*X-Y);

f1 = figure ('Name', 'Graficas');
subplot(2,3,2);
surf(X,Y,Z);
xlabel('Eje X');
ylabel('Eje Y');
title('Superficie');

subplot(2,3,4);
mesh(X,Y,Z);
xlabel('Eje X');
ylabel('Eje Y');
title('Malla');

subplot(2,3,6);
contourf(X,Y,Z);
xlabel('Eje X');
ylabel('Eje Y');
title('Contorno');


legend('z');