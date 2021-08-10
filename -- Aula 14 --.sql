-- Aula 14 --

-- HAVING + DESAFIOS (INTERMADIÁRIO)

/* 
O Having é basicamente muito utilizado juntamente com o GROUP BY para filtrar resultados de um agrupamento

De uma forma mais simples pode se dizer que é basicamente um WHERE para dados agrupados
*/

-- Exemplo --

SELECT coluna1, funcaoAgragacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

/* 
A grande diferença entre HAVING e WHERE.
É que o GROUP BY é aplicado depois que os dados já foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agrupados.
*/

-- Exemplo --
/* 
Vamos dizer que queremos saber quais nomes no sistema tem uma ocorrência maior que 10 vezes
*/

SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Exemplo --
/* 
Queremos saber  quais produtos no total de vendas entre 162k a 500k
*/

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

SELECT ProductId, SUM(lineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(lineTotal) BETWEEN 162000 AND 500000

-- Exemplo --
/* 
Você quer saber quais nomes no sistema tem uma ocorr~encia maior que 10 vezes, porém somente onde p título é 'Mr.'
*/

SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Desafios --

/* 1º Desafio 
Estamos querendo identificar as provincias(stateProvinceId) com o maior número de cadastros no nosso sistema, então é preciso encontrar quais províncias(stateProvinceId) estão registradas o banco de dados mais que 1000 vezes
-- Dicas --
-> Terá de usar a tabela person.Address
-> Terá de usar HAVING, COUNT, e operadores matemáticos
*/

SELECT StateProvinceID, COUNT(StateProvinceID) AS "Contagem"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000
-- 6 linhas --

/* 2º Desafio
Sendo que se trata de uma multinacional os gerentes querem saber quais o s produtos(ProductId) não estão trazendo em média no mínimo 1 milhão em total de vendas
-- Dicas --
-> Terá de usar a tabela sales.salesOrderDetail
-> Terá de usar HAVING, COUNT, e operadores matemáticos
*/

SELECT ProductID, AVG(linetotal)
FROM sales.salesOrderDetail
GROUP BY ProductID
HAVING AVG(lineTotal) < 1000000
-- 266 linhas --
