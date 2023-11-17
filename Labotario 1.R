#Practica 
epa_http <- read.csv("./epa-http.csv", header = FALSE, sep = " ", encoding = "UTF-8")

library(readr)
epa_http <- read_table("epa-http.csv", col_names = FALSE)
View(epa_http)

colnames(epa_http) <- c("IP", "Tiempo", "Tipo", "URL", "Protocolo", "Codigo", "Bytes")

epa_http$Bytes <- as.numeric(epa_http$Bytes)

mean(epa_http$Bytes, na.rm = TRUE)


Peticion <- filter(epa_http, grepl("get", Tipo,ignore.case = TRUE),)
unique(Peticion$Tipo)
unique(str_sub(Peticion$Tiempo,start = 5, end = 6))



horas_get <- table(peticiones$tiempo)
hora_max <- which.max(horas_get)


#Pregunta 1.1: dimensiones data frame
dim(epa_http)


#Pregunta 1.2: Valor medio de la columna Bytes
mean(epa_http$Bytes, na.rm = TRUE)

#Pregunta 2: De las diferentes IPs de origen accediendo al servidor, ¿cuantas pertenecen a una IP claramente educativa (que contenga ".edu")?


#Pregunta 3: De todas las peticiones recibidas por el servidor cual es la hora en la que hay mayor volumen de peticiones HTTP de tipo "GET"?