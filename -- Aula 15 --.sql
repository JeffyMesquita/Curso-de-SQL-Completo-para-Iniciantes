-- Aula 15 --

-- AS + DESAFIOS (INTERMEDIÁRIO)

/* 
O AS serve basicamente pra renomear as colunas, dar "apelidos", pra quando você ta montando um SELECT(Query) e você quer dar um nome específico para aquela Coluna que você criou
*/

-- Exemplos

SELECT TOP 10 ListPrice AS "Preço do Produto"
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "Preço médio"
FROM Production.Product

-- Desafios --

/* 1º Desafio 
Encontrar o FirstName e o LastName Person.Person
*/
SELECT TOP 10 FirstName AS "Nome", LastName AS "Sobrenome"
FROM Person.Person

/* 2º Desafio
ProductNumber da tabela Production.Product "Múmero dod Prodtuo"
*/
SELECT TOP 10 ProductNumber as "Número do Produto"
FROM Production.Product

/* 3º Desafio 
Sales.salesOrderDetail UnitPrice "Preço Unitário"
*/
SELECT unitPrice AS "Preço Unitário"
FROM Sales.SalesOrderDetail