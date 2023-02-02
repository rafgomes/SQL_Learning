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
