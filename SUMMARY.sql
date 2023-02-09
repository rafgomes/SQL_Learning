/*
Link da aula: https://www.youtube.com/watch?v=G7bMwefn8RQ
*/

/*-------------------------SELECT-------------------------*/
-- SQL Server, Postgres, Oracle, mySql

SELECT coluna1,coluna2 FROM tabela; --Seleciona todos os dados da coluna 1 e 2 da tabela

SELECT * FROM tabela; --Seleciona todos os dados da tabela 


/*-------------------------WHERE-------------------------*/
SELECT coluna1, coluna2 FROM tabela WHERE condicao;

/*
OPERADORES LOGICOS
=			IGUAL
>			MAIOR QUE
<			MENOR QUE
>=			MAIOR IGUAL
<=			MENOR IGUAL
<>			DIFERENTE DE
AND			E
OR			OU
*/

/*-------------------------BETWEEN-------------------------*/
valor BETWEEN minimo AND maximo;
valor >= minimo AND <= maximo; --É a mesma coisa que BETWEEN

/*-------------------------IN-------------------------*/
--Utilizado juntamente com o WHERE, para verificar se um valor corresponde com qualquer valor passado na lista de valores
valor IN (valor1,valor2)

valor IN (SELECT valor FROM nomeDaTabela) --Chamado de subselect ou subquery

/*-------------------------LIKE-------------------------*/
--Busca o dado onde parte dele contenha o valor 
SELECT * FROM tabela WHERE nome LIKE 'Jos%' --O nome inicia com *Jos*
SELECT * FROM tabela WHERE nome LIKE '%se' --O nome inicia com *se*
SELECT * FROM tabela WHERE nome LIKE '%os%' --O meio do nome contenha *os*


/*-------------------------GROUP BY-------------------------*/
--O GROUP BY basicamente divide o resultado da sua pesquisa em grupos
--Para cada grupo você pode aplicar uma função de agregação, por exemplo:
--calcular a soma de itens
--contar o número de itens naquele grupo
SELECT coluna1,funcaoAgregacao(c01una21) FROM nomeTabe1a GROUP BY colunai;

/*-------------------------HAVING-------------------------*/
--Utilizado junto com o GROUP BY para filtrar resultados de um agrupamento (Um Where para dados agrupados).
SELECT coluna1,funcaoAgregacao(coluna2) FROM nomeTabe1a GROUP BY coluna1 HAVING condicao;
--A diferença entre HAVING e WHERE é que o GROUP BY é aplicado depois que os dados já foram agrupados, enquanto o WHERE é aplicado antes dos dados serem agrupados.

/*-------------------------JOIN-------------------------*/
/*
		--TabelaA--			--TabelaB--
		--Tabela1--			--Tabela2--	
		--Cliente--			--Endereco--
		ClienteID			EnderecoID
		Nome				Rua
		EnderecoID			Cidade
*/
--INNER JOIN: Juntar informação de uma tabela a outra, sempre as infromações que contenham nas duas tabelas, no caso do exemplo acima EnderecoID
SELECT C.ClienteID,C.Nome,E.Rua,E.Cidade FROM Cliente C INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoID

--FULL OUTER JOIN: Retorna todos os registros correspondentes de ambas as tabelas quando são iguais, e quando não houver terona Null
SELECT * FROM TabelaA FULL OUTER JOIN TabelaB ON TabelaA.EnderecoID = TabelaB.EnderecoID

--LEFT OUTER JOIN: Retorna os registros da TabelaA e os registros correspondentes na TabelaB, os demais retornam como NULL
SELECT * FROM TabelaA LEFT JOIN TabelaB ON TabelaA.EnderecoID = TabelaB.EnderecoID

/*-------------------------UNION-------------------------*/
--Combina dois ou mais resultados de um select em um apenas
SELECT Coluna1, Coluna2 FROM Tabela1 UNION SELECT Coluna1, Coluna2 FROM Tabela2 --Remove os dados duplicados
SELECT Coluna1, Coluna2 FROM Tabela1 UNION ALL SELECT Coluna1, Coluna2 FROM Tabela2 --Retorna todos os dados

/*-------------------------SELF JOIN-------------------------*/
--Filtros na mesma tabela
SELECT coluna FROM TabelaA, TabelaB WHERE CONDICAO

/*-------------------------DATEPART-------------------------*/
--Extrair uma data especifica (Mes, Dia, Ano, Hora...)
-- https://learn.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver16

/*-------------------------STRING OPERATIONS-------------------------*/
--Filtros com operações de string (maiusculo, minusculo, subistituir caracteres...)
-- https://learn.microsoft.com/en-us/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16

/*-------------------------FUNÇÕES MATEMATICAS-------------------------*/
--Filtros com operações matematicas
-- https://learn.microsoft.com/pt-br/sql/t-sql/functions/mathematical-functions-transact-sql?view=sql-server-ver16

/*-------------------------TIPOS DE DADOS-------------------------*/
--Boleanos
--Tipo BIT-- Por padrão é inicado com NULL, e pode receber tanto 1 ou 0 

--Caracteres
--Tipo CHAR-- Permite inserir uma quantidade FIXA de caracteres e sempre ocupa todo o espaço reservado 10/50(por exemplo, se definiu como 50 e utilizou 10, ele vai ocupar os 50 espaços da memoria) 
--Tipo VARCHAR / NVARCHAR -- Permite inserir uma quantidade VARIAVEL, porem dentro do limite definido 10/50 (Se utilizar apenas 10 espaços, irá ocupar somente 10, mas no maximo 50)

--Numeros: 
--VALORES EXATOS--
--TINYINT-- Apenas valores inteiros no intervalo de 0 a 255
--SMALLINT-- Apenas Valores inteiros no intevlao -32.768 a 32.767
--INT-- Apenas valores inteiros no intevalo -2.147.483.648 a 2.147.483.647
--BIGINT-- Apenas valores inteiros no intevalo -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807

--VALORES APROXIMADOS--
--NUMERIC / DECIMAL-- Valores exatos porem permite ter parte fracionado, e pode ser especificado a precisão -Ex: NUMERIC(5,2) retorna 113,44 (Total 5 digitos e 2 após a virgula
--REAL / FLOAT-- Tem precisão de até 15 digitos após a virgula

--Temporais:
--DATE-- Armazena data, no formato de aaaa/mm/dd
--DATETIME-- Armazena data e horas, no formato de aaaa/mm/dd:hh:mm:ss
--DATETIME2-- Armazena data e horas com adição de milissegundos, no formato de aaaa/mm/dd:hh:mm:sssssssss
--SMALLDATETIME-- Armazena data e horas respeitnado os limites '1990-01-01:00:00:00' até '2079-06-06:23:59:59'
--TIME-- Armazena apenas horas, minutos, segundos e milissegundos dentro do limite '00:00:00.0000000' até '23:59:59.9999999'
--DATETIMEOFFSET-- Armazena informações de data e horas incluido fuso horario


/*-------------------------CHAVES PRIMARIAS E ESTRANGEIRAS-------------------------*/
--Uma chave primária é basicamente uma coluna ou grupo de usada para identificar unicamente uma linha em uma tabela
--Criar essas chaves primárias através que restrições (ou constraints em inglês), que são regras que vc define quando está criando uma coluna
--Assim quando você faz isso voce está criando um índice único para aquela coluna ou grupo de coluna
/*
> o que é uma Chave estrangeira
* Uma chave estrangeira é uma coluna ou grupo de colunas em uma tabela que identifica unicamente uma linha em outra tabela.
* ou seja, uma chave estrangeira é definida em uma tabela onde ela é apenas uma referência e não contem todos os dados ali
* então uma chave estrangeira é simplesmente uma coluna ou grupo de colunas que é uma chave primária em outra tabela
* A tabela que contem a chave estrangeira é chamada de tabela referênciadora ou tabela filho. E a tabela na qual a chave estrangeira é referenciada é chamada de tabela referenciada ou tabela pai.
* uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento com as outras tabelas

REGRAS:
* No SQL Server você define uma chave estrangeira atravez de um "Foreign Key Constraint" ou Restrição de chave estrangeira
* Uma Restrição de Chave Estrangeira indica que os valores em uma coluna ou grupo de colunas na tabela filho correspondem aos valores na tabela pai
* Nos podemos entender que uma chave estrangeira mantem a "integridade referencial"
*/

/*-------------------------CREATE TABLE-------------------------*/
--Criar tabelas:
CREATE TABLE nomeTabe1a (
	colunal tipo restricaoDaC01una,
	coluna2 tipo restricaoDaC01una,
	coluna3 tipo restricaoDaColuna,
	);

--Principais tipos de restrições que podem ser aplicadas
--NOT NULL - Não permite nulos
--UNIQUE- Força que todos os valores em uma coluna sejam diferentes
--PRIMARY KEY - uma junção de e UNIQUE
--FOREIGN KEY - identifica únicamente uma linha em outra tabela
--CHECK - FORÇA uma condição especifica em uma coluna
--DEFAULT - força um valor padrão quando nenhum valor é passado

/*-------------------------INSERT INTO-------------------------*/
INSERT INTO noteTabela(coluna1, coluna2...) --Insere valores nas colunas 1 e 2
	VALUES(valor1, valor2)
	VALUES(valor1, valor2) --Os dados a serem inseridos nas linhas, separados por virugla repectiviamente as colunas
	VALUES(valor1, valor2)

INSERT INTO TabelaA(coluna1) SELECT coluna2 FROM TabelaB --Insere informações de outra tabela em uma tabela já existente

/*-------------------------UPDATE-------------------------*/
--Alterar valores em tabelas
UPDATE nomeTabe1a
	SET colunal = valorl
		coluna2 = valor2
WHERE condicao

/*-------------------------DELETE-------------------------*/
--Apaga valores da tabela
DELETE nomeTabela FROM condicao







