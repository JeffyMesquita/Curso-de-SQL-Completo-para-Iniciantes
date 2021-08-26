-- Aula 31 -- 

-- ALTER TABLE + DESAFIOS

-- EXEMPLOS -- 


-->Syntaxe
ALTER TABLE nomeDaTabela
ACAO

/*
> Exemplos de o que pode ser feito:
- Add, Remover, ou alterar uma coluna
- Setar valores padrões para uma coluna
- Add ou Remover restrições de colunas
- Renomear a Tabela
*/

ALTER TABLE YouTube
ADD Ativo BIT

ALTER TABLE YOUTUBE
ALTER COLUMN Categoria VARCHAR(300) NOT NULL

EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'

EXEC sp_RENAME 'YouTube.nome', 'nomeCanal', 'COLUMN'

EXEC sp_RENAME 'YouTube', 'YouTube2'