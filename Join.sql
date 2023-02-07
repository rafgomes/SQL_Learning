/*-------------------------INNER JOIN-------------------------*/

-- BusinessEntityID, FirstName, LastName, EmailAdress
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress FROM Person.Person AS P INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID

--Seleciona os nomes dos produtos e as informações de suas subcategorias
SELECT pr.ListPrice, pr.Name, pc.Name FROM Production.Product pr INNER JOIN Production.ProductSubcategory pc ON pc.ProductSubcategoryID = pr.ProductSubcategoryID

--Seleciona tudo das 10 primeiras linhas das duas tabelas pelo ID
SELECT TOP 10 * FROM Person.BusinessEntityAddress BA INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

/*-------------------------LEFT OUTER JOIN-------------------------*/
--Ou LEFT JOIN

--Descobrir quais pessoas tem um cartão de credito registrado
SELECT * FROM Person.Person PP INNER JOIN Sales.PersonCreditCard PC ON PP.BusinessEntityID = PC.BusinessEntityID
--INNER JOIN: 19118 Linhas
SELECT * FROM Person.Person PP LEFT JOIN Sales.PersonCreditCard PC ON PP.BusinessEntityID = PC.BusinessEntityID
--INNER JOIN: 19972 Linhas

