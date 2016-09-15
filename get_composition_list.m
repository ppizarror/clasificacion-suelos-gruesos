function composition_list = get_composition_list( granulometry_table )
%GET_COMPOSITION_LIST Retorna la lista de composici�n de gravas, finos y
%arenas para una tabla granulom�trica.
%
%   COMPOSITION_LIST=GET_COMPOSITION_LIST(GRANULOMETRY_TABLE) retorna la
%   lista de composici�n [gravas, arena, fino) a partir de una tabla de
%   granulometr�a retornada de la funcip�n create_granulometry_table.

    decr = true; % Indica que se decrece en n�mero de malla
    
    % Se obtiene el total de gravas
    try
        total_gravel = 0;
        for i=1:length(granulometry_table)-1
            if granulometry_table{i}(1) < granulometry_table{i+1}(1)
                decr=false;
            end
            total_gravel = total_gravel + granulometry_table{i}(4);
            if and(granulometry_table{i+1}(1)>4, ~decr);
                break
            end
        end
    catch
        disp('Error when calculating total gravel in granulometry table.');
    end
    
    % Se pobtiene el total de arenas
    try
        total_f = 0;
        for i=1:length(granulometry_table)
            if or(granulometry_table{i}(1)>200,granulometry_table{i}(1)==0) 
                total_f = total_f + granulometry_table{i}(4);
            end
        end
    catch
        error('Error when calculating total sand in granulometry table.');
    end
    
    % Se calcula el total de finos
    total_sand = 100 - (total_f + total_gravel);
    
    % Se retorna la lista
    composition_list = [total_gravel, total_sand, total_f];

end

