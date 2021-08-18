-- Aula 22 --

-- FUNÇÕES MATEMÁTICAS (AVANÇADO)

-- EXEMPLOS --

SELECT UnitPrice + LineTotal AS Soma
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal AS Sub
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal AS Multi
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal AS Div
FROM Sales.SalesOrderDetail

SELECT AVG(LineTotal)
FROM Sales.SalesOrderDetail

SELECT MAX(LineTotal)
FROM Sales.SalesOrderDetail

SELECT MIN(LineTotal)
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal,2)
FROM Sales.SalesOrderDetail

SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail