-- Aula 5 --

-- COUNT --
SELECT COUNT(*) 
FROM TABELA

-- Exemplos --
SELECT count(DISTINCT title)
FROM person.Person

-- Desafios --

/* 1º Desafio
Saber quantos produtos temos cadastrados em nossa tabela de produtos
(production.Product)
*/
SELECT count(*)
FROM Production.Product
-- 504 produtos --

/* 2º Desafio 
Saber quantos tamanhos produtos temos cadastrados em nossa tabela de produtos
(production.Product)
*/
SELECT count(size)
FROM Production.Product;
-- 211 tamanhos --

/* 3º Desafio  
saber quantos tamanhos diferentes de produtos temos cadastrados em nossa tabela de produtos (production.Product)
*/
SELECT count(size)
FROM Production.Product;
-- 18 tamanhos diferentes --
