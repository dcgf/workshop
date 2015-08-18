# Criterios

# Ler arquivos do Excel extraídos do BO
library(readxl)
rec <- read_excel("data-raw/exec_rec_raw_2015.xlsx")
desp <- read_excel("data-raw/exec_desp_raw_2015.xlsx")

# Cria colunas utilizando funções do pacote relatórios
library(relatorios)
desp$CRITERIO_SEPLAG <- criterio_seplag(desp)
desp$CRITERIO_SEF <- criterio_sef(desp)
desp$DEMONSTRATIVO <- demonstrativo_desp(desp)
desp$AFD <- afd_desp(desp)

aggregate(desp$VALOR_DESPESA ~ desp$CRITERIO_SEPLAG, FUN = sum)
aggregate(desp$VALOR_DESPESA ~ desp$CRITERIO_SEF, FUN = sum)
aggregate(desp$VALOR_DESPESA ~ desp$DEMONSTRATIVO, FUN = sum)
aggregate(desp$VALOR_DESPESA ~ desp$AFD, FUN = sum)
