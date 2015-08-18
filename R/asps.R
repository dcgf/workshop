# Ler arquivos do Excel extraídos do BO
library(readxl)
rec <- read_excel("data-raw/exec_rec_raw_2015.xlsx")
desp <- read_excel("data-raw/exec_desp_raw_2015.xlsx")

# Cria colunas utilizando funções do pacote relatórios
library(relatorios)
desp$ASPS <- asps_desp(desp)
rec$ASPS <- asps_rec(rec)

# Calcula valores
vl_asps_desp <- sum(desp$VALOR_DESPESA[desp$ASPS==TRUE])
vl_asps_rec <- sum(rec$VALOR_RECEITA[rec$ASPS==TRUE])

aplic_asps_p <- vl_asps_desp / vl_asps_rec

aplic_asps_p
