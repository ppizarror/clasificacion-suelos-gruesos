function list = groupname_creator(n)
%GROUPNAME_CREATOR Funci�n que retorna una estructura tipo cell para
%almacenar los tipos de suelos.
%   LIST = GROUPNAME_CREATOR(N) crea una lista de tama�o N.

    list = cell(n,1);
    for j=1:n
        list{j}=cell(1,2);
    end

end

