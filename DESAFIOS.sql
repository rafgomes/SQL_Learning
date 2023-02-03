/*-------------------------DESAFIOS-------------------------*/


--Quantos produtos temos cadastrados no sistema que custam mais de 1500 dolares? (Utilizar a tabela Product e os comandos Count e Where)
SELECT count(listprice) FROM Production.Product WHERE ListPrice > 1500;

--Quantas pessoas temos com o sobrenome que inicia com a letra P? (Utilizar a tabela Person.Person e os comandos Count, Where e Like)
SELECT count(LastName) FROM Person.Person WHERE LastName LIKE 'P%';

--Em quantas cidades unicas est�o cadastrados nosso clientes? (Tabela Person.Adress e comandos Count e Distinct)
SELECT count(DISTINCT City) FROM Person.Address ;

--Quais s�o as cidades unicas cadastradas?
SELECT DISTINCT City FROM Person.Address ;

--Quantos produtos veremlehos tem pre�o entre 500 a 1000 dolares? (Utilizar a tabela Product e os comandos Where e Between)
SELECT count(*) FROM Production.Product WHERE color = 'red' AND ListPrice BETWEEN 500 AND 1000;

--Quantos produtos cadastrados tem a palavra 'road' no nome? (Utilizar a tabela Product e os comandos Count e Like)
SELECT count(*) FROM Production.Product WHERE name LIKE '%road%';

--Quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName (Tabela Person.Person e o comando GroupBY e uma fun��o de agrega��o)
SELECT MiddleName,Count(firstName) AS "Quantidade" FROM Person.Person GROUP BY MiddleName

--A quantidade que cada produto � vendido na loja
SELECT ProductID,AVG(OrderQty) "Media" FROM Sales.SalesOrderDetail GROUP BY ProductID

--As 10 vendas que tiveram os maiors valores total por produto em ordem decrescente
SELECT TOP 10 productID,SUM(linetotal) FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(linetotal) DESC;

--Quais, Quantos e a media de produtos cadastrados nas ordens de servi�os, agrupados por productID
SELECT productID,COUNT(productID) "Contagem",AVG(orderQty) AS "Media" FROM Production.WorkOrder GROUP BY ProductID;

--Identificar as provincias (stateProvinceID) com o maior numero de cadastros com mais de 1000x
SELECT StateProvinceID,COUNT(StateProvinceID) "Quantidade" FROM Person.Address GROUP BY StateProvinceID HAVING COUNT(StateProvinceID) > 1000

--Quais produtos n�o est�o trazendo em m�dia no minimo 1mi em total de vendas
SELECT ProductID,AVG(linetotal) FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING AVG(linetotal) < 1000000


