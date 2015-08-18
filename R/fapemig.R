# Ler arquivos do Excel extraídos do BO
library(readxl)
rec <- read_excel("data-raw/exec_rec_raw_2015.xlsx")
desp <- read_excel("data-raw/exec_desp_raw_2015.xlsx")

# Cria colunas utilizando funções do pacote relatórios
library(relatorios)
desp$FAPEMIG <- fapemig_desp(desp)
rec$FAPEMIG <- fapemig_rec(rec)

# Calcula valores
vl_fapemig_desp <- sum(desp$VALOR_DESPESA[desp$FAPEMIG==TRUE])
vl_fapemig_rec <- sum(rec$VALOR_RECEITA[rec$FAPEMIG==TRUE])

aplic_fapemig <- vl_fapemig_desp / vl_fapemig_rec

aplic_fapemig
