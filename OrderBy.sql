SELECT * FROM Person.Person ORDER BY FirstName asc; --Seleciona todos os dados da coluna FirstName por ordem ascendente

SELECT * FROM Person.Person ORDER BY FirstName desc; --Seleciona todos os dados da coluna FirstName por ordem decrescente

SELECT TOP 10 * FROM Production.Product ORDER BY ListPrice desc; --DESAFIO Selecionar os 10 produtos mais caros
SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice desc; --DESAFIO Selecionar
SELECT TOP 4 name,productnumber FROM Production.Product ORDER BY ProductID asc; --DESAFIO Selecionar as colunas name e produtnumber os 4 primeiros por ordem crescente de ProductID

