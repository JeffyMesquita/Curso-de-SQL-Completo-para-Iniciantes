-- Aula 24 --

-- SELF-JOIN

-- EXEMPLOS

SELECT NOME_COLUNA
FROM TABELA AS A, TABELA B
WHERE CONDIÇÃO

SELECT A.ContactName, B.ContactName
FROM Customers AS A, Customers AS B
WHERE A.Region = B.Region

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers AS A, Customers AS B
WHERE A.Region = B.Region

-- Eu quero encontrar(nome e data de cointratação) de todos funcionários que foram
-- no mesmo ano

-- DESAFIO --
/* 
Eu quero saber na tabela de detalhe de pedido[Order Details] quais os produtos tem o mesmo percentual de desconto
*/

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] AS A, [Order Details] AS B
WHERE A.Discount = B.Discount