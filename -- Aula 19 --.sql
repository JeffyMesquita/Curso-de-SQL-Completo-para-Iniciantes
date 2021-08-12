-- Aula 19 --

-- UNION

/* 
O operador UNION combina dois ou mais resultados de um select em apenas um só resultado
*/

-- EXEMPLOS

SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna2, coluna2
FROM tabela2

SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Decal%'


SELECT FirstName, Title, MiddleName
FROM person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title
FROM Person.person
WHERE MiddleName = 'A'