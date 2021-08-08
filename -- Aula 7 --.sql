-- Aula 7 -- 

-- ORDER BY

SELECT coluna1, coluna2
FROM tabela 
ORDER BY asc/desc

-- Exemplos --
SELECT *
FROM person.Person
ORDER BY FirstName asc;

SELECT *
FROM person.Person
ORDER BY FirstName desc;

SELECT FirstName, LastName
FROM person.Person
ORDER BY FirstName asc, LastName desc;

SELECT FirstName, LastName
FROM person.Person
ORDER BY MiddleName asc;

-- Desafios -- 

/* 1º Desafio
Obter o ProductId doos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato
-- Dicas --
- Você terá que usar a tabela Production.product;
- Você terá que usar o ORDER BY e TOP;
- E para ordenar você terá que usar o ORDER BY ASC ou DESC dependendo do resultado que está buscando;
*/

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc;

/* 2º Desafio
Obter o nome e número do produto dos produtos que tem o ProductID entre 1~4
--Dicas --
- Você terá que usar a tabela Production.product;
- Você terá que usar o ORDER BY e TOP;
- E para ordenar você terá que usar o ORDER BY ASC ou DESC dependendo do resultado que está buscando;
*/

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc;
