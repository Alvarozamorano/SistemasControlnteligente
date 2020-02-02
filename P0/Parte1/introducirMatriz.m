%EJERCICIO 3

% 2 Y 3)
function [Matriz, dimen] = introducirMatriz(dimensiones)

    str = input('r para aleatorios, n para rellenar: ', 's');
    
    if  str=="r"
        if size(dimensiones)==1
            A = rand(dimensiones(1),dimensiones(1));
            dimen = [dimensiones(1) dimensiones(1)];
        else
            A = rand(dimensiones(1),dimensiones(2));
            dimen = dimensiones;
        end
    else
        disp('Comience a introducir valores');
        if size(dimensiones)==1
            for i=1:dimensiones(1)
                for j=1:dimensiones(1)
                   fprintf('Posicion %i, %i: ', i, j);
                   A(i,j) = input("");
                end
            end
        else
            for i=1:dimensiones(1)
                for j=1:dimensiones(2)
                    fprintf('Posicion %i, %i: ', i, j);
                    A(i,j)=input("");
                end
            end
        end
    end
    
    Matriz = A;
end