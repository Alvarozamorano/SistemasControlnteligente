%EJERCICIO 2

% 1)
n = input ('Indique el tamaño de la matriz --> ');
A = rand(n);

% 2)
% a.- 
disp(A);

% b.-
B = [];
for i = 1:+2:n
    B = [B (A(:,i))];
end

disp(B);

% c.-
x = diag(A);
disp(x);

% d.-
maxi = [];
mini = [];
medi = [];
vari = [];

for j = 1:n
    maxi = [maxi max(A(j,:))];
    mini = [mini min(A(j,:))];
    medi = [medi mean(A(j,:))];
    vari = [vari var(A(j,:))];
end

f1 = figure ('Name', 'Datos matriz');
subplot(2,2,1);
plot (1:n, maxi, '*');
title('Maximos');
xlabel('Fila');
ylabel('Maximo');

subplot(2,2,2);
plot (1:n, mini, '*');
title('Minimos');
xlabel('Fila');
ylabel('Minimo');

subplot(2,2,3);
plot (1:n, medi, '*');
title('Medias');
xlabel('Fila');
ylabel('Media');

subplot(2,2,4);
plot (1:n, vari, '*');
title('Varianzas');
xlabel('Fila');
ylabel('Varianza');