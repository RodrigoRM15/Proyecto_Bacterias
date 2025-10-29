################################################################################
#Nombre del script: Proyecto de informatica 
#Autor: Ramos Morales Rodrigo, Primero Rivera Miguel Angel
#Proposito:
#Fecha: 28/10/2025
#Datos de contacto:ramos.morales.rodrigo2@gmail.com
#Notas:

################################################################################
#Primero cargamos las librerias que vamos a utilizar 
library(dplyr)
library(tidyverse)

#Ahora cargamos la base de datos que pasamos a csv para leerlo de mejor manera 
data_bacterias <- read.csv("base de datos bacterias.csv")

#Ya con la base de datos vamos a hacer un data frame filtrando los datos que vamos a utilizar 
tabla1 <- select(data_bacterias, CollectionDepth, SampleDate, DW_AnalyteName,LocationCode, Result, Unit)

#Inspeccionamos la nueva base de datos filtrada 
summary(tabla1)

#Ahora vamos a omitir todos los NA´s
tabla_na <- na.omit(tabla1)
summary(tabla_na)

class(tabla_na$Result)

#Ahora vamos a filtrar algunas observaciones siguiendo el criterio del año 

filter(tabla_na,
       DW_AnalyteName == "Coliform, Fecal")


























































































