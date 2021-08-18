-- Aula 20 --

-- DATEPART + DESAFIOS (AVANÇADO)

/* */

-- EXEMPLOS --

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) AS Média, DATEPART(MONTH, OrderDate) AS Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mês

SELECT AVG(TotalDue) AS Média, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano

SELECT AVG(TotalDue) AS Média, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia