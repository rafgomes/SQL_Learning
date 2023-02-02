SELECT * FROM Production.Product WHERE ListPrice BETWEEN 1000 and 1500; --Seleciona todos os dados da tabela Product com os valores da coluna ListPrice são entre 1000 e 1500

SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'; --Seleciona todos os funcionarios que foram contratados neste periodo

SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' ORDER BY HireDate; --Seleciona todos os funcionarios que foram contratados neste periodo por ordem crescente de data


