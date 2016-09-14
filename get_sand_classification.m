function c = get_sand_classification( pfines, cu, cc, fines, gsymbol, pgravel )
%GET_SAND_CLASSIFICATION Retorna la clasificaci�n de la arena.
%   C = GET_SAND_CLASSIFICATION(PFINES, CU, CC, FINES, GSYMBOL, PSAND)
%   retorna la clasificaci�n de la arena con PFINES porcentaje de finos, CU
%   y CC cantidades de Cu y Cc respectivamente, tipo de finos FINES,
%   s�mbolo de grupo GSYMBOL y porcentaje de grava PGRAVEL.
%
%   PFINES: N�mero entre 0 y 100 [%].
%   CU: N�mero entre 0 y 100.
%   CC: N�mero entre 0 y 100.
%   FINES: String (ML, MH, CL-CH, CL-ML, CL-CH, CL-ML).
%   GSYMBOL: String.
%   PGRAVEL: N�mero entre 0 y 100 [%].

    % Se obtienen los �ndices seg�n los par�metros de la clasificaci�n
    f = indx_fines_p(pfines);
    cucc = indx_cucc(cu, cc, 1);
    tf = indx_fines_n(fines);
    gs = indx_group_symbol(gsymbol, 1);
    ps = indx_sg_percentage(pgravel, 0);
    t_prop = [f, cucc, tf, gs, ps];
    
    % Se carga la lista de grupos para las gravas
    sand_list = load('sand_groupname.mat');
    sand_list = sand_list.list;
    sand_list_size = length(sand_list);
    
    % Se busca el elemento en la lista
    for i=1:sand_list_size
        propr = sand_list{i,1}; % Se obtienen las propiedades del grupo
        if isequal(t_prop, propr)
            c = sand_list{i,2};
            return
        end
    end
    
    % Si no se encuentra se lanza error
    error('Sand classification does not exist');

end

