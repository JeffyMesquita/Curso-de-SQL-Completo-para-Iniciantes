-- Aula 25 --

-- TIPOS DE DADOS + DESAFIOS

/*
1. Booleanos 
2. Caractere
3. Números
4. Temporais

-> 1. Booleanos
Por padrão ele é inicializado como nulo, e pode receber tanto 1 como 0 BIT

-> 2. Caracteres
Tamanho fixo - char // permite inserir até uma quantidade fixa de caracters e sempre ocupa todo espaço reservado 1-/50

Tamanhos variáveis - varchar ou nvarchar // permite inserir até uma quantidade que for definida, porém só usa o espaço que for preenchido

-> 3. Números
--> Valores Exatos

1- TINYINT - não tem parte valor fracionados (ex: 1.43, 24.23) somente 1,123123,324234,313123 etc...
2- SMALLINT - mesma coisa porém limite maior
3- INT - mesma coisa porém limite maior
4- BIGINT mesma coisa porém limite maior
5- NUMERIC ou DECIMAL - valores exatos, porém permite ter parte fracionados, que também pode ser especificado a precisão e a escala(escala é o número de digitos na parte fracional) -ex: NUMERIC (5,2) 113,44

--> Valores Aproximados
1- REAL - Tem precisão aproximada de até 15 digitos
2- FLOAT mesmo conceito de REAL

-> 4. Temporais
1- DATE - armazena data no formato aaaa/mm/dd
2- DATETIME - armazena data e hora no formato aaaa/mm/dd:hh:mm:ss
3- DATETIME2 - data e horas com adição de milissegundos aaaa/mm/dd:hh:ssssss
4- SMALLDATETIME - data e hora respeitando o limite entre '1900-01-01:00:00:00' até '2079-06-06:23:59:59'.
5- TIME - horas, minutos, segundos e milisegundos respeitando o limite de '00:00:00.0000000' to '23:59:59.9999999'.
6- DATETIMEOFFSET - permite armazenar informações de data e hora incluindo o fuso horário

*/

-- EXEMPLOS --