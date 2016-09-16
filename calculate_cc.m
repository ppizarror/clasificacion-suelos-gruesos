function cc = calculate_cc( granulometry_table )
%CALCULATE_CC Calcula el coeficiente de forma a partir de una tabla de
%granulometr�a retornada por create_granulometry_table.
%
%   CC = CALCULATE_CC(GRANULOMETRY_TABLE) retorna el valor de coeficiente
%   de forma a partir de una tabla de granulometr�a.
%
%   granulometry_table: Tabla granulom�trica resultante de
%   create_granulometry_table.

    d10 = calculate_d(granulometry_table, 10);
    d30 = calculate_d(granulometry_table, 30);
    d60 = calculate_d(granulometry_table, 60);
    
    try
        cc = d30*d30 / (d10*d60);
    catch
        error('Error when calculating curvature coefficient.');
    end

end

