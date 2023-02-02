--Quantos produtos temos cadastrados no sistema que custam mais de 1500 dolares? (Utilizar a tabela Product e os comandos Count e Where)
SELECT count(listprice) FROM Production.Product WHERE ListPrice > 1500;

--Quantas pessoas temos com o sobrenome que inicia com a letra P? (Utilizar a tabela Person.Person e os comandos Count, Where e Like)
SELECT count(LastName) FROM Person.Person WHERE LastName LIKE 'P%';

--Em quantas cidades unicas estão cadastrados nosso clientes? (Tabela Person.Adress e comandos Count e Distinct)
SELECT count(DISTINCT City) FROM Person.Address ;

--Quais são as cidades unicas cadastradas?
SELECT DISTINCT City FROM Person.Address ;

--Quantos produtos veremlehos tem preço entre 500 a 1000 dolares? (Utilizar a tabela Product e os comandos Where e Between)
SELECT count(*) FROM Production.Product WHERE color = 'red' AND ListPrice BETWEEN 500 AND 1000;

--Quantos produtos cadastrados tem a palavra 'road' no nome? (Utilizar a tabela Product e os comandos Count e Like)
SELECT count(*) FROM Production.Product WHERE name LIKE '%road%';

