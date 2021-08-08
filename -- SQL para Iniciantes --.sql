-- SQL para Iniciantes --
-- Aula 3 --

SELECT
-- SQL Server, PostgreSQL, Oracle, mySQL

SELECT coluna1, coluna2
FROM tabela

SELECT * 
FROM tabela

-- Exemplos --

SELECT *
FROM person.Person;

SELECT Title
FROM person.person;

SELECT *
FROM Person.EmailAddress;

-- Desafio --
-- A EQUIPE DE MARKETING PRECISA DE FAZER UMA PESQUISA SOBRE NOMES MAIS COMUNS --
-- DE SEUS CLIENTES E PRECISA DO NOME E SIBRENOME DE TODOS OS CLIENTES QUE --
-- ESTÃO CADASTRADOS NO SISTEMA. -- 

SELECT FirstName, LastName
FROM Person.Person;

-- Aula 4 --

SELECT DISTINCT coluna1, coluna2
FROM tabela

-- Exemplos --

SELECT DISTINCT FirstName
FROM Person.Person;

-- Desafio --
-- QUANTOS SOBRENOMES ÚNICOS TEMOS EM NOSSA TABELA PERSON.PERSON? --

SELECT DISTINCT LastName
FROM Person.Person;
-- 1206 resultados --