function c = get_gravel_classification( pfines, cu, cc, fines, gsymbol, psand )
%GET_GRAVEL_CLASSIFICATION Retorna la clasificación de la grava.
%   C = GET_GRAVEL_CLASSIFICATION(PFINES, CU, CC, FINES, GSYMBOL, PSAND)
%   retorna la clasificación de la grava con PFINES porcentaje de finos, CU
%   y CC cantidades de Cu y Cc respectivamente, tipo de finos FINES,
%   símbolo de grupo GSYMBOL y porcentaje de arena PSAND.
%
%   PFINES: Número entre 0 y 100 [%].
%   CU: Número entre 0 y 100.
%   CC: Número entre 0 y 100.
%   FINES: String (ML, MH, CL-CH, CL-ML, CL-CH, CL-ML).
%   GSYMBOL: String.
%   PSAND: Número entre 0 y 100 [%].

    % Se obtienen los índices según los parámetros de la clasificación
    f = indx_fines_p(pfines);
    cucc = indx_cucc(cu, cc, 0);
    tf = indx_fines_n(fines);
    gs = indx_group_symbol(gsymbol, 0);
    ps = indx_sg_percentage(psand, 1);
    t_prop = [f, cucc, tf, gs, ps];
    
    % Se carga la lista de grupos para las gravas
    gravel_list = load('gravel_groupname.mat');
    gravel_list = gravel_list.list;
    gravel_list_size = length(gravel_list);
    
    % Se busca el elemento en la lista
    for i=1:gravel_list_size
        propr = gravel_list{i,1}; % Se obtienen las propiedades del grupo
        if isequal(t_prop, propr)
            c = gravel_list{i,2};
            return
        end
    end
    
    % Si no se encuentra se lanza error
    error('Gravel classification does not exist');

end

