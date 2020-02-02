%EJERCICIO 1

% 1)
syms k;
f = 2 + 5*k + k^2;
z = ztrans(f);

subplot(4,1,1);
plot(0:10, subs(f, k, 0:10), 0:10, subs(z, z, 0:10));
legend('Original','Transformada');
title('Apartado 1');

% 2)
syms k;
f = sin(k) * exp(-5*k);
z = ztrans(f);

subplot(4,1,2);
plot(0:10, subs(f, k, 0:10), 0:10, subs(z, z, 0:10));
legend('Original','Transformada');
title('Apartado 2');

% 3)
a = [0.4,0,0];
b = [1,-1,0.1,0.02];
sys = tf(a,b);

subplot(4,1,3);
impulse(sys);
title('Impulso al sistema');

subplot(4,1,4);
step(sys);
title('Entrada escalón');