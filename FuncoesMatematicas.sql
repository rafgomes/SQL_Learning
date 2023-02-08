/*-------------------------FUNÇÕES MATEMATICAS-------------------------*/
SELECT * FROM Sales.SalesOrderDetail

SELECT UnitPrice + LineTotal FROM Sales.SalesOrderDetail --Retorna a soma de duas colunas
SELECT UnitPrice - LineTotal FROM Sales.SalesOrderDetail --Retorna a subtração de duas colunas
SELECT UnitPrice * LineTotal FROM Sales.SalesOrderDetail --Retorna a multiplicação de duas colunas
SELECT UnitPrice / LineTotal FROM Sales.SalesOrderDetail --Retorna a divisao de duas colunas

SELECT AVG(LineTotal) FROM Sales.SalesOrderDetail --Retorna a media de todos os valores de uma unica coluna
SELECT SUM(LineTotal) FROM Sales.SalesOrderDetail --Retorna a soma de todos os valores de uma unica coluna
SELECT MIN(LineTotal) FROM Sales.SalesOrderDetail --Retorna o valor minimo de todos os valores de uma unica coluna
SELECT MAX(LineTotal) FROM Sales.SalesOrderDetail --Retorna o valor maximo de todos os valores de uma unica coluna

SELECT ROUND(LineTotal, 2) FROM Sales.SalesOrderDetail --Retorna arredondamento dos valores com precisão de duas casas decimais

SELECT SQRT(LineTotal) FROM Sales.SalesOrderDetail --Retorna a razi quadrada de cada valor


