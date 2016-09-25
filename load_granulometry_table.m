function table = load_granulometry_table( file )
%LOAD_GRANULOMETRY_TABLE Retorna una tabla cargada a partir de un archivo.
%   LIST = LOAD_GRANULOMETRY_TABLE(FILE) carga el archivo file y retorna una
%   tabla granulom�trica.
%
%   file: String con la ubicaci�n del archivo a cargar.

    table = create_granulometry_table(load_granulometry_data(file));

end

