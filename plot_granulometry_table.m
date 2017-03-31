function plot_granulometry_table( granulometry_table, diameter_scale )
%PLOT_GRANULOMETRY_TABLE plotea el gr�fico de la granulometr�a a partir de
%una tabla granulom�trica retornada por create_granulometry_table.
%
%   granulometry_table: Tabla granulom�trica resultante de
%   create_granulometry_table.
%   diameter_scale: Escala del eje x (eje del di�metro).

    set(gcf, 'renderer', 'opengl')
    lng = length(granulometry_table);
    x = 1:lng-1;
    y = 1:lng-1;
    
    for i=1:lng-1
        x(i)=granulometry_table{i}(2);
        y(i)=granulometry_table{i}(6);
    end
   
    semilogx(x,y, '-s', 'color', [0.5 0.5 0.5],'LineWidth', 2, 'MarkerFaceColor', [.5 .5 .5], 'MarkerSize',5);
    ylim([0, 100]);
    grid
    xlabel(['Tama�o de part�cula [', diameter_scale, ']']);
    ylabel('Porcentaje que pasa Pi [%]');
    title('Curva granulom�trica');

end

