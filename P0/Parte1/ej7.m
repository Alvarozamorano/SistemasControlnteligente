%EJERCICIO 7

% a)
p1 = input ('Polinomio 1 --> ');
p2 = input ('Polinomio 2 --> ');

% b)
fprintf('Escribir para que polinomio desea obtener la solución\n');
apl = input('pol_1, pol_2, prod_poli --> ', 's');

% c)
switch apl
    case "pol_1"
        [sol, rc, cp] = raices(p1); 
    case "pol_2"
        [sol, rc, cp] = raices(p2);
    case "prod_poli"
        [sol, rc, cp] = raices(conv(p1,p2));
end     

% d) Representar

for i=1:size(cp)
    plot(real(cp(i)), imag(cp(i)), 'bo');
    hold on;
end

% fprintf('Solución de %s:\n', apl);
% disp(sol);
% fprintf('\n reales: %i, complejas: %i\n', size(rc), size(cp));