-- Aula 27 --

-- CREATE TABLE + DESAFIO

-- EXEMPLOS 

CREATE TABLE nomeTabela (
  coluna1 tipo restricaoDaColuna,
  coluna2 tipo restricaoDaColuna,
  coluna3 tipo restricaoDaColuna,
  ...
);

/* Prinipais tipos de restriço~es que podem ser aplicadas
NOT NULL - Não permite nulos
UNIQUE - força que todos os valores em uma coluna sejam diferentes
PRIMARY KEY - uma junção de NOT NULL e UNIQUE
FOREIGN KEY - identifica unicamente uma linha em outra tabela
CHECK - FORÇA uma condição específica em uma coluna 
DEFAULT - força um valor padrão quando nenhum valor é passado
*/

CREATE TABLE Canal (
CanalId INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
);


CREATE TABLE Video (
VideoId INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Visualizacoes INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duracao INT NOT NULL,
CanalId INT FOREIGN KEY REFERENCES Canal(CanalId)
);
