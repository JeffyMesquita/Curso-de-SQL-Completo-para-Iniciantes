-- Aula 12 -- 

-- MIN, MAX, SUM, AVG

/* 
Funções de agragação, basicamente agregam ou combinam dados de uma tabela em 1 resultado só
*/

-- Exemplos --

SELECT TOP 10 SUM(lineTotal) AS "Soma"
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(lineTotal)
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MAX(lineTotal)
FROM Sales.SalesOrderDetail;

SELECT TOP 10 AVG(lineTotal)
FROM Sales.SalesOrderDetail;