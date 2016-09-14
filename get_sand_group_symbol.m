function c = get_sand_group_symbol( pfines, cu, cc, fines)
%GET_SAND_GROUP_SYMBOL Retorna el s�mbolo del grupo de la grava.
%   C = GET_SAND_GROUP_SYMBOL(PFINES, CU, CC, FINES) retorna el s�mbolo
%   del grupo de la arena con PFINES porcentaje de finos, CU
%   y CC cantidades de Cu y Cc respectivamente y tipo de finos FINES.
%
%   PFINES: N�mero entre 0 y 100 [%].
%   CU: N�mero entre 0 y 100.
%   CC: N�mero entre 0 y 100.
%   FINES: String (ML, MH, CL-CH, CL-ML, CL-CH, CL-ML).

    % Se obtienen los �ndices seg�n los par�metros de la clasificaci�n
    f = indx_fines_p(pfines);
    cucc = indx_cucc(cu, cc, 1);
    tf = indx_fines_n(fines);
    t_prop = [f, cucc, tf, -1, -1];
    
    % Se carga la lista de grupos para las gravas
    try
        sand_list = load('sand_groupname.mat');
    catch ME
        error('Gravel group does not exist, please execute the following command: generate_groupnames');
    end
    sand_list = sand_list.list;
    sand_list_size = length(sand_list);
    
    % Se busca el elemento en la lista
    for i=1:sand_list_size
        propr = sand_list{i,1}; % Se obtienen las propiedades del grupo
        if isequal_gs(t_prop, propr)
            indx = sand_list{i,1};
            indx = indx(4);
            c = symbol_group_indx(indx);
            return
        end
    end
    
    % Si no se encuentra se lanza error
    error('Sand classification (group symbol) does not exist');

end

