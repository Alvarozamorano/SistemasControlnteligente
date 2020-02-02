%EJERCICIO 3

% 1)
n = input ('Indique el tamaño de la matriz 1 --> ');
[A, n] = introducirMatriz(n);

m = input ('Indique el tamaño de la matriz 2 --> ');
[B, m] = introducirMatriz(m);

% 4)
fprintf('\nMatrices generadas\n');
disp(A);
disp(B);

fprintf('Transpuestas\n');
disp(A');
disp(B');

fprintf('Inversas\n');
if n(1)==n(2)
    disp(inv(A));
else
    fprintf('La matriz A no tiene inversa, no es cuadrada\n\n');
end

if m(1)==m(2)
    disp(inv(B));
else
    fprintf('La matriz B no tiene inversa, no es cuadrada\n\n');
end
    
fprintf('Determinantes\n');
if n(1)==n(2)
    disp(det(A));
else
    fprintf('La matriz A no tiene determinante, no es cuadrada\n\n');
end

if m(1)==m(2)
    disp(det(B));
else
    fprintf('La matriz B no tiene determinante, no es cuadrada\n\n');
end

fprintf('Rangos\n');
disp(rank(A));
disp(rank(B));

fprintf('Producto matricial\n');
if n(2)==m(1)
    disp(A*B);
else
    fprintf('No se puede realizar el producto\n\n');
end    
    
fprintf('Producto elemento a elemento\n');
if n==m
    disp(A.*B);
else
    fprintf('No se puede realizar el producto\n\n');
end 

fprintf('Vector fila\n');
v = [A(1,:) B(1,:)];
disp(v);

fprintf('Vector columna\n');
w = [A(:,1);B(:,1)];
disp(w);