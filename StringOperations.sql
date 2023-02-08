/*-------------------------STRING OPERATIONS-------------------------*/
SELECT CONCAT(FirstName, LastName) FROM Person.Person --Concatena��o, note que o resultado n�o traz um espa�o entre os nomes
SELECT CONCAT(FirstName, ' ', LastName) FROM Person.Person

SELECT UPPER(FirstName) FROM Person.Person --Retorna todos os caracteres do valor da coluna em mauisculo

SELECT LOWER(FirstName) FROM Person.Person --Retorna todos os caracteres do valor da coluna em minusculo

SELECT LEN(FirstName) FROM Person.Person --Contagem de caracteres
SELECT FirstName, LEN(FirstName) FROM Person.Person

SELECT FirstName, SUBSTRING(FirstName, 1, 3) FROM Person.Person --Extrai da coluna FirstName a quantidade de caracteres exatos, sendo 1 o primeiro a come�ar a contar, e 3 o total de caracteres

SELECT * FROM Production.Product
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') FROM Production.Product --Subistitui o valor '-' por '#' da coluna ProductNumber (mas apenas na pesquisa, n�o altera o valor do banco)

