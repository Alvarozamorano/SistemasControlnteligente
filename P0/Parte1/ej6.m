%EJERCICIO 6

% 1)
%Sistema 1
A = [0 2 10 7; 2 7 7 1; 1 9 0 5; 4 0 0 6; 2 8 4 1;
    10 5 0 3; 2 6 4 0; 1 1 9 3; 6 4 8 2; 0 3 0 9];

A1 = [90; 59; 15; 10; 80; 17; 93; 51; 41; 76];

%Sistema 2
B = [0.110 0 1 0; 0 3.260 0 1; 0.425 0 1 0; 0 3.574 0 1;
    0.739 0 1 0; 0 3.888 0 1; 1.054 0 1 0; 0 4.202 0 1; 
    1.368 0 1 0; 0 4.516 0 1];

B1 = [317; 237; 319; 239; 321; 241; 323; 243; 325; 245];

% 2)
% a) Número de condición
n = cond(A);
fprintf('Numero de condicion de A --> %i\n', n);

% b)
XA = linsolve(A,A1);
XB = linsolve(B,B1);

% c)
% Desviacion
a = 1;
%Media
b = 0;

v = a.*randn(1,10) + b;

% d)
fprintf('Solucion S1 -> X1:%i, X2:%i, X3:%i, X4:%i\n', XA(1), XA(2), XA(3), XA(4));
fprintf('Solucion S2 (sin ruido) -> X1:%i, X2:%i, X3:%i, X4:%i\n', XB(1), XB(2), XB(3), XB(4));

for i=1:10
    B1(i) = B1(i)+v(i);
end

XB2 = linsolve(B,B1);
fprintf('Solucion S2 (con ruido) -> X1:%i, X2:%i, X3:%i, X4:%i\n', XB2(1), XB2(2), XB2(3), XB2(4));
