/*-------------------------STRING OPERATIONS-------------------------*/
SELECT CONCAT(FirstName, LastName) FROM Person.Person --Concatenação, note que o resultado não traz um espaço entre os nomes
SELECT CONCAT(FirstName, ' ', LastName) FROM Person.Person

SELECT UPPER(FirstName) FROM Person.Person --Retorna todos os caracteres do valor da coluna em mauisculo

SELECT LOWER(FirstName) FROM Person.Person --Retorna todos os caracteres do valor da coluna em minusculo

SELECT LEN(FirstName) FROM Person.Person --Contagem de caracteres
SELECT FirstName, LEN(FirstName) FROM Person.Person

SELECT FirstName, SUBSTRING(FirstName, 1, 3) FROM Person.Person --Extrai da coluna FirstName a quantidade de caracteres exatos, sendo 1 o primeiro a começar a contar, e 3 o total de caracteres

SELECT * FROM Production.Product
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') FROM Production.Product --Subistitui o valor '-' por '#' da coluna ProductNumber (mas apenas na pesquisa, não altera o valor do banco)

