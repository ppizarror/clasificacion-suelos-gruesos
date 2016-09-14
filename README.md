# Clasificación de suelos gruesos
Esta libreria de **Matlab** permite obtener la clasificación de un suelo grueso en base a una serie de parametros como pueden ser el porcentaje de fino en una muestra, los valores del coeficiente de uniformidad *Cu* y coeficiente de forma *Cc*, el nombre del fino y el símbolo del grupo.

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
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    psand: Porcentaje de arena en el suelo, entre 0 y 100.
```

```matlab
>>> get_sand_group_name( pfines, cu, cc, fines, pgravel )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    pgravel: Porcentaje de grava en el suelo, entre 0 y 100.
```

```matlab
>>> get_sand_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
```

```matlab
>>> get_gravel_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
```

## Ejemplos
- Obtener nombre de grupo de una grava con 8% de finos y 15% de arena, Cu=7 y Cc=2.4, el fino es ML:

    >```matlab
       >>>> get_gravel_group_name(8, 7, 2.4, 'ML', 15)
    ans = Well-graded gravel with silt and sand
    ```

- Obtener nombre de grupo de una grava con 4% de finos y 13% de arena, Cu=2 y Cc=0.8, no tiene fino.

    >```matlab
       >>>> get_gravel_group_name(4, 2, 0.8, '', 13)
    ans = Poorly graded gravel
    ```
 
- Obtener nombre de grupo de una grava con 25% de finos, sin Cu o Cc, con fino CL-ML y 19% de arena:

    >```matlab
       >>>> get_gravel_group_name(25, 0, 0, 'CL-ML', 19)
    ans = Silty, clayey gravel with sand
    ```

- Obtener símbolo de grupo de una grava con 2% de finos, Cu=8.5 y Cc=1.2, sin fino definido:

    >```matlab
       >>>> get_gravel_group_symbol(2, 8.5, 1.2, '')
    ans = GW    
    ```

- Obtener símbolo de grupo de una grava con 9.9% de finos, Cu=1.1 y Cc=6.6, con fino CL-CH:

    >```matlab
       >>>> get_gravel_group_symbol(9.9, 1.1, 6.6, 'CL-CH')
    ans = GP-GC    
    ```

- Obtener nombre de grupo de una arena con 30% de finos y 3% de grava, Cu y Cc sin definir, el fino es CL:

    >```matlab
       >>>> get_sand_group_name(30, 0, 0, 'CL', 3)
    ans = Clayey sand

- Obtener nombre de grupo de una arena con 3% de finos y 44% de grava, Cu=10 y Cc=1.5, fino sin definir:

    >```matlab
       >>>> get_sand_group_name(3, 10, 1.5, '', 44)
    ans = Well-graded sand with gravel

- Obtener nombre de grupo de una arena con 7% de finos y 3% de grava, Cu=4 y Cc=0.98, fino MH:

    >```matlab
       >>>> get_sand_group_name(7, 4, 0.98, 'MH', 3)
    ans = Poorly graded sand with silt
  
- Obtener símbolo de grupo de una arena con 7% de finos, Cu=4 y Cc=0.98, fino MH:

    >```matlab
       >>>> get_sand_group_symbol(7, 4, 0.98, 'MH')
    ans = SP-SM
    
## Autor
Pablo Pizarro, 2016.

Si tienes alguna sugerencia envíame un correo a: [pablo.pizarro@ing.uchile.cl](mailto:pablo.pizarro@ing.uchile.cl), o sencillamente ten la libertad de enviar un _pull request_.
    
