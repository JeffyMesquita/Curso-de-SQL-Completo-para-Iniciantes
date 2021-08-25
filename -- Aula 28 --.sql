-- Aula 28 --

-- INSERT INTO + DESAFIOS

-- EXEMPLOS

INSERT INTO nomeTabela(coluna1, coluna2,...)
VALUES(valor1,valor2,...)

INSERT INTO  TabelaA(coluna1)
SELECT coluna2
FROM TabelaB

CREATE TABLE Aula(
Id INT PRIMARY KEY,
Nome VARCHAR(200)
);

INSERT INTO Aula(id, nome)
VALUES(1, 'Aula 1')

INSERT INTO	Aula(id, nome)
VALUES
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4'),
(5, 'Aula 5');

SELECT * INTO TabelaNova FROM Aula


-- DESAFIOS --
/* 
1. Crie uma tabela nova
2. Insira uma linha de dados nela
3. Insira 3 linhas de dados ao mesmo tempo
4. Crie um segunda tabela
5. Insira uma linha nessa tabela nova
6. Copie os dados da segunda tabela para a primeira
*/

CREATE TABLE Frutas(
Id INT PRIMARY KEY,
Nome VARCHAR(50),
Quantidade INT NOT NULL,
);

INSERT INTO Frutas(id, nome, quantidade)
VALUES(1, 'Banana', 10)

INSERT INTO Frutas(id, nome, quantidade)
VALUES
(2, 'Maçã', 5),
(3, 'Laranja', 7),
(4, 'Pera', 2);

CREATE TABLE FrutasNovas(
Id INT PRIMARY KEY,
Nome VARCHAR(50),
Quantidade INT NOT NULL,
);

INSERT INTO FrutasNovas(id, nome, quantidade)
VALUES(5, 'Morango', 20)

INSERT INTO  Frutas(id, nome, quantidade)
SELECT id, nome, quantidade
FROM FrutasNovas
