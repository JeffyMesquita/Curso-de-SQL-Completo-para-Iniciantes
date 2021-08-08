-- Aula 8 --

-- Between

/* 
O Between é usado para encontrar valores entre um valor mínimo e um valor máximo

valor BETWEEN mpinimo AND máximo;

é a mesma coisa que dizer:
valor >= mínimo AND valor <= máximo;
*/

-- Exemplos

SELECT *
FROM Production.Product
WHERE ListPrice Between 1000 and 1500;

SELECT *
FROM Production.Product
WHERE ListPrice NOT Between 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;