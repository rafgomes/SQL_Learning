SELECT count(*) FROM person.Person --Conta o total de linhas na tabela Person

SELECT count(title) FROM person.Person; --Conta quantas linhas da coluna title tem valor não nulo

SELECT count(DISTINCT title) FROM person.Person; --Conta os titulos sem repetição

SELECT count(*) FROM Production.Product; --DESAFIO saber quantos produtos tem cadastrados na tabela production.Product;
SELECT count(DISTINCT Size) FROM Production.Product; --DESAFIO saber quantos tamanhos produtos tem cadastrados na tabela production.Product;

