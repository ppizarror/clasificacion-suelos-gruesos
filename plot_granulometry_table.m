function plot_granulometry_table( granulometry_table, diameter_scale )
%PLOT_GRANULOMETRY_TABLE plotea el gráfico de la granulometría a partir de
%una tabla granulométrica retornada por create_granulometry_table.
%
%   granulometry_table: Tabla granulométrica resultante de
%   create_granulometry_table.
%   diameter_scale: Escala del eje x (eje del diámetro).

    lng = length(granulometry_table);
    x = 1:lng-1;
    y = 1:lng-1;
    
    for i=1:lng-1
        x(i)=granulometry_table{i}(2);
        y(i)=granulometry_table{i}(6);
    end
    
    semilogx(x,y,'-o','LineWidth', 2);
    ylim([0, 100]);
    grid
    xlabel(['Particle diameter [', diameter_scale, ']']);
    ylabel('Volume [%]');
    title('Particle size distribution curve');

end

