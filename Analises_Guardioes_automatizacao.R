# CARREGAR PACOTES ----

rm(list=ls()) #limpar o ambiente de trabalho antes de começa

if (!require("pacman")) install.packages("pacman") # garantie qu eo pacman está instalado

pacman::p_load(tidyverse, kableExtra) # Carregar os pacotes 


# LER A BASE ----

dados_bruto<-read_csv2("Usuarios19_06.csv")

# MANIPULAR DADOS ----

# FAZER GRÁFICO ----

graf_genero<-dados_bruto %>%
  ggplot() +
  geom_bar(aes(x=gender, y=..prop.., group=1))
  



