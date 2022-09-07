# Angel Siachoque
# Update: 07/09/2022

##limpiar el entorno
rm(list=ls())

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # función tabyl: frecuencias relativas
       dplyr) # contiene conjuntos de datos.

##Importar datos
data_csv = import(file="input/datos_censo.csv" , skip=6 , encoding="UTF-8")
data_xls = import(file="input/datos_excel.xlsx" , skip=9)

##Exportar datos
export(x=data_csv, file="output/data_csv.csv")
export(x=data_xls , file="output/data_excel.xlsx")
export(x=data_xls , file="output/data_r.rds")

##Convertir datos
convert(in_file = "input/datos_censo.csv" , out_file="output/datos_covert.rds")

##Explorar un conjunto de datos
data(package="dplyr")


##obtener datos
db = as_tibble(x = starwars)

##ver datos
head(x=db, n=5)
tail(db)

##obtener estructura
str(db)
skim(db)

##Renombrar
db = rename(.data = db , weigth=mass , height_cm=height)
df=select_all(.tbl=db , toupper)
