# Clasificación de suelos gruesos
Esta libreria de **Matlab** permite obtener la clasificación de un suelo grueso en base a una serie de parametros como pueden ser el porcentaje de fino en una muestra, las cantidades de *Cu* y *Cc*, el nombre del fino y el símbolo del grupo.

## Cómo usar
Para usar esta librería debe ejecutar los siguientes pasos:

Generar los archivos binarios para clasificar los suelos, para ello ejecute solo una vez el siguiente comando en **Matlab**:
```matlab
>>> generate_groupnames
```

Esta función creará los archivos *gravel_groupname.mat* y *sand_groupname.mat* los cuales contendrán listas con valores para poder ser usados en el futuro de forma rápida.

Una vez hecho lo anterior se puede obtener el nombre del grupo de las gravas con la función `get_gravel_group_name` y de las arenas con la función `get_sand_group_name`. Para obtener el símbolo del grupo de las gravas se cuenta con la función `get_gravel_group_symbol` y `get_sand_group_name` para el caso de las arenas.

Dichas funciones requieren de los siguientes parámetros:

```matlab
>>> get_gravel_group_name( pfines, cu, cc, fines, psand )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Cantidad de Cu en la muestra, entre 0 y 100.
    cc: Cantidad de Cc en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    psand: Porcentaje de arena en el suelo, entre 0 y 100.
```

```matlab
>>> get_gravel_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Cantidad de Cu en la muestra, entre 0 y 100.
    cc: Cantidad de Cc en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
```

```matlab
>>> get_sand_group_name( pfines, cu, cc, fines, pgravel )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Cantidad de Cu en la muestra, entre 0 y 100.
    cc: Cantidad de Cc en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    pgravel: Porcentaje de grava en el suelo, entre 0 y 100.
```

```matlab
>>> get_sand_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Cantidad de Cu en la muestra, entre 0 y 100.
    cc: Cantidad de Cc en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
```

## Ejemplos
- Obtener clasificación de una grava con 8% de finos y 15% de arena, Cu=7 y Cc=2.4, el fino es ML y el símbolo del grupo es GW-GM.:

    >```matlab
       >>>> get_gravel_classification(8, 7, 2.4, 'ML', 'GW-GM', 15)
    ans = Well-graded gravel with silt and sand
       
    ```
    
- Obtener clasificación de una grava con 4% de finos y 13% de arena, Cu=2 y Cc=0.8, no tiene fino y el símbolo del grupo es GW:

    >```matlab
       >>>> get_gravel_classification(8, 7, 2.4, 'ML', 'GW-GM', 15)
    ans = Well-graded gravel with silt and sand
       
    ```