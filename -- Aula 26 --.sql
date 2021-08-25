-- Aula 26 --

-- CHAVE PRIMÁRIA E ESTRANGEIRA + DESAFIO

/* 
-> Vamos aprender o que são chaves primárias e chaves estrangeiras 
-> Vamos ver exemplos de como usar elas pra criar colunas e tabelas, porém vamos ver mais em detalhe na aula sobre criação de tabelas

-- Chave Primária --
=> Uma chave primária é basicamente uma coluna ou grupo de colunas, usada para identifucar unicamente uma linha em uma tabela;

=> Você consegue criar essas chaves primárias através de restrições (ou constraints em inglês), que são regras que você define quando está criando uma coluna;

=> Assim quando você faz isso você está criando um índice único para aquela coluna ou grupo de colulnas
*/

CREATE TABLE nome_Tabela (
  nomeColuna tipoDeDados PRIMARY KEY
  nomeColuna tipoDeDados ...
)

/*
-- Chave Estrangeira --
=> Uma chave estrangeira é uma coluna ou grupo de colunas em uma tabela que identifica unicamente uma linha em outra tabela;

=> Ou seja, uma chave estrangeira é definida em uma tabela onde ela é apenas uma referência e não contém todos dados ali

=> então uma chave estrangeira é simplesmente uma coluna ou grupo de colunas que é uma chave primária em outra tabela

=> A tabela que contém a chave estrangeira é chamda de tabela refrenciadora ou tabela filho. E a tabela na qual a chave estrangeira é referenciada chamada de tabela refrenciada ou tabela pai

=> Uma tabela pode ter mais de uma chave estrangeira dependendo do sue relaqcionamento com as outras tabelas

=> No SQL Server você defgine uma chave estrangeira através de um "Foreign Key Constraint" ou Restrição de chave estrangeira,

=> Uma Restrição de Chave Estrangeira indica que os valores em uma coluna ou um grupo de colunas na tabela filho correspondem aos valores na tabela pai

=> Nó podemos entender que uma chave estrangeira mantem a "Integridade Referencial"
*/