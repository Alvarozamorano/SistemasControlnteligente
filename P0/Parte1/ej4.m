%EJERCICIO 4

timeDet=[];
timeRank=[];

for i=1:25
    A = rand(i);
    tic;
    det(A);
    finalDet = toc;
    timeDet = [timeDet finalDet];
    
    tic;
    rank(A);
    finalRank = toc;
    timeRank = [timeRank finalRank];
end    

plot(1:25, timeDet, 1:25, timeRank);
title('Comparacion tiempos');
xlabel('Tamaño matriz');
ylabel('Tiempo');
legend('Determinante', 'Rango');