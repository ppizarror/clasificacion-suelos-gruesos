# Clasificación de suelos gruesos
Esta libreria de **Matlab** permite obtener la clasificación de un suelo grueso en base a una serie de parametros como pueden ser el porcentaje de fino en una muestra, las cantidades de *Cu* y *Cc*, el nombre del fino y el símbolo del grupo.

## Cómo usar
Para usar esta librería debe ejecutar los siguientes pasos:

Generar los archivos binarios para clasificar los suelos, para ello ejecute la siguiente comando en la terminal de Matlab.
```matlab
generate_groupnames
```

Una vez hecho lo anterior se pueden obtener las clasificaciones de las gravas con la función `get_gravel_classification` y la arena con la función `get_sand_classification`.

