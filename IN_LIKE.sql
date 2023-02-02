/*-------------------------IN-------------------------*/
SELECT * FROM Person.Person WHERE BusinessEntityID IN (2,7,13); --Seleciona todos os valores da tabela Person onde o ID é correspondente aos valores passados
SELECT * FROM Person.Person WHERE BusinessEntityID = 2 OR BusinessEntityID = 7 OR BusinessEntityID = 13; --De outra maneira ficaria assim:

SELECT * FROM Person.Person WHERE BusinessEntityID NOT IN (2,7,13); --Seleciona todos os valores da tabela Person onde o ID não é correspondente aos valores passados

/*-------------------------LIKE-------------------------*/
SELECT * FROM Person.Person WHERE FirstName LIKE 'Ovi%'; --Seleciona os nomes na coluna indicada que o dado inicia com o valor passado

SELECT * FROM Person.Person WHERE FirstName LIKE '%to'; --Seleciona os nomes na coluna indicada que o dado finaliza com o valor passado

SELECT * FROM Person.Person WHERE FirstName LIKE '%essa%'; --O meio do nome contenha *essa*

SELECT * FROM Person.Person WHERE FirstName LIKE '%ro_'; --O Underline subistitui a ultima letra





