function indx = indx_fines_n(n)
%INDX_FINES_N Esta funci�n retorna el �ndice para cada nombre del fino
%presente en la muestra
%   INDX = INDX_FINES_N(N) retorna el �ndice asociado al nombre del fino de
%   la muestra, N debe ser un string.
%
%   Tipos de finos: ML, MH, CL-CH, CL-ML, CL-CH, CL-ML. Si es vac�o quiere
%   decir que el tipo de fino no es considerado dentro de la clasificaci�n.

    if not(ischar(n))
        error('Fine type must be an string, valid names: ML, MH, CL, CH, CL-CH or CL-ML.');
    else
        n = upper(n);
        if strcmp(n, '')
            indx = -1;
        elseif or(strcmp(n,'ML'), strcmp(n, 'MH'))
            indx = 0;
        elseif strcmp(n, 'CL-CH')
            indx = 1;
        elseif strcmp(n, 'CL-ML')
            indx = 2;
        elseif or(strcmp(n,'CL'), strcmp(n, 'CH'))
            indx = 3;
        else
            error('Unrecognized fine type %s, valid names:  ML, MH, CL, CH, CL-CH or CL-ML.', n);
        end
    end

end

