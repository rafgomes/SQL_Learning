/*-------------------------UNION-------------------------*/
SELECT ProductID, Name, ProductNumber FROM Production.Product WHERE Name like '%Chain%' UNION SELECT ProductID, Name, ProductNumber FROM Production.Product WHERE Name like '%Decal%'

SELECT FirstName, Title FROM Person.Person WHERE Title = 'Mr.' UNION SELECT FirstName, Title FROM Person.Person WHERE MiddleName = 'A'
SELECT FirstName, Title FROM Person.Person WHERE Title = 'Mr.' UNION ALL SELECT FirstName, Title FROM Person.Person WHERE MiddleName = 'A'