%EJERCICIO 1

% 1)
A = [1 2; 3 4; 5 6; 7 8];
v = [14;16;18;20];

% 2)
B = [A v];
disp(B);

% 3)
f = [B(1,:) B(2,:) B(3,:) B(4,:)];
disp(f);

% 4)
c = [B(:,1); B(:,2); B(:,3)];
disp(c);