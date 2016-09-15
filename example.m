%% Example
% Contiene ejemplos de uso para utilizar las funciones de la librería.

%% Cargar un archivo de datos granulométricos
% Llama a la función load_granulometry_data para retornar una estructura
% tipo cell la cual almacena la lista de valores para cada malla, diámetro
% y material retenido.
granulometry_data = load_granulometry_data('example_data.txt'); %#ok<*NASGU>

%% Crear una tabla granulométrica
% A partir de los datos granulométricos cargados se puede crear la tabla
% granulométrica la cual contiene el porcentaje de material retenido, el
% material acumulado y el porcentaje que pasa.
data = load_granulometry_data('example_data.txt');

granulometry_table = create_granulometry_table(data);

%% Imprimir en consola la tabla granulométrica
% Para poder visualizar los contenidos de la tabla granulométrica se puede
% utilizar la función print_cell_table.
granulometry_table = create_granulometry_table(data);

print_cell_table(granulometry_table);

%% Obtener la cantidad de gravas, finos y arena a partir de una tabla granulométrica
% Para obtener la cantidad relativa de gravas, finos y arenas a partir de
% una tabla granulométrica se debe utilizar la función get_composition_list.
table = create_granulometry_table(data);

composition = get_composition_list(table);

fprintf('Gravel [%s]: %f\n', '%', composition(1));
fprintf('Sand [%s]: %f\n', '%', composition(2));
fprintf('Fines [%s]: %f\n', '%', composition(3));

%% Obtener los valores D10, D30, D60, Dn
% Para obtener estos valores se debe usar la función calculate_d a partir
% de una tabla granulométrica.
table = create_granulometry_table(data);

d10 = calculate_d(table, 10);
d30 = calculate_d(table, 30);
d60 = calculate_d(table, 60);

fprintf('D10: %f\n', d10);
fprintf('D30: %f\n', d30);
fprintf('D60: %f\n', d60);

%% Obtener los parámetros Cc (coeficiente de forma) y Cu (coeficiente de uniformidad)
% Para obtener estos valores se deben usar las funciones calculate_cc y
% calculate_cu a partir de una tabla granulométrica.
table = create_granulometry_table(data);

cc = calculate_cc(table);
cu = calculate_cu(table);

fprintf('Cc: %f\n', cc);
fprintf('Cu: %f\n', cu);

%% Plotear una curva granulométrica
% Para plotear una curva granulométrica se debe utilizar la función
% plot_granulometric_table a partir de una tabla granulométrica.
table = create_granulometry_table(data);

plot_granulometry_table(table, 'mm');

%% Obtener el nombre de grupo de un suelo (clasificación)
% Obtener el nombre de grupo de un suelo se debe utilizar la función
% get_classification_groupname a partir de una tabla granulométrica y el
% tipo de finos.
table = create_granulometry_table(data);

name = get_classification_groupname(table, 'ML');
fprintf('Group name: %s.\n', name);

% Además se puede consultar el nombre del grupo tanto de una grava o arena
% pasando por argumento el porcentaje de finos, los valores del coeficiente
% del coeficiente de uniformidad y de curvatura y el tipo de finos.

%   Obtener nombre de grupo de una grava con 8% de finos y 15% de arena, Cu=7
%   y Cc=2.4, el fino es ML:
name = get_gravel_group_name(8, 7, 2.4, 'ML', 15);
fprintf('\tOther gravel group name: %s.\n', name);

%   Obtener nombre de grupo de una arena con 30% de finos y 3% de grava, Cu
%   y Cc sin definir, el fino es CL:
name = get_sand_group_name(30, 0, 0, 'CL', 3);
fprintf('\tOther sand group name: %s.\n', name);

%% Obtener el símbolo de grupo de un suelo (clasificación)
% Obtener el símbolo de grupo de un suelo se debe utilizar la función
% get_classification_groupsymbol a partir de una tabla granulométrica y el
% tipo de finos.
table = create_granulometry_table(data);

symbol = get_classification_groupsymbol(table, 'ML');
fprintf('Group symbol: %s.\n', symbol);

% Para consultar el símbolo del grupo de una grava o arena se deben
% utilizar las funciones get_gravel_group_symbol y get_sand_group_symbol
% pasando por argumento el porcentaje de finos y los valores del
% coeficiente de uniformidad y curvatura.

%   Obtener símbolo de grupo de una grava con 2% de finos, Cu=8.5 y Cc=1.2,
%   sin fino definido:
symbol = get_gravel_group_symbol(2, 8.5, 1.2, '');
fprintf('\tOther gravel group symbol: %s.\n', symbol);

%   Obtener símbolo de grupo de una arena con 7% de finos, Cu=4 y Cc=0.98,
%   fino MH:
symbol = get_sand_group_symbol(7, 4, 0.98, 'MH');
fprintf('\tOther sand group symbol: %s.\n', symbol);
