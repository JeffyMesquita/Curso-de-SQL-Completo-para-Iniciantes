-- Aula 21 --

-- OPERAÇÕES EM STRINGS (AVANÇADO)

-- EXEMPLOS

SELECT CONCAT(FirstName, ' ' ,LastName) AS Nome_Sobrenome
FROM Person.Person

SELECT UPPER(FirstName)AS Nome, LOWER(LastName) AS Sobrenome
FROM Person.Person

SELECT FirstName, LEN(FirstName) AS TamanhoNome
FROM Person.Person

SELECT FirstName, SUBSTRING(FirstName,1,3) AS InicioNome
FROM Person.Person

SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') AS Trocando
FROM Production.Product