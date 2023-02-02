SELECT * FROM person.Person; --Seleciona todos os dados da tabela Person

SELECT Title FROM person.person; --Seleciona apenas a coluna Title da tabela Person

SELECT firstName,lastName FROM person.Person; --Seleciona Duas Colunas da tabela Person

SELECT DISTINCT firstName FROM person.Person; --Seleciona apenas os valores não duplicados 

SELECT * FROM person.Person WHERE lastName = 'Miller'; --Seleciona todas as informações onde a coluna lastName contenha o valor Miller

SELECT * FROM person.Person WHERE lastName = 'Miller' AND firstName = 'Anna'; --Seleciona todas as informações onde a coluna lastName contenha o valor Miller E o firtName contenha Anna

SELECT * FROM production.Product WHERE color = 'blue' OR color = 'Black'; --Seleciona todas as informações onde a coluna color contenha Blue OU Black

SELECT * FROM production.Product WHERE ListPrice > 1500 AND ListPrice < 5000; --Seleciona todas as informações relacionada aos dados da coluna ListPrice onde estejam entre 1500 e 5000

SELECT * FROM production.Product WHERE color <> 'red'; --Seleciona todas as informações relacionadas aos dados onde a coluna Color seja DIFERENTE de red

SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'M' AND SalariedFlag = 1; --DESAFIO Selecionar todos os empregados que são casados e assalariados.

SELECT * FROM person.Person WHERE FirstName = 'Peter' AND LastName = 'Krebs' --DESAFIO Selecionar um usuario chamado Peter Krebs e buscar o email dele.
SELECT * FROM person.EmailAddress WHERE BusinessEntityID = 26;

SELECT TOP 10 * FROM Production.Product; --Seleciona os 10 primeiros dados da tabela