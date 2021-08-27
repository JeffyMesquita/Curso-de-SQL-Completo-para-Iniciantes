-- Aula 34 --

-- NOT NULL CONSTRAINT + DESAFIO

/*
Nessa Aula vamos aprender a criar restrições que forçam com que não seja possível inserir dados em uma tabela sem preencher a coluna marcada como NOT NULL
*/

-- EXEMPLOS --

CREATE TABLE CarteiraMotorista(
  Id INT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Idade INT CHECK(Idade >= 18)
);