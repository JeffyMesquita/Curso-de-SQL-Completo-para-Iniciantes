-- Aula 23 --

-- SUBQUERY(SUBSELECT) -- (AVANÇADO)

-- EXEMPLOS

-- Monte um relatório de todos os produtos cadastrados que tem preço de venda acima da média

--SELECT AVG(ListPrice)
--FROM Production.Product
-- Reultado -> 438.66

--SELECT *
--FROM Production.Product
--WHERE ListPrice > 438.66

SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- Eu quero saber o nome dos meus funcionários que tem o cargo de 'Designer Engineer'

-- SELECT * 
-- FROM Person.Person
-- WHERE BusinessEntityID in (5,6,15)

-- SELECT * 
-- FROM HumanResources.Employee
-- WHERE JobTitle = 'Designer Engineer'

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Designer Engineer')

SELECT p.FirstName
FROM Person.Person AS p
INNER JOIN HumanResources.Employee AS e ON p.businessEntityID = e.businessEntityID
AND e.JobTitle = 'Designer Engineer'

-- DESAFIO --

/* 
Encontre todos os endereços ques estão no estado de "Alberta", pode trazer todas as informações.
-- Dicas
-> Usar a Tabela Person.Addree e a Tabela Person.StateProvince
*/

SELECT *
FROM Person.Addrees
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince 
WHERE Name = 'Alberta')