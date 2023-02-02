SELECT * FROM Sales.SalesOrderDetail
SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID --Retorna todos os produtos com o mesmo ID e a soma dos valores

SELECT ProductID,COUNT(ProductID) AS "Contagem" FROM Sales.SalesOrderDetail GROUP BY ProductID --Retorna a quantidade de itens por ID


SELECT * FROM Person.Person
SELECT firstName,COUNT(firstName) AS "Contagem" FROM Person.Person GROUP BY FirstName --Retorna a quantidade por firstName

SELECT * FROM Production.Product
SELECT Color,AVG(ListPrice) "Preço" FROM Production.Product GROUP BY Color --Retorna a média de preço por cor
SELECT Color,AVG(ListPrice) "Preço" FROM Production.Product WHERE Color = 'Silver' GROUP BY Color --Retorna a média de preço somente da cor Silver
