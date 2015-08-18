# Tudo no R é um 'objeto'.
# Alguns tipos de objetos são fundamentais. Todo o resto é construído a partir deles.

1 # Um objeto do tipo numérico, também conhecido como número.
class(1)

# class() é um objeto do tipo 'função'. 
# Uma função é um objeto que realiza uma operação. 
# Geralmente uma função requer um ou mais argumentos e produz um resultado específico.
# A função 'class' toma como argumento um objeto, e retorna a classe desse objeto.
class(class)

# A função '+' soma dois elementos.
3 + 4

# A função 'sum' soma um ou mais elementos.
sum(1)
sum(3, 4)
sum(1, 3, 4)

# Outro tipo fundamental de objeto é o 'character', às vezes chamado de 'string':
"Mundo mundo vasto mundo." 
class("Mundo mundo vasto mundo.")

# Tipo 'Lógico':
TRUE
FALSE
NA
class(TRUE)
class(NA)

# O tipo lógico é o resultado natural de testes
3 > 2
1 == 2
1 != 2
TRUE == FALSE
TRUE & TRUE
TRUE & FALSE
TRUE | FALSE

# ------------------------------------------------------------------------------

# É possível combinar estes tipos básicos em 'ESTRUTURAS DE DADOS'.
# As estruturas fundamentais são o 'vetor', a 'lista' e o 'data.frame'.

# A função 'c()' combina elementos em um vetor:
c(1, 2, 3)

# A função '<-' armazena algo em um novo objeto
x <- c(1, 2, 3)
x
class(x)

c(1, "dois", 3) -> y
y
class(y)

# A função list() cria uma lista. A linha a seguir cria uma lista contedo os
# objetos 'x' e 'y', e a armazena no objeto 'z'.
z <- list(x, y)
z
class(z)

# A estrutura 'data.frame' é a estrutura básica de uma 'base de dados'.
# A linha a seguir cria uma base de dados com uma coluna 'ANO' e uma coluna 'MES'.
df <- data.frame(ANO = 2015, MES = 1:12)
df
class(df)

# Uma função essencial para trabalhar com data.frames é o '$'.
# Ele acessa uma coluna da base de dados.
df$ANO
df$MES
class(df$MES)

# Outra função fundamental é o '[]'. Esta função se comporta como um 'filtro'.
# O primeiro argumento desta função determina quais LINHAS retornar.
df
df[12, ]

# O segundo argumento determina quais COLUNAS retornar.
df[, 2]

# Esta função aceita, para filtrar linhas, vetores numéricos (índices) ou lógicos (testes).
linhas <- c(1,2,3)
df[linhas, ]

linhas_2 <- df$MES != 1
df[linhas_2, ]

# Para filtrar colunas, a função aceita vetores numéricos (índices), lógicos (testes) ou nomes.
df[, "MES"]
