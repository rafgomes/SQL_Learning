--Seleciona a quntidade de firstName da tabela Person sendo maior que 10 vezes
SELECT firstName, COUNT(firstName) AS "Quantidade" FROM Person.Person GROUP BY firstName HAVING COUNT(firstName) > 10 

--Seleciona quais produtos pelo ID que a soma do valor total de vendas está entre 162k e 500k
SELECT TOP 10 * FROM Sales.SalesOrderDetail
SELECT productID,SUM(linetotal) AS "Total" FROM Sales.SalesOrderDetail GROUP BY ProductID HAVING SUM(linetotal) BETWEEN 162000 AND 500000 

--Retorna os nomes onde a ocorrencia é maior que 10 onde o titulo é Mr.
SELECT * FROM Person.Person
SELECT firstName,COUNT(firstName) AS "Quantidade" FROM Person.Person WHERE Title = 'Mr.' GROUP BY firstName HAVING COUNT(firstName) > 10