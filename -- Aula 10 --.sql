-- Aula 10 --

-- LIKE

/* 
Vamos dizer que você quer encontrar uma pessoa no banco de dados que você sabe o nome dela era ovi... alguma coisa
*/

-- Exemplos --

SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%'

SELECT *
FROM Person.Person
WHERE FirstName like '%to'

SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'

SELECT *
FROM Person.Person
WHERE FirstName like '%ro_'