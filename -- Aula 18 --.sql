-- Aula 18 --

-- OUTER JOIN

-- LEFT OUTER JOIN
-- LEFT JOIN


-- EXEMPLOS--

-- Quero descobrir quais pessoas tem um cartão de crédito registrado

SELECT *
FROM Person.Person AS PP
INNER JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- INNER JOIN: 19118

SELECT *
FROM Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- LEFT JOIN: 19972

SELECT *
FROM Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL
-- 854 resultados




