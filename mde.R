# Ler arquivos do Excel extraídos do BO
library(readxl)
rec <- read_excel("data-raw/exec_rec_raw_2015.xlsx")
desp <- read_excel("data-raw/exec_desp_raw_2015.xlsx")

# Cria colunas utilizando funções do pacote relatórios
library(relatorios)
desp$MDE <- mde_desp(desp)
rec$MDE <- mde_rec(rec)
rec$PERDA_FUNDEB <- perda_fundeb(rec)

# Calcula valores
vl_mde_desp <- sum(desp$VALOR_DESPESA[desp$MDE==TRUE])
vl_mde_rec <- sum(rec$VALOR_RECEITA[rec$MDE==TRUE])
vl_perda_fundeb <- sum(rec$VALOR_RECEITA[rec$PERDA_FUNDEB==TRUE])

aplic_mde <- vl_mde_desp + (-vl_perda_fundeb)
aplic_mde_p <- aplic_mde / vl_mde_rec

aplic_mde_p
