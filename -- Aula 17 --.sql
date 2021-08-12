-- Aula 17 --

-- Tipos de JOINS + DESAFIOS (INTERMEDIÁRIO)

-- Exemplos --

-- INNER JOIN

-- Tabelas Originais --
-------- A ---------------
-- id  |   nome  |
--  1  | Robo    |
--  2  | Macaco  |
--  3  | Samurai |
--  4  | Monitor |
--------------------------

-------- B ---------------
-- id  |    nome |
--  1  | Espada  |
--  2  | Robo    |
--  3  | Mario   |
--  4  | Samurai |
--------------------------

/* INNER JOIN
Inner Join retorna apenas os resultados que correspondem(existem) tanto na tabela A como na tabela B
*/
SELECT * FROM TabelaA
INNER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome

/* FULL OUTER JOIN 
Full Outer Join retorna um conjunto de todos os registros correspondentes da TabelaA e TabelaB quando são iguais. E além disso se não houver valores correspondentes, ele simplesmente irá preencher esse lado com "null".
*/
SELECT * FROM TabelaA
FULL OUTER JOIN TabelaB
ON TabelaA.nome = TabelaB.nome


/* LEFT OUTER JOIN
Left Outer Join retorna um conjunto de todos os registros da TabelaA, e além disso, os registros correspondentes(quando disponíveis) na TabelaB. Se não houver resgistros correspondentes ele simplesmentevai preencher com "null".
*/
SELECT * FROM TabelaA
LEFT JOIN TabelaB
ON TabelaA.nome = TabelaB.nome