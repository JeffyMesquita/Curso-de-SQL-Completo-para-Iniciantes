-- Aula 16 --

-- INNER JOIN + DESAFIOS (INTERMEDIÁRIO)

/* 
-- Existem 3 tipos gerais de JOINS:
INNEr JOIN, OUTER JOIN e SELF-JOIN
*/

-- Exemplos

SELECT C.Cliente, C.Nome, E.Rua, E.Cidade
FROM CLiente C
INNER JOIN Endereco E ON E.Endereco.Id = C.EnderecoId

-- | 2| Bruno | Rua Norte | São Paulo |

-----------------------||-------------------------------||------------------------

-- BusinessEntityId, FirstName, LastName, EmailAdress

SELECT p.BusinessEntityId, p.FirstName, p.LastNAme, pe.EmailAddress
FROM Person.Person AS p
INNER JOIN Person.EmailAddress pe ON p.BusinessEntityID = pe.BusinessEntityID

-- Vamos dizer que nós queremos os onmes dos produtos e as informaçoes de suas subcategorias
-- ListPrice, Nome do Produto, NOme da SubCategoria

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product AS pr
INNER JOIN Production.ProductSubcategory AS pc ON 
pc.ProductSubcategoryID = pr.ProductSubcategoryID


SELECT TOP 10 *
FROM Person.BusinessEntityAddress AS ba
INNER JOIN Person.Address pa on pa.AddressID = ba.AddressID

-- Desafios --
/* 1º Desafio
SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

-- BusinessEntityId, Name, PhoneNumberTypeId,PhoneNumber
*/

SELECT pp.BusinessEntityId, pp.PhoneNumberTypeID, pp.PhoneNumber, pt.Name
FROM Person.PersonPhone AS pp
INNER JOIN Person.PhoneNumberType AS pt ON pp.PhoneNumberTypeID = pt.PhoneNumberTypeID

/* 2º Desafio 
SELECT TOP 10 *
FROM person.stateprovince

SELECT TOP 10 *
FROM person.Address

--- AddressId, City, StateProvinceId, nome do Estado
*/

SELECT a.AddressId, a.City, a.StateProvinceId, st.name
FROM Person.Address AS a
INNER JOIN Person.StateProvince AS st ON st.StateProvinceID = a.StateProvinceID