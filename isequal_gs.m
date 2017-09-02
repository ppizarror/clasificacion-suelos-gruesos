function b = isequal_gs( a,b )
%ISEQUAL_GS Comprueba si las listas de grupo de s�mbolo a y b son id�nticas
%   B = ISEQUAL_GS(A,B) comprueba que las listas A y B de grupo de s�mbolo
%   sean id�nticas.

    if a(1) == b(1)
        if a(2) == b(2)
            if a(3)==b(3)
                b = true;
                return
            end
        end
    end

    b = false;

end

