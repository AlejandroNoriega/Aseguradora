#Proyecto 1

#codigo para pasar los datos del csv al proyecto

setwd("/home/nori/aseguradora") #Carpeta
  my_data<-read.table("CSVTEXTO",header = T )

#' Model Aseguradora
#'
#' @param data base de datos
#'
#' @return
#' @export
#'
#' @examples
#' tablas(my_data)
tablas<-function(data){
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  library(ggplot2)
#  head(my_data)
#
#  #Histogramas de variables
#  library(plotly)
#  library(dplyr)
#  library(corrplot)
#  plot_ly(x=~my_data$Kilometres, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Kilometros", xaxis=list(title="Kilometros"), yaxis=list(title="observaciones"))
#
#  plot_ly(x=~my_data$Zone, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Municipio ", xaxis=list(title="Municipio"), yaxis=list(title="observaciones"))
#
#  plot_ly(x=~my_data$Bonus, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Bono ", xaxis=list(title="Bono"), yaxis=list(title="observaciones"))
#
#  plot_ly(x=~my_data$Make, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Modelo ", xaxis=list(title="Modelo"), yaxis=list(title="observaciones"))
#
#
#  plot_ly(x=~my_data$Insured, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Asegurados ", xaxis=list(title="Asegurados"), yaxis=list(title="observaciones"))
#
#  plot_ly(x=~my_data$Claims, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Reclamaciones", xaxis=list(title="Reclamaciones"), yaxis=list(title="observaciones"))
#
#  plot_ly(x=~my_data$Payment, type="histogram", histnorm="probability") %>%
#    layout(title="Histograma de Pagos ", xaxis=list(title="Pagos"), yaxis=list(title="observaciones"))
#  ########################
#
#  #Codigo para hacer la tabla de frequencias relativas para
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data %>%
#    group_by(Kilometres)%>%
#    summarise(n=n())%>%
#    mutate(FR = n/sum(n))
#  ##########################
#
#
#  #Codigo para sumatorias por Kilometros (2.1)
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Kilometres)%>%
#    summarize(sum_asegurados=sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x = Kilometres, y = sum_asegurados))+geom_bar(stat = "identity",fill="Red"))
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Kilometres)%>%
#    summarize(sum_Reclamaciones=sum(Claims))
#  ggplotly(ggplot(data = my_data, aes(x = Kilometres, y = sum_Reclamaciones)) +geom_bar(stat = "identity",fill="blue"))
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Kilometres)%>%
#    summarize(sum_Pagos=sum(Payment))
#  ggplotly(ggplot(data = my_data, aes(x = Kilometres, y = sum_Pagos)) +geom_bar(stat = "identity",fill="green"))
#
#  #Sumatorias por municipio (2.2)
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Zone)%>%
#    summarize(sum_Asegurados=sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x =Zone, y = sum_Asegurados)) + geom_bar(stat = "identity",fill="purple"))
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Zone)%>%
#    summarize(Sum_reclamaciones=sum(Claims))
#  ggplotly(ggplot(data = my_data, aes(x =Zone, y = Sum_reclamaciones)) +geom_bar(stat = "identity",fill="Black"))
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Zone)%>%
#    summarize(Sum_pagos=sum(Payment))
#  ggplotly(ggplot(data = my_data, aes(x =Zone, y = Sum_pagos)) +geom_bar(stat = "identity",fill="Grey"))
#
#  #Sumatorias por Modelo (2.3)
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Make)%>%
#    summarize(Sum_ASegurados=sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x =Make, y = Sum_ASegurados)) +geom_bar(stat = "identity",fill="#2F9762"))
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Make)%>%
#    summarize(Sum_REclamaciones=sum(Claims))
#  ggplotly(ggplot(data = my_data, aes(x =Make, y = Sum_REclamaciones)) +geom_bar(stat = "identity",fill="#F95692")+
#             labs(title="Reclamaciones por Modelo",x="Modelo", y = "Suma de reclamaciones")+
#             theme_classic())
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Make)%>%
#    summarize(Sum_PAGOS=sum(Payment))
#  ggplotly(ggplot(data = my_data, aes(x =Make, y = Sum_PAGOS)) +
#             geom_bar(stat = "identity",fill="#2FFFDD")+
#             labs(title="Pagos por modelo",x="Modelo", y = "Suma de pagos")+
#             theme_classic())
#
#  #Matriz de correlacion (3)
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  M<-cor(my_data)
#  head(round(M,2))
#  corrplot(M, method="number")
#
#
#  plot_ly(data = my_data, x = ~Insured, y = ~Claims)
#
#  plot_ly(data = my_data, x = ~Insured, y = ~Payment)
#
#  plot_ly(data = my_data, x = ~Claims, y = ~Payment )
#
#  #Prueba P (4)
#
#  mod <- lm(formula = Payment~., data = my_data)
#
#  summary(mod)
#
#  ggplotly(ggplot(data=my_data, aes(x=Kilometres,y=Payment))+scale_y_continuous(labels = scales::dollar)+
#             geom_smooth(color="red",alpha=.6)+geom_point(color="blue",alpha=.65)+labs(title="Gráfico de dispersión",x="Kilometros",y="Pagos"))
#
#  ggplotly(ggplot(data=my_data, aes(x=Zone,y=Payment))+scale_y_continuous(labels = scales::dollar)+
#             geom_smooth(color="red",alpha=.6)+geom_point(color="blue",alpha=.65)+labs(title="Gráfico de dispersión",x="Municipio",y="Pagos"))
#
#  ggplotly(ggplot(data=my_data, aes(x=Insured,y=Payment))+scale_y_continuous(labels = scales::dollar)+
#             geom_smooth(color="red",alpha=.6)+geom_point(color="blue",alpha=.65)+labs(title="Gráfico de dispersión",x="Asegurados",y="Pagos"))
#
#  ggplotly(ggplot(data=my_data, aes(x=Claims,y=Payment))+scale_y_continuous(labels = scales::dollar)+
#             geom_smooth(color="red",alpha=.6)+geom_point(color="blue",alpha=.65)+labs(title="Gráfico de dispersión",x="Reclamoaciones",y="Pagos"))
#
#
#  #Calculo de tarifas especiales (5)
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Zone)%>%
#    summarize(Pago_especial=sum(Payment)/sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x =Zone, y =Pago_especial )) +
#             geom_bar(stat = "identity",fill="#C6A689")+labs(title="Pago especial por Municipio ",x="Municipio", y = "Pago especial")+
#             theme_classic() )
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Kilometres)%>%
#    summarize(Pago_Especial=sum(Payment)/sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x =Kilometres, y =Pago_Especial )) +
#             geom_bar(stat = "identity",fill="#C33586")+
#             labs(title="Pago especial por kilometros",x="Kilometros", y = "Pago especial ")
#           + theme_classic() )
#
#  setwd("/home/nori/aseguradora") #Carpeta
#  my_data<-read.table("CSVTEXTO",header = T )#Selecionar Doc
#  my_data <- my_data %>%
#    group_by(Bonus)%>%
#    summarize(Pago_ESpecial=sum(Payment)/sum(Insured))
#  ggplotly(ggplot(data = my_data, aes(x =Bonus, y =Pago_ESpecial )) +
#             geom_bar(stat = "identity",fill="#958AAB")+
#             labs(title="Pago especial por Bono",x="Bono", y = "Pago Especial" )
#           + theme_classic())
}
