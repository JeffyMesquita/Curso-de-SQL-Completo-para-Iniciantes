-- Aula 33 -- 

-- CHECK CONSTRAINT + DESAFIO

/* 
Nessa aula vamos aprender a criar restrições de valores que podem ser inseridos em uma coluna de uma tabela em banco de dados quando vocês está criando uma tabela nova
*/

-- EXEMPLOS --

CREATE TABLE CarteiraMotorista(
  Id INT NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Idade INT CHECK(Idade >= 18)
);

