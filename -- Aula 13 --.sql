-- Aula 13 -- 

-- ORDER BY + DESAFIOS(INTERMEDIÁRIOS)

/* 
-O GROUP BY basicamente divide o resultado da sua pesquisa em grupos
-Para cada grupo você pode aplicar uma função de agragação, por exemplo:
  -Calcular a soma de itens
  -Contar o número de itens naquele grupo
*/

-- Exemplos --

SELECT coluna1, funcaoAgragacao(coluna2)
FROM nomeTabela
GROUP BY coluna1;

SELECT SpecialOfferId, SUM(UnitPrice) AS "Soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

/* 
Vamos dizer que eu quero saber quantos de cada produto foram vendidos até hoje
*/

SELECT ProductId, COUNT(ProductId) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/* 
Vamos dizer que eu queira saber quantos nomes de de cada nome temos cadastrados em nosso banco de dados
*/

SELECT FirstName, COUNT(FirstName) AS "Contagem"
FROM Person.Person
GROUP BY FirstName

/* 
Na Tabela production.product eu quero saber a média de preço para os produtos que são da cor prata(silver)
*/

SELECT color,AVG(Listprice) AS "Média"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color 

-- Desafios --

/* 1º Desafio
Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas pelo MiddleName
-- Dicas --
-> Terá de usar a tabela Person.Person
-> Terá de usar o GROUP BY e uma função de agregação
*/

SELECT MiddleName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY MiddleName

/* 2º Desafio
Eu preciso saber em média qual é a quantidade(quantity) que cada produto é vendido na loja.
-- Dicas --
-> Terá de usar a tabela sales.SalesOrderDetail
-> Terá de usar GROUP BY e uma função de agregação
*/

SELECT ProductId, AVG(OrderQty) AS "Média"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/* 3º Desafio
Eu quero saber quais foram as 10 vendas que nototal tiveram os maiores valores de venda(line total) por produto do maior valor para o menor
-- Dicas --
-> Terá de usar a tabela sales.SalesOrderDetail
-> Terá de usar GROUP BY e uma função de agregação
-> Se atentar a porque você está ordenando
*/

SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

/* 4º Desafio
Eu preciso saber quantos produtos e qual a quantidadfe média de produtos tenos cadastrados nas nossas ordens de serviços(WorkOrder) Agrupados por ProductId
-- Dicas --
-> Terá de usar a tabela production.WorkOrder
-> Terá de usar GROUP BY e uma função de agregação
*/

SELECT ProductID, COUNT(ProductID) AS "Contagem", 
AVG(OrderQty) AS "Média"
FROM Production.WorkOrder
GROUP BY ProductID