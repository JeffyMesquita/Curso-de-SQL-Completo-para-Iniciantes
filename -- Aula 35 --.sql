-- Aula 35 --

-- UNIQUE CONSTRAINT + DESAFIO

/* 
Nessa Aula vamos aprender como ter colunas únicas, porém diferetnte de uma PRIMARY KEY, podem existir várias colunas com a restrição UNIQUE
*/

-- EXEMPLOS --

CREATE TABLE CarteiraMotorista(
  Id INT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Idade INT CHECK(Idade >= 18),
  CodigoCNH INT NOT NULL UNIQUE
);