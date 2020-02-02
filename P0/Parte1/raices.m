function [solucion, reales, complejas] = raices(poli)

    rl=[]; cp=[];
    rs = roots(poli);
    for i=1:size(rs)
        if isreal(rs(i))
            rl=[rl;rs(i)];
        else
            cp=[cp;rs(i)];
        end
    end
    
    solucion = rs;
    reales = rl;
    complejas = cp;

end

