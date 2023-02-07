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






