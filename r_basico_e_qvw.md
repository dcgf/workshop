# Workshop DCGF

## Roteiro R básico

#### Primeiro exemplo: MDE

mde.R  

Evidenciar aplicação simples, ganhos de automatização e de reprodutibilidade.
Falar sobre as funções e operções utilizadas. O que é '<-'? O que ela faz?
O código simples esconde complexidade.

#### Objetos, estruturas e funções básicas

tipos_e_estruturas.R

## Qlikview

#### Quadro LOA

* Carregar Quadro LOA > Arquivos de Tabela
* Criar tabela com GRUPO, expressão 
  IF(FONTE=10, 'RECURSOS DO TESOURO', 'RECURSOS DE OUTRAS FONTES') e 
  SUM(IF(MODALIDADE_COD <> 91, VALOR_EMPENHADO)
* Formatar a tabela
* Criar tabela INLINE com GRUPO_COD, GRUPO_DESC, CATEG_DESC
* Recarregar, mostrar CTRL + T
* Substituir GRUPO_COD por GRUPO_DESC na tabela
* Incluir CATEG_DESC na tabela

#### Concatenate

Incluir dados da execução de 2015 na tabela.

* Incluir dados sem 'Concatenate'.
* Falar sobre colunas em comum entre as duas tabelas.
* Mostrar quantidade de chaves (keys) criadas pelo Qlikview.
* Evidenciar que esta forma de carregar os dados é equivalente a criar um
  PROCV (relação horizontal) com uma chave grande, mas observado que todas as linhas de ambas as 
  tabelas estejam no resultado final.
* Como se tratam de tabelas muito semelhantes, cujas colunas são essencialmente
  as mesmas, uma forma melhor de relacioná-las é o empilhamento (relação vertical).
* Isso equivale a colar uma tabela embaixo da outra, observando que a ordem das
  colunas esteja correta.
* Isto é feito no QlikView através do comando 'Concatenate'.
* Aplicar o comando e evidenciar que agora só 'GRUPO_COD' é uma chave.
* Mostrar que a tabela agora contém valores que não fazem sentido (somam LOA + execução).
* Para separá-los, precisamos de algo que identifique qual é qual.
* Para isso, podemos criar uma coluna ao ler cada base.
* Incluir 'LOA' as BASE e 'EXEC' as BASE.
* Utilizá-las como dimensão na tabela.