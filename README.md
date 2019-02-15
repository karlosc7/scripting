# scripting
En este repositorio encontrarás ejemplos básicos de scripting con bash y batch
# ¿qué debes saber? :books:
Un script es un programa almacenado como texto plano. Estos lenguajes son interpretados, esto quiere decir que son lenguajes de consola de comandos y el sistema interpreta sus instrucciones.

# Índice :mag:
  - [Introducción](#introduccion)
  - [Introducción](#Primera-linea-de-nuestro-programa)
  - [Sintaxis](#sintaxis)
  - [Interfaz](#interfaz)
  - [Links](#links)
  
## Introducción  

## Primera línea de nuestro programa

Esto es lo primero que debemos escribir en el encabezamiento para que lo identifique nuestro sistema (Linux)
#!/bin/bash ; #!/bin/ksh ; #!/bin/csh


## Sintaxis

Los guiones de Bash reciben los argumentos que le pasa la shell como $1, $2, ..., $n. Se puede obtener el número total de argumentos con el símbolo $#.

Sentencias secuenciales

 if [ $# -lt 2 ]; then
   echo "Necesitas pasar dos argumentos."
   exit 1
 fi
 
Sentencias iterativas

  for arg in "$@"
  do
    echo "$arg"
  done
  
  
Operaciones matemáticas con enteros

Realizar cálculos con enteros utilizando la orden ((...)) y la sintaxis de variables $[...] de la siguiente manera:

 VAR=55             # Asigna el valor entero 55 a la variable VAR.
 ((VAR = VAR + 1))  # Suma uno a la variable VAR.  Observe la ausencia del carácter '$'.
 ((++VAR))          # Otra forma de sumar uno a VAR.  Preincremento estilo C.
 ((VAR++))          # Otra forma de sumar uno a VAR.  Postincremento estilo C.
 echo $[VAR * 22]   # Multiplica la variable VAR por 22 y sustituye la orden por el resultado.
 echo $((VAR * 22)) # Otra forma de realizar lo mismo.
 
La orden ((...)) también se puede utilizar en sentencias condicionales, ya que su código de retorno es 0 o 1 dependiendo de si la condición es cierta o falsa:

 if ((VAR == Y * 3 + X * 2))
 then
         echo Si
 fi
 
 ((Z > 23)) && echo Si
La orden ((...)) soporta los siguientes operadores relacionales: '==', '!=', '>', '<', '>=', y '<='.

Un proceso Bash no puede realizar cálculos en coma flotante. Las únicas shell Unix capaces de esto son Korn Shell (versión de 1993) y zsh (a partir de la versión 4.0).

Redirecciones de entrada/salida
La sintaxis de Bash permite diferentes formas de redirección de entrada/salida de las que la shell Bourne tradicional carece. Bash puede redirigir la salida estándar y los flujos de error estándar a la vez utilizando la sintaxis:

 orden >& archivo
que es más simple que teclear la orden Bourne equivalente, "orden > archivo 2>&1". Desde la versión 2.05b, Bash puede redirigir la entrada estándar desde una cadena utilizando la siguiente sintaxis (denominada "here strings"):

 orden <<< "cadena a leer como entrada estándar"
Si la cadena contiene espacios en blanco, deben utilizarse comillas.

Ejemplo: Redirige la salida estándar a un archivo, escribe datos, cierra el archivo y reinicia stdout

 # hace que el descriptor de archivo 6 sea una copia de stdout (descriptor archivo 1)
 exec 6>&1
 # abre el archivo "test.data" para escritura
 exec 1>test.data
 # genera algún contenido
 echo "data:data:data"
 # recupera stdout original, al hacer que sea una copia del descriptor de archivo 6
 exec 1>&6
 # cierra el descriptor de archivo 6
 exec 6>&-
Abre y cierra archivos

 # abre el archivo test.data para lectura
 exec 6<test.data
 # lee hasta el final del archivo
 while read -u 6 dta
 do
   echo "$dta" 
 done
 # cierra el archivo test.data
 exec 6<&-
Captura la salida de órdenes externas

  # ejecuta 'find' y guarda los resultados en VAR
  # busca nombres de archivos que terminan con la letra "h"
  VAR=$(find . -name "*h")
Expresiones regulares
Los procesos Bash 3.0 soportan emparejamiento de expresiones regulares utilizando la siguiente sintaxis, reminiscente de Perl:

[[ string =~ regex]]
La sintaxis de expresiones regulares es la misma que documenta la página de manual regex(3). El estado de salida de la orden anterior es 0 si la cadena concuerda con la expresión regular, y 1 si no coinciden. En las expresiones regulares puede accederse a las partes delimitadas por paréntesis, utilizando la variable shell BASH_REMATCH, de la siguiente manera:

 if [[ foobarbletch =~ 'foo(bar)bl(.*)']] 
 then
         echo The regex matches!
         echo $BASH_REMATCH      -- outputs: foobarbletch
         echo ${BASH_REMATCH[1]} -- outputs: bar
         echo ${BASH_REMATCH[2]} -- outputs: etch
 fi


## Programador

* Carlos del Cerro Tenorio

![GitHub esquema](/src/Img/esquemaFinal.png)

 
 ## Interfaz

 
 ## Links

   
   :tm: TEAM : Carlos. ASIR UEM
   
   :copyright: GPL
