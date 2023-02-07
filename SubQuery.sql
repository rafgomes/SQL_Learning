/*-------------------------SUBQUERY-------------------------*/

--Relatorio com todos os produtos cadastrados que tem preço de venda acima da média
SELECT AVG(ListPrice) FROM Production.Product -- =438.6662
SELECT * FROM Production.Product WHERE ListPrice > 438.66 --Sem Subselect

SELECT * FROM Production.Product WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

--Relatorio de quais funcionarios tem o cargo de 'Design Egineer'
SELECT FirstName FROM Person.Person WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer')
SELECT P.FirstName FROM Person.Person P INNER JOIN HumanResources.Employee E ON P.BusinessEntityID = E.BusinessEntityID AND E.JobTitle = 'Design Engineer'
