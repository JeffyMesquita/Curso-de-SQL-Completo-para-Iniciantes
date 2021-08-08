-- AUla 11 --

-- Desafios --

/* 1º Desafio
Quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares?
-- Dicas -- 
- Você terá que usar a tabela production,product
- Terá que usar Count e Where e mais algum operador de comparação
*/

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;
-- 39 RESULTADOS --

/* 2º Desafio
Quantas pessoas temos com o sobrenome que inicia com a letra P?
-- Dicas -- 
- Terá de usar a tabela person.person
terá que usar o COUNT, WHERE, e LIKE
*/

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';
-- 1187 resultados --

/* 3º Desafio
Em quantas cidades únicas estão cadastrados nossos clientes?
-- Dicas --
- Terá que usar a tabela person.Adress
- Terá que usar COUNT, DISTINCT
*/

SELECT COUNT(DISTINCT City)
FROM Person.Address
-- 575 resultados --

/* 4º Desafio
Quais são as cidades únicas que temos cadastrados em nosso sistema?
-- Dicas --
- Terá que uysar a Tabela person.Adress
- Será bem similar a resposta anterior
*/

SELECT DISTINCT (City)
FROM Person.Address
-- 575 resultados --

/* 5º Desafio
Quantos produtos vermelhos tem preço entre 500 a 1000 dolares
-- Dicas --
- Terá que usar a tabela Production.Product
- Terá que usar WHERE, BETWEEN
*/

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE Color = 'Red' 
AND ListPrice BETWEEN 500 AND 1000;
-- 11 resultados --

/* 6º Desafio
Quantos produtos cadastrados tem a palavra 'road' no noome deles?
-- Dicas --
- Terá que usar a tabela Production.Product
- Terá que usar COUNT, LIKE
*/

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%';
-- 103 resultados -- 