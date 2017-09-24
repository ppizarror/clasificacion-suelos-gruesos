Esta libreria de **Matlab** permite obtener la clasificación de un suelo grueso a partir de una tabla granulométrica, la cual es cargada desde un archivo, o bien a partir de una serie de parametros como son el porcentaje de fino en una muestra, los valores del coeficiente de uniformidad *Cu* y coeficiente de forma *Cc*, el nombre del fino y el símbolo del grupo.

## Antes de partir
Una vez que descargue esta libreria tiene que abrir con **Matlab** la carpeta descargada, luego, debe ejecutar el siguiente comando en consola:
```matlab
>>> generate_groupnames
```

Esta función creará los archivos binarios *gravel_groupname.mat* y *sand_groupname.mat* los cuales contendrán listas con las tablas de clasificación para poder ejecutar el resto de las funciones del programa.

## Funciones disponibles

Una vez que los archivos *gravel_groupname.mat* y *sand_groupname.mat* hayan sido creados puede hacer uso de las funciones del programa.

Las funciones disponibles son las siguientes:

+ <a href="#function1">```load_granulometry_data```</a>: Cargar un archivo de datos granulométricos.
+ <a href="#function2">```create_granulometry_table```</a>: Crear una tabla granulométrica.
+ <a href="#function22">```load_granulometry_table```</a>: Crear una tabla granulométrica a partir de un archivo de datos granulométricos.
+ <a href="#function3">```print_cell_table```</a>: Imprimir en consola la tabla granulométrica.
+ <a href="#function4">```get_composition_list```</a>: Obtener la cantidad de gravas, finos y arena de una tabla granulométrica.
+ <a href="#function5">```calculate_d```</a>: Obtener los valores D10, D30, D60, Dn.
+ <a href="#function6">```calculate_cc```</a>: Calcular el parametro del coeficiente de forma a partir de una tabla ranulométrica.
+ <a href="#function7">```calculate_cu```</a>: Calcular el parametro del coeficiente de uniformidad a partir de una tabla granulométrica.
+ <a href="#function8">```plot_granulometry_table```</a>: Plotear una curva granulométrica.
+ <a href="#function9">```get_classification_groupname```</a>: Obtener el nombre de grupo de un suelo (clasificación) a partir de una tabla granulométrica.
+ <a href="#function10">```get_gravel_group_name```</a>: Obtener el nombre de grupo de una grava a partir de una serie de parámetros.
+ <a href="#function11">```get_sand_group_name```</a>: Obtener el nombre de grupo de una arena a partir de una serie de parámetros.
+ <a href="#function12">```get_classification_groupsymbol```</a>: Obtener el símbolo de grupo de un suelo (clasificación) a partir de una tabla granulométrica.
+ <a href="#function13">```get_gravel_group_symbol```</a>: Obtener el simbolo de grupo de una grava a partir de una serie de parámetros.
+ <a href="#function14">```get_sand_group_symbol```</a>: Obtener el simbolo de grupo de una arena a partir de una serie de parámetros.

### Detalles de las funciones
<a id="function1"></a>
```matlab
>>> load_granulometry_data( file )
    file: String con la ubicación del archivo a cargar.
    
    Retorna: Lista con los valores cargados y parseados a números.
```

<a id="function2"></a>
```matlab
>>> create_granulometry_table( data )
    data: Datos granulométricos resultantes de la función load_granulometry_data.
    
    Retorna: Tabla granulométrica usada por la mayoría de las funciones.
```

<a id="function22"></a>
```matlab
>>> load_granulometry_table( file )
    file: String con la ubicación del archivo a cargar.
    
    Retorna: Tabla granulométrica usada por la mayoría de las funciones.
```

<a id="function3"></a>
```matlab
>>> print_cell_table( c )
    c: Tabla a imprimir.
```

<a id="function4"></a>
```matlab
>>> get_composition_list( granulometry_table )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    
    Retorna: Lista de la forma [gravas, arena, fino]
```

<a id="function5"></a>
```matlab
>>> calculate_d( granulometry_table, n )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    n: Pocentaje que pasa.
    
    Retorna: Valor de D_n.
```

<a id="function6"></a>
```matlab
>>> calculate_cc( granulometry_table )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    
    Retorna: Valor del coeficiente de curvatura.
```

<a id="function7"></a>
```matlab
>>> calculate_cu( granulometry_table )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    
    Retorna: Valor del coeficiente de uniformidad.
```

<a id="function8"></a>
```matlab
>>> plot_granulometry_table( granulometry_table, diameter_scale )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    diameter_scale: Escala del eje x (eje del diámetro).
```

<a id="function9"></a>
```matlab
>>> get_classification_groupname( granulometry_table, fines )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    fines: Nombre del fino, string (ML, MH, CL-CH, CL-ML, CL-CH, CL-ML).

    Retorna: Nombre de grupo del suelo definido por la tabla granulométrica y su respectivo fino.
```

<a id="function10"></a>
```matlab
>>> get_gravel_group_name( pfines, cu, cc, fines, psand )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    psand: Porcentaje de arena en el suelo, entre 0 y 100.
    
    Retorna: Nombre de grupo de una grava definida por los parámetros.
```

<a id="function11"></a>
```matlab
>>> get_sand_group_name( pfines, cu, cc, fines, pgravel )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    pgravel: Porcentaje de grava en el suelo, entre 0 y 100.
    
    Retorna: Nombre de grupo de una arena definida por los parámetros.
```

<a id="function12"></a>
```matlab
>>> get_classification_groupsymbol( granulometry_table, fines )
    granulometry_table: Tabla granulométrica resultante de create_granulometry_table.
    fines: Nombre del fino, string (ML, MH, CL-CH, CL-ML, CL-CH, CL-ML).

    Retorna: Símbolo de grupo del suelo definido por la tabla granulométrica y su respectivo fino.
```

<a id="function13"></a>
```matlab
>>> get_gravel_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    
    Retorna: Símbolo de grupo de una grava definida por los parámetros.
```

<a id="function14"></a>
```matlab
>>> get_sand_group_symbol( pfines, cu, cc, fines )
    pfines: Porcentaje de finos en el suelo, entre 0 y 100.
    cu: Valor del coef. de uniformidad en la muestra, entre 0 y 100.
    cc: Valor del coef. de forma en la muestra, entre 0 y 100.
    fines: Nombre del fino, string.
    
    Retorna: Símbolo de grupo de una arena definida por los parámetros.
```

## Ejemplos
<a id="datos"></a>
- Cargar el archivo de datos granulométricos '<a href="https://github.com/ppizarror/clasificacion-suelos-gruesos/blob/master/example_data.txt">example_data.txt</a>':

    ```matlab
    >>>> data = load_granulometry_data('example_data.txt');
    ```

<a id="tabla_granum"></a>
- Crear una tabla granulométrica a partir de los <a href="#datos">datos cargados</a>.

    ```matlab
    >>>> granulometry_table = create_granulometry_table(data);
    ```
 
- Crear una tabla granulométrica a partir de '<a href="https://github.com/ppizarror/clasificacion-suelos-gruesos/blob/master/example_data.txt">example_data.txt</a>'.

    ```matlab
    >>>> granulometry_table = load_granulometry_table('example_data.txt');
    ```
 
- Imprimir en consola la <a href="tabla_granum">tabla granulométrica</a> cargada:

    ```matlab
    >>>> print_cell_table(granulometry_table);
          1.0000   25.4000    94.0000   10.5870    10.5870   89.4130
          4.0000    4.7500   225.0000    8.1023    18.6892   81.3108
         10.0000    2.0000   750.0000   27.0076    45.6968   54.3032
         20.0000    0.8500   405.0000   14.5841    60.2809   39.7191
         40.0000    0.4250   165.0000    5.9417    66.2225   33.7775
         60.0000    0.2500   189.0000    6.8059    73.0284   26.9716
        100.0000    0.1500   174.0000    6.2658    79.2942   20.7058
        200.0000    0.0750   336.0000   12.0994    91.3936    8.6064
        0           0        239.0000    8.6064   100.0000    0.0000
    ```

- Obtener la cantidad de gravas, finos y arena de una <a href="tabla_granum">tabla granulométrica</a>:

    ```matlab
    >>>> get_composition_list(granulometry_table);
    ans = [18.6892   72.7044    8.6064] 
    ```

- Obtener los valores D10, D30, D60, Dn a partir de la <a href="tabla_granum">tabla granulométrica</a> cargada:

    ```matlab
    >>>> calculate_d(granulometry_table, 10)
    ans = 0.083638 
    
    >>>> calculate_d(granulometry_table, 30)
    ans = 0.327870
    
    >>>> calculate_d(granulometry_table, 60)
    ans = 2.580067   
    ```

- Obtener los parámetros Cc (coef. de forma) y Cu (coef. de uniformidad) a partir de la <a href="tabla_granum">tabla granulométrica</a> cargada:

    ```matlab
    >>>> calculate_cc(granulometry_table)
    ans = 0.498159
    
    >>>> calculate_cu(granulometry_table)
    ans = 30.847875
    ```


- Plotear una <a href="tabla_granum">tabla granulométrica</a> cargada, con escala de diámetro en milímetros (mm):

    ```matlab
    >>>> plot_granulometry_table(granulometry_table, 'mm');
    ```
    ><img src='http://ppizarror.com/resources/images/granulometric-graph.png?raw=true' alt='Curva de distribución' height='35%' align='center'>
    
- Obtener el nombre de grupo de un suelo (clasificación) a partir de la <a href="tabla_granum">tabla granulométrica</a> cargada, con tipo de finos ML:

    ```matlab
    >>>> get_classification_groupname(granulometry_table, 'ML');
    ans = 'Poorly graded sand with silt and gravel'
    ```
    
- Obtener el símbolo de grupo de un suelo (clasificación) a partir de la <a href="tabla_granum">tabla granulométrica</a> cargada, con tipo de finos ML:

    ```matlab
    >>>> get_classification_groupsymbol(table, 'ML');
    ans = 'SP-SM'
    ```

- Obtener nombre de grupo de una grava con 8% de finos y 15% de arena, Cu=7 y Cc=2.4, el fino es ML:

    ```matlab
    >>>> get_gravel_group_name(8, 7, 2.4, 'ML', 15)
    ans = 'Well-graded gravel with silt and sand'
    ```

- Obtener nombre de grupo de una grava con 4% de finos y 13% de arena, Cu=2 y Cc=0.8, no tiene fino:

    ```matlab
    >>>> get_gravel_group_name(4, 2, 0.8, '', 13)
    ans = 'Poorly graded gravel'
    ```
 
- Obtener nombre de grupo de una grava con 25% de finos, sin Cu o Cc, con fino CL-ML y 19% de arena:

    ```matlab
    >>>> get_gravel_group_name(25, 0, 0, 'CL-ML', 19)
    ans = 'Silty, clayey gravel with sand'
    ```
    
- Obtener nombre de grupo de una arena con 3% de finos y 44% de grava, Cu=10 y Cc=1.5, fino sin definir:

    ```matlab
    >>>> get_sand_group_name(3, 10, 1.5, '', 44)
    ans = 'Well-graded sand with gravel'

- Obtener nombre de grupo de una arena con 7% de finos y 3% de grava, Cu=4 y Cc=0.98, fino MH:

    ```matlab
    >>>> get_sand_group_name(7, 4, 0.98, 'MH', 3)
    ans = 'Poorly graded sand with silt'
    

- Obtener nombre de grupo de una arena con 30% de finos y 3% de grava, Cu y Cc sin definir, el fino es CL:

    ```matlab
    >>>> get_sand_group_name(30, 0, 0, 'CL', 3)
    ans = 'Clayey sand'
 

- Obtener símbolo de grupo de una grava con 2% de finos, Cu=8.5 y Cc=1.2, sin fino definido:

    ```matlab
    >>>> get_gravel_group_symbol(2, 8.5, 1.2, '')
    ans = 'GW'   
    ```

- Obtener símbolo de grupo de una grava con 9.9% de finos, Cu=1.1 y Cc=6.6, con fino CL-CH:

    ```matlab
    >>>> get_gravel_group_symbol(9.9, 1.1, 6.6, 'CL-CH')
    ans = 'GP-GC'   
    ```
 
- Obtener símbolo de grupo de una arena con 7% de finos, Cu=4 y Cc=0.98, fino MH:

    ```matlab
    >>>> get_sand_group_symbol(7, 4, 0.98, 'MH')
    ans = 'SP-SM'
    
## Licencia
Este proyecto está licenciado bajo GPLv2 [https://www.gnu.org/licenses/gpl-2.0.html]