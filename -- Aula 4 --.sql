-- Aula 4 --
-- WHERE --

SELECT coluna1,coluna2, coluna_n
FROM tabela
WHERE condicao;

/* 

OPERADOR    -     DESCRRIÇÃO
=                 IGUAL
>                 MAIOR QUE
<                 MENOR QUE
>=                MAIOR QUE OU IGUAL
<=                MENOR QUE OU IGUAL
<>                DIFERENTE
AND               OPERADOR LÓIGO 'E'
OR                OPERADOR LÓGICO 'OU'
*/

-- Exemplos --

SELECT *
FROM person.Person
WHERE LastName = 'miller'AND FirstName = 'Anna';

SELECT *
FROM Production.Product
WHERE color = 'blue' OR color = 'black';

SELECT *
FROM Production.Product
WHERE ListPrice > 1500;

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice <5000;

SELECT *
FROM Production.Product
WHERE color <> 'red';

-- DESAFIO 1 --
-- A EQUIPE DE PRODUÇÃO DE PRODUTOS PRECISA DO NOME DE TODAS AS PEÇAS QUE PESAM --
-- MAIS QUE 500KG, MAS NÃO MAIS QUE 700KG PARA A INSPEÇÃO--

SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700;
-- 4 linhas --

-- DESAFIO 2 --
-- FOI PEDIDO PELO MARKETING UMA RELAÇÃO DE TODOS OS EMPREGADOS(EMPLOYEES) QUE -- -- SÃO CASADOS(SINGLE=SOLTEIRO, MARRIED=CASADO) E SÃO ASALARIADOS(SALARIED) --

SELECT * 
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1;
-- 28 linhas --

-- DESAFIO 3 --
-- UM USUÁRIO CHAMADO PETER KREBS ESTÁ DEVENDO UM PAGAMENTO, CONSIGA O EMAIL -- -- DELE PARA QUE POSSAMOS ENVIAR UMA COBRANÇA. --
-- (VOCÊ VAI TER QYE USAR A TABELA PERSON.PERSON E DEPOIS A TABELA -- 
--PERSON.EMAILADDRESS)--

SELECT * 
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';
-- BusinessEntityID = 26 --

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26
-- peter0@adventure-works.com --


