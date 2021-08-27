-- Aula 36 --

-- VIEWS + DESAFIOS

/*
Nessa aula iremos aprender como usar VIEWS, que são tabelas criadas para consulta onde você usa outras tabelas como base para criar uma nova tabela de pesquisa com apenas dados específicos que você precisa de uma tabela.
*/

-- EXEMPLOS --

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person 
WHERE Title = 'Ms.'

SELECT * FROM [Pessoas Simplificado]