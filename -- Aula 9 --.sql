-- Aula 9 --

-- IN

/* 
Nós usamos o operador IN junto com o WHERE, para verificar se um valor correspondem com qualquer valor passado na lista de valores.

valor IN(valor1,valor2)
valor IN(SELECT valor FROM nomeDaTabela)
*/

-- Exemplos --

SELECT * 
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

SELECT * 
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13);